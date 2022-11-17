import { Controller } from "@hotwired/stimulus";
import { Splide } from "@splidejs/splide";

// Connects to data-controller="slider"
export default class extends Controller {
  connect() {
    const splide = new Splide(this.element, {
      perPage: 1,
      focus: "center",
    });
    splide.mount();
  }
}
