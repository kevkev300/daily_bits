import { Controller } from "stimulus"

import Rails from "@rails/ujs"

export default class extends Controller {
  static targets = ["element", "output"]
  static values = { "list-id": Number }

  connect = () => {
    this.preview
  }

  preview = () => {
    const content = this.elementTarget.value;
    const listId = this.listIdValue;
    const preview = this.outputTarget;

    // preview.innerHTML = `<strong>${content}</strong>`

    Rails.ajax({
      type: "post",
      url: `/lists/3/list_elements/preview`,
      contentType: "text/plain",
      data: content,
      success: function (data) {
        preview.innerHTML = data
      }
    })
  }
}
