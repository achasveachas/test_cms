$(function(){

    
    // Function to validate the format of phone numbers in the new contact form
    $(document).on('click', '.btn-primary', function(e){
        e.preventDefault()

        var phoneNumber = $('#contact_phone').val()
        if (validatePhone(phoneNumber)) {
            $('form').submit()
        } else {
            alert('Phone Number Must Be In The Format ###-###-#### or ###-####')
        }

    })

    // Function to sort the list of contacts
    $(document).on('click', 'th', function(e){
        var sortBy = event.target.dataset.sortBy
        window.localStorage.sortBy = sortBy
        location.href = '/contacts?sort=' + sortBy
    })

})

function validatePhone (phoneNumber) {
    return !!phoneNumber.match(/^(\d{3}-\d{3}-\d{4}|\d{3}-\d{4})$/)
}