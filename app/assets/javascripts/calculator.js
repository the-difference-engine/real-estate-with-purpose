(function ($) {
  $(document).ready(function() {
    var d = document,
    budgetInput = d.getElementById('budget'),
    donation,
    textbox = d.getElementById('textbox');

    calculateDonation = function() {
     var initial = budgetInput.value;

     donation = ((parseFloat(initial) * .025 * .70  * .10).toFixed(2));
     textbox.innerHTML = donation;
     // $(textbox).html(donation); jquery version for learning purposes
   }

  if(budgetInput) {
    budgetInput.addEventListener('input', calculateDonation, false);
  };

 });
}(jQuery));


