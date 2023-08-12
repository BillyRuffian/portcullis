import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="automatic-form-submission"
export default class extends Controller {
  connect() {
    console.log('connect')
  }

  search() {
    console.log('searhc')
    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      this.element.requestSubmit()
    }, 200)
  }
}
