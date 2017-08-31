$(function(){
    $(document).on('click', '.btn-primary', function(e){
        e.preventDefault()

        var phoneNumber = $('#contact_phone').val()
        if (phoneNumber.match(/^(\d{3}-\d{3}-\d{4}|\d{3}-\d{4})$/)) {
            $('form').submit()
        } else {
            alert('Phone Number Must Be In The Format ###-###-#### or ###-####')
        }

    })
})