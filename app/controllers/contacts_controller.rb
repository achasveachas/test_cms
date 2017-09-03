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
    @telephone = @contact.telephones.build
  end

  def create

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
  end

  def update
    @contact = Contact.find_by(:id => params[:id])
    @contact.update_attributes(contact_params)
    @contact.birthday = Date.strptime(params[:contact][:birthday], "%m/%d/%Y") unless params[:contact][:birthday].empty?
    @contact.save

    if @contact.errors.any?
      render :new
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
    params.require(:contact).permit(:name, :email, :phone, :notes)
  end
end
