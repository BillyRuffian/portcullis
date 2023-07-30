import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroller"
export default class extends Controller {
  connect() {
  }

  scroll( {params: {divtarget} } ){
    document.getElementById(divtarget).scrollIntoView()
  }
}
