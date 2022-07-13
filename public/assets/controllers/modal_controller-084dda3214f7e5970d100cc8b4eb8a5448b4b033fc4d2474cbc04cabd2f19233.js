import { Controller } from "@hotwired/stimulus"
import { Modal } from "tailwindcss-stimulus-components"

// Connects to data-controller="modal"
export default class extends Controller {
 
  connect() {  
    this.modal = new Modal(this.element, {
      keyboard: false
    })
    this.modal.show()
  }

  disconnect() {
    this.modal.hide()
  }
};
