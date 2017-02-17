$(document).ready(function() {
  const navPages = document.querySelectorAll('.nav a');
  
  function changeActive() {
    console.log(this);
  }

  navPages.forEach(function(navPage) {
    navPage.addEventListener('click', changeActive);
  });
});