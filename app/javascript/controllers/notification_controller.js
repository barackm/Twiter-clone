import { Controller } from "stimulus";
export default class extends Controller {
  static targets = ["closeBtn", "notificationContainer"];
  connect() {}
  closeNotification(e) {
    e.preventDefault();
    this.notificationContainerTarget.classList.add("closed");
  }
}
