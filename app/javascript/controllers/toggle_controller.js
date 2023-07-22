import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['description', 'more', 'less'];
  static classes = ['nocontent'];

  connect()
  {
    this.descriptionTarget.classList.add(this.nocontentClass);
    this.lessTarget.classList.add(this.nocontentClass);
  }
  toggle() {
    this.descriptionTarget.classList.toggle(this.nocontentClass);
    this.lessTarget.classList.toggle(this.nocontentClass);
    this.moreTarget.classList.toggle(this.nocontentClass);
  }
}
