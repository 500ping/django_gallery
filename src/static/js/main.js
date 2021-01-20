$(document).ready(function () {

    // $('.image-grid').masonry({
    //     // options
    //     itemSelector: 'img',
    // });

    $('.lazy').Lazy({
        afterLoad: function(element) {
            $('.image-grid').masonry({
                // options
                itemSelector: 'img',
            });
        },
    });
    
})