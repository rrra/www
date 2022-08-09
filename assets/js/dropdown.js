/*
 * From https://www.w3schools.com/howto/howto_js_dropdown.asp
 * Retrieved February 1, 2018
 */

/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function toggleDropdown() {
    document.getElementById("contact-dropdown").classList.toggle("show");
}

/* Close the dropdown menu if the user clicks outside of it
 *
 * contains(event.target) test from https://stackoverflow.com/a/47095680
 * Retrieved August 9, 2022
 */
window.onclick = function(event) {
  if (!document.getElementsByClassName('dropdown')[0].contains(event.target)){
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
} 
