$(document).ready(function() {
  var current = "one";

  var steps = document.querySelectorAll(".step");
  steps.forEach(function(step) {
    step.addEventListener("click", changeStep);
  });

  function changeStep() {
    document.querySelector(`#${current}`).classList.remove('current');
    document.querySelector(`#${this.id}`).classList.add('current');
    document.querySelector('#content').innerHTML = allSteps[this.id];
    current = this.id;
  }


  var allSteps = {"one":"<div class='step-description step-content'><p>Step 1 description</p></div><div class='step-image step-content'><img src='https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Smiley.svg/220px-Smiley.svg.png'></div>",

                  "two":"<div class='step-description step-content'><p>Step 2 description</p></div><div class='step-image step-content'><img src='http://imgs.xkcd.com/comics/mysteries.png'></div>",

                  "three":"<div class='step-description step-content'><p>Step 3 description</p></div><div class='step-image step-content'><img src='http://cdn3-www.dogtime.com/assets/uploads/gallery/30-impossibly-cute-puppies/impossibly-cute-puppy-15.jpg'></div>",

                  "four":"<div class='step-description step-content'><p>Step 4 description</p></div><div class='step-image step-content'><img src='http://seaotters.com/wp-content/uploads/2012/03/628x353-otter-cu-yawn.jpg'></div>",

                  "five":"<div class='step-description step-content'><p>Step 5 description</p></div><div class='step-image step-content'><img src='http://www.snail-world.com/wp-content/uploads/snail-front.jpg'></div>",

                  "six":"<div class='step-description step-content'><p>Step 6 description</p></div><div class='step-image step-content'><img src='http://www.nbc.com/the-tonight-show/content/sites/nbcutsjf/files/images/2014/10/06/ewalbumv0322.jpg'></div>",

                  "donation":"<div class='step-description step-content'><p> Donation description</p></div><div class='step-image step-content'><img src='https://upload.wikimedia.org/wikipedia/en/8/84/Titanfall_box_art.jpg'></div>"
                  };
});