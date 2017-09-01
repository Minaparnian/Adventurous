$(document).ready(function(){
    $('#nav-icon1').click(function(){
        $(this).toggleClass('open');
        $('.hiddenMenu').toggle()
        console.log('toogle')

    });

    $('.show_edit_comment').on('click', function(e){
     e.preventDefault();
     $(this).next().toggle().find('input:text').focus()
    })
});
