(function ($) {
  $(document).ready(function() {
    var d = document,
    budgetInput = d.getElementById('budget'),
    donation,
    textbox = d.getElementById('textbox');

  calculateDonation = function() {
   var initial = budgetInput.value;

   donation = ((parseFloat(initial) * .025 * .70  * .10).toFixed(2));
   // textboxInput = donation;
     // $(textbox).html(donation); jquery version for learning purposes

     if(initial) {
      if(isNaN(initial)) {
        alert("Please enter a number");
        textbox.innerHTML = "";
      } else {
        textbox.innerHTML = "$" + donation;
      }
     }
   }

   if(budgetInput) {
    budgetInput.addEventListener('input', calculateDonation, false);
  };

});
}(jQuery));


