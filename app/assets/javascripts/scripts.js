$(document).on('click', '#close', function() {
    $('body').removeClass('scroll');
    $('.modal-bg').remove();
});

$(document).ready(function(){
    $('.slider').glide({
        autoplay: 4000
    });

    $('.plus').each(function(index){
        $(this).parent().attr('onclick', 'javascript:void(null)');
    });


    $('.btn-add').click(function(){
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
                $('body').append('<div class="add"><p>Добавлено</p></div>');
                setTimeout(function(){
                    $('.add').remove()
                },500);

            },
            error:  function(xhr, str){
                $('body').append('<div class="add"><p>Ошибка </p></div>');
                setTimeout(function(){
                    $('.add').remove()
                },500);
            }
        })
        return false;
    });

    $('.modal').click(function(){
        $.ajax({
            type: 'GET',
            url: $(this).attr('href'),
            //data: req,
            success: function(data) {
                $('body').addClass('scroll').append('<div class="modal-bg"><div class="window"><i id="close" class="fa fa-times close"></i></div></div>');
                var itNeed = $(data).filter('.modalw').html();
                $('.window').append(itNeed);
            },
            error:  function(xhr, str){
                $('body').append('<div class="add"><p>Ошибка </p></div>');
                setTimeout(function(){
                    $('.add').remove()
                },500);
            }
        })
        return false;
    });

});

