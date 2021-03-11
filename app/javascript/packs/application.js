// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"

Rails.start()
Turbolinks.start()

console.log("javascript working")

document.addEventListener("DOMContentLoaded", function() {
  const submits = document.querySelectorAll('input[type=submit]');
  submits.forEach(function(submit) {
    submit.addEventListener("click", function() {
      submit.classList.add("disabled");
    })
  })
})
// submits[0].style.color = "green"
