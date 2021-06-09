import { Controller } from "stimulus"

import Rails from "@rails/ujs"

export default class extends Controller {
  static targets = ["element", "output"]
  static values = { listPreviewUrl: String }

  connect = () => {
    this.preview()
  }

  preview = () => {
    let url = new URL(this.listPreviewUrlValue);
    url.searchParams.append('body', this.elementTarget.value);
    this.outputTarget.src = url.toString();
  }
}
