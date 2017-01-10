$(document).ready(function() {
  var current = "one";

  var steps = document.querySelectorAll(".step");
  steps.forEach(function(step) {
    step.addEventListener("click", changeStep);
  });

  function changeStep() {
    var id = this.id;
    var currentDescription = document.querySelector('.' + current);
    var newDescription = document.querySelector('.' + id);


    // Change the color of the current arrow step
    document.querySelector('#' + current).classList.remove('current');
    document.querySelector('#' + id).classList.add('current');

    // Animate?

    setTimeout(function() {
      currentDescription.querySelectorAll('.step-content').forEach(function(div) {
        div.style.opacity = 0;
      });

      newDescription.querySelectorAll('.step-content').forEach(function(div) {
        div.style.opacity = 1;
      });
    }, 250);

    // Change the step description content
    currentDescription.classList.remove('content-active');
    currentDescription.classList.add('content-inactive');
    newDescription.classList.remove('content-inactive');
    newDescription.classList.add('content-active');

    current = id;
  }

});