import { Controller } from "stimulus";
export default class extends Controller {
  static targets = ["signupBtn", "loginBtn", "loginInputs", "signupInputs"];
  connect() {}

  showLogin(e) {
    e.preventDefault();
    this.signupInputsTarget.classList.remove("active");
    this.loginInputsTarget.classList.add("active");
  }
  showSignup(e) {
    e.preventDefault();
    this.signupInputsTarget.classList.add("active");
    this.loginInputsTarget.classList.remove("active");
  }
}
