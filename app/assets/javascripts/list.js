
var current = "one"


var steps = document.querySelectorAll(".step");
steps.forEach(function(step){
  step.addEventListener("click", changeStep)
});

function changeStep(input) {
  document.getElementById(input).classList
};


var one = "<div id='step-description' class='step-content'><p>Step 1 description</p></div><div id='step-image' class='step-content'><img src='https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Smiley.svg/220px-Smiley.svg.png'></div>";

var two = "<div id='step-description' class='step-content'><p>Step 2 description</p></div><div id='step-image' class='step-content'><img src='http://imgs.xkcd.com/comics/mysteries.png'></div>";

var three = "<div id='step-description' class='step-content'><p>Step 3 description</p></div><div id='step-image' class='step-content'><img src='http://cdn3-www.dogtime.com/assets/uploads/gallery/30-impossibly-cute-puppies/impossibly-cute-puppy-15.jpg'></div>";

var four = "<div id='step-description' class='step-content'><p>Step 4 description</p></div><div id='step-image' class='step-content'><img src='http://seaotters.com/wp-content/uploads/2012/03/628x353-otter-cu-yawn.jpg'></div>";

var five = "<div id='step-description' class='step-content'><p>Step 5 description</p></div><div id='step-image' class='step-content'><img src='http://www.snail-world.com/wp-content/uploads/snail-front.jpg'></div>";

var six = "<div id='step-description' class='step-content'><p>Step 6 description</p></div><div id='step-image' class='step-content'><img src='http://www.nbc.com/the-tonight-show/content/sites/nbcutsjf/files/images/2014/10/06/ewalbumv0322.jpg'></div>";

var donation = "<div id='step-description' class='step-content'><p> Donation description</p></div><div id='step-image' class='step-content'><img src='https://upload.wikimedia.org/wikipedia/en/8/84/Titanfall_box_art.jpg'></div>";
