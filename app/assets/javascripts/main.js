$(document).ready(function(){
    $('#nav-icon1').click(function(){
        $(this).toggleClass('open');
    });
});

document.querySelector('.scroll-icon').scrollIntoView({
  behavior: 'smooth'
});
