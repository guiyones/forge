import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  toggle(event) {
    const tagId = event.currentTarget.dataset.tagId
    const span = document.getElementById(`tag-${tagId}`)
    const checked = event.currentTarget.checked

    if (checked) {
      span.style.borderColor = "#6C4DFF"
      span.style.color = "#6C4DFF"
      span.style.background = "rgba(108,77,255,0.15)"
    } else {
      span.style.borderColor = "#374151"
      span.style.color = "#6b7280"
      span.style.background = "#1F2937"
    }
  }
}
