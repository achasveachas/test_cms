class ContactsController < ApplicationController
  def index
    session[:sort] = params[:sort] if params[:sort]
    @contacts = Contact.order(session[:sort] || :name).page(params[:page]).per(20)
  end

  def show
    @contact = Contact.find_by(:id => params[:id])
    render partial: 'contact_card'
  end

  def new
    @contact = Contact.new
    @contact.telephones.build
  end

  def create
    default_index = params[:contact][:default_telephone]
    params[:contact][:telephones_attributes][default_index][:default] = true
    
    @contact = Contact.new(contact_params)
    @contact.birthday = Date.strptime(params[:contact][:birthday], "%m/%d/%Y") unless params[:contact][:birthday].empty?
    @contact.save

    if @contact.errors.any?
      render :new
    else
      redirect_to contacts_path
    end
  end

  def edit
    @contact = Contact.find_by(:id => params[:id])
    @contact.telephones.build
  end

  def update
    default_index = params[:contact][:default_telephone]
    params[:contact][:telephones_attributes][default_index][:default] = true

    @contact = Contact.find_by(:id => params[:id])
    @contact.update_attributes(contact_params)
    @contact.birthday = Date.strptime(params[:contact][:birthday], "%m/%d/%Y") unless params[:contact][:birthday].empty?
    @contact.save

    if @contact.errors.any?
      render :edit
    else
      redirect_to contacts_path
    end
  end

  def destroy
    @contact = Contact.find_by(:id => params[:id])
    @contact.destroy
    redirect_to contacts_path
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :notes, :telephones_attributes => [:number, :location, :default, :id])
  end
end
