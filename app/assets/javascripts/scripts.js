$(document).ready(function(){
    $('.slider').glide({
        autoplay: 4000
    });

    $('.plus').each(function(index){
        $(this).parent().attr('onclick', 'javascript:void(null)');
    });

    $('.plus').click(function(){
        var form = $(this).parent();
        var req = form.serialize();


        $.ajax({
            type: 'POST',
            url: form.attr('action'),
            data: req,
            success: function(data) {
                var count = $('#count').text();
                $('#count').empty();
                count = +count + 1;
                $('#count').text(count);
            },
            error:  function(xhr, str){
                alert('Возникла ошибка: ' + xhr.responseCode);
            }
        })
        return false;
    });
})




