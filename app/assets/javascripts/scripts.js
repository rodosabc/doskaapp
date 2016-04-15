$(document).ready(function(){
    $('.slider').glide({
        autoplay: 4000
    });
    $('input[value="Добавить"]').click(function(){
            var form = $(this).parent();
            var req = form.serialize();

                $().ajax({
                        type: 'POST',
                    url: form.attr('action'),
                    data: req,
                    success: function(data) {
                       var count = $('#count').text().empty();
                       count = +count + 1;$('#count').append(count);
                    },
                error:  function(xhr, str){
                        alert('Возникла ошибка: ' + xhr.responseCode);
                    }
            })

                return false;
        })
})


