window.onload = function () {
    initialiseSlider();
};

function initialiseSlider() {
    var slider = document.getElementById('slider');

    noUiSlider.create(slider, {
        start: [1, 80],
        connect: true,
        range: {
            'min': 0,
            'max': 150
        }
    });
}


