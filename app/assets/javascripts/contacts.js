$(function(){

    
    // Function to validate the format of phone numbers in the new contact form
    $(document).on('click', '.btn-primary', function(event){
        event.preventDefault()

        var phoneNumber = $('#contact_phone').val()
        if (validatePhone(phoneNumber)) {
            $('form').submit()
        } else {
            alert('Phone Number Must Be In The Format ###-###-#### or ###-####')
        }

    })

    // Function to sort the list of contacts
    $(document).on('click', 'th', function(event){
        var sortBy = event.target.dataset.sortBy
        window.localStorage.sortBy = sortBy
        location.href = '/contacts?sort=' + sortBy
    })

    // Function to open the contact card
    $('td[colspan=5]').find('card').hide();
    $(document).on('click', 'tr', function(event){
        var id = event.currentTarget.dataset.id
        var target = event.target

        if($('#contact-card-' + id).is(':empty')) {
            getContact(id, target)
        } else {
            toggleContact(target)
        }


    })
})

function validatePhone (phoneNumber) {
    return !!phoneNumber.match(/^(\d{3}-\d{3}-\d{4}|\d{3}-\d{4})$/)
}

function getContact(id, target){
    $.ajax('/contacts/' + id)
        .done(function(data){
            
            $('#contact-card-' + id).html(data)

            $(target).closest("tr").next().find('card').slideToggle();
        })
        .fail(function(error){
            console.log(error.responseText)
        })
}

function toggleContact(target){
    if ( $(target).closest("td").attr("colspan") > 1 ) {
        $(target).find('card').slideUp();
    } else {
        $(target).closest("tr").next().find('card').slideToggle();
    } 
}