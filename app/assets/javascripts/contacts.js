$(function(){

    var path = window.location.pathname
    if (!window.location.href.split('?')[1] && (path === '/' || path === '/contacts') && window.localStorage.sortBy) {
        location.href = '/contacts?sort=' + window.localStorage.sortBy
    }
    
    // Function to validate the format of phone numbers in the new contact form
    $(document).on('click', '.btn-primary', function(e){
        e.preventDefault()

        var phoneNumber = $('#contact_phone').val()
        if (phoneNumber.match(/^(\d{3}-\d{3}-\d{4}|\d{3}-\d{4})$/)) {
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