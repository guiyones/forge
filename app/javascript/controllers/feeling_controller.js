import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["option"]

  select(event) {
    this.optionTargets.forEach(btn => {
      btn.style.borderColor = "#374151"
      btn.style.color = "#6b7280"
      btn.style.background = "transparent"
    })

    event.currentTarget.style.borderColor = "#6C4DFF"
    event.currentTarget.style.color = "#6C4DFF"
    event.currentTarget.style.background = "rgba(108,77,255,0.1)"

    const value = event.currentTarget.dataset.value
    document.getElementById("checkin_feeling").value = value
  }
}
