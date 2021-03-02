import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
require('jquery')
import * as bootstrap from 'bootstrap'
import toastr from 'toastr'
window.toastr = toastr
import "@fortawesome/fontawesome-free/css/all"
import flatpickr from "flatpickr"
require("flatpickr/dist/flatpickr.css")

  
document.addEventListener("turbolinks:load", () => {
  flatpickr("[data-behavior='flatpickr']", {
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
  })
})
flatpickr(".datepicker", {})

toastr.options = {
    "closeButton": true,
    "debug": false,
    "newestOnTop": true,
    "progressBar": false,
    "positionClass": "toast-position-foo",
    "preventDuplicates": true,
    "showDuration": "300",
    "hideDuration": "1000",
    "timeOut": "5000",
    "extendedTimeOut": "1000",
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
  }

Rails.start()
Turbolinks.start()
ActiveStorage.start()