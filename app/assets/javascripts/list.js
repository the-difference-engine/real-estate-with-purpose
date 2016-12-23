$(document).ready(function() {
  var current = "one";

  var steps = document.querySelectorAll(".step");
  steps.forEach(function(step) {
    step.addEventListener("click", changeStep);
  });

  function changeStep() {
    var id = this.id;

    // Change the color of the current arrow step
    document.querySelector(`#${current}`).classList.remove('current');
    document.querySelector(`#${id}`).classList.add('current');

    // Change the step descriptoin content
    document.querySelector(`.${current}`).classList.remove('content-active');
    document.querySelector(`.${current}`).classList.add('content-inactive');
    document.querySelector(`.${id}`).classList.remove('content-inactive');
    document.querySelector(`.${id}`).classList.add('content-active');
    current = id;
  }

});