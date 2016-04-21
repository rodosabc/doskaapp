$(document).ready(function(){
    $('.slider').glide({
        autoplay: 4000
    });
});

$('.plus').each(function(index){
        $(this).parent().attr('onclick', 'javascript:void(null)');
    });

var ready_modal = function(){ $(document).on('click', '.modal', function(){
    $.ajax({
        type: 'GET',
        url: $(this).attr('href'),
        //data: req,
        success: function(data) {
            $('body').addClass('scroll').append('<div class="modal-bg"><div class="window"> <i id="close" class="fa fa-times close"></i></div></div>');
            var itNeed = $(data).filter('.modalw').html();
            $('.window').append(itNeed);
        },
        error:  function(xhr, str){
            $('body').append('<div class="add"><p>Ошибка </p></div>');
            setTimeout(function(){
                $('.add').remove()
            },500);
        }
    });
    return false;
});
};

var ready_dlt = function(){ $(document).on('click', '.dlt', function(){
    var del = $(this).parent();
    $.ajax({
        type: 'POST',
        url:'/line_items/' + $(this).attr('id'),
        data: { _method: 'DELETE'},
        success: function(data) {
            var item_price = +del.find('.item-price').text();
            var total_price = +$('.total-price').text();
            $('.total-price').empty().append(total_price - item_price);
            del.remove();
            var count = $('#count').text();
            $('#count').empty();
            count = +count - 1;
            $('#count').text(count);
            if($('div').is('.cart-item') == false){
                $('.cart-show').empty().append('<p>Корзина пуста</p>')
            }
        },
        error:  function(xhr, str){
            $('body').append('<div class="add"><p>Ошибка </p></div>');
            setTimeout(function(){
                $('.add').remove()
            },500);
        }
    });
    return false;
});
};

var ready_buy = function(){$(document).on('click', '.add-btn', function(){
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
            $('.modal-bg').remove();
            $('.window').remove();
            $('body').append('<div class="add"><p>Добавлено</p></div>');
            $('body').removeClass('scroll');
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
    });
    return false;
});
};

$(document).on('click', '#close', function() {
    $('body').removeClass('scroll');
    $('.modal-bg').remove();
    $('.window').remove();
});

    $(document).on('click', '.modal-bg', function(event) {
        $('body').removeClass('scroll');
        $('.modal-bg').remove();
        $('.window').remove();
        //event.stopPropagation();
    });

$(document).on('click', '.window', function(event) {
    event.stopPropagation();
});

$(document).on('page:load', ready_buy());

$(document).on('page:load', ready_modal());

$(document).on('page:load', ready_dlt());

$(document).on('click', '.quest',
        function(){
                    $(this).append('<div class="resp"><p>Можно выполнить по вашим индивидуальным размерам.</p></div><div class="arrow-bottom"></div>');
                    setTimeout(function(){$('.resp').remove(); $('.arrow-bottom').remove()}, 4000);
            }
    );
$(document).on('click', 'label', function(event) {
    if($(this).attr('overpay')){
        var overpay = $('.final_overpay');
        overpay.empty();
        overpay.append(' + ' + $(this).attr('overpay') + '<i class="fa fa-rub">');
    }
    else if($(this).attr('price')){
        var overprice = $('.final_price');
        overprice.empty()
        overprice.append($(this).attr("price"));
    }
});