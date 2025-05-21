import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const sideCart = document.getElementById("side-cart")
    if (sideCart) {
      sideCart.classList.add("open")
      sideCart.classList.remove("hidden")
    }

    // Limpia el trigger del DOM (opcional)
    this.element.remove()
  }
}
