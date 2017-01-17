(function ($) {
  $( document ).ready(function() {
    var d = document,
    budgetInput = d.getElementById('budget'),
    donation,
    textbox = d.getElementById('textbox');

    calculateDonation = function() {
     var initial = budgetInput.value;

     donation = ((parseFloat(initial) * .025 * .70  * .10).toFixed(2));
     textbox.value = donation;
   }

  if(budgetInput) {
    budgetInput.addEventListener('input', calculateDonation, false);
  };

 });
}(jQuery));


