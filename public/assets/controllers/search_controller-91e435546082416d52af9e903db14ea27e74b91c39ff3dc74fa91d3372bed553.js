import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  connect() {
    //this.perform = debounce(this.perform,500).bind(this)
  }
  perform() {
    this.element.requestSubmit();
  }
};
