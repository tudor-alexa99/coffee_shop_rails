document.addEventListener("turbolinks:load", function() {
    initialiseSlider();
    document.getElementById('slider').addEventListener("mouseup", handleSlider);
});

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

function handleSlider() {
    values = slider.noUiSlider.get();
    const starting = parseFloat(values[0]);
    const ending = parseFloat(values[1])
    showPriceInterval(starting, ending);
}

function showPriceInterval(starting, ending) {
    let start = document.getElementById("price-starting");
    start.innerText = " $ " + starting;

    let end = document.getElementById("price-ending");
    end.innerText = " $ " + ending;
}