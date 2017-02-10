$(document).ready(function() {
  var current = document.getElementById("0");
  const allPhotos = document.querySelectorAll(".small-property-photos");
  const mainPhoto = document.querySelector("#big-property-photo");
  var number = document.querySelector(".number-of-photos");
  
  if(current) {
    current.classList.add("current-active");
  }

  function changePhoto() {
    mainPhoto.src = this.src;
    number.textContent = parseInt(this.id) + 1;
    current.classList.remove('current-active');
    this.classList.add('current-active');
    current = this;
  }

  if(allPhotos) {
    allPhotos.forEach(function(photo) {
      photo.addEventListener("click", changePhoto);
    });
  }
});