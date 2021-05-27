import { Controller } from "stimulus";
export default class extends Controller {
  static targets = ["signupBtn", "loginBtn", "loginInputs", "signupInputs"];
  connect() {
    // const input = document.getElementById("user_name");
    // const validation_error = document.querySelector(".input-error-message");
    // if (input.value.length > 0 || validation_error.childNodes.length > 0) {
    //   console.log("condition is true");
    //   this.signupInputsTarget.classList.add("active");
    //   this.loginInputsTarget.classList.remove("active");
    // }
  }
  showLogin(e) {
    // e.preventDefault();
    // this.signupInputsTarget.classList.remove("active");
    // this.loginInputsTarget.classList.add("active");
  }
  showSignup(e) {
    // e.preventDefault();
    // this.signupInputsTarget.classList.add("active");
    // this.loginInputsTarget.classList.remove("active");
  }
}
