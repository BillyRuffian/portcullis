import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroller"
export default class extends Controller {
  connect() {
  }

  greet( {params: {divtarget} } ){
    document.getElementById(divtarget).scrollIntoView()
  }
}
