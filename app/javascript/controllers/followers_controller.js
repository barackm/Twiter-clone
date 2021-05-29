import { Controller } from "stimulus";
export default class extends Controller {
  static targets = [
    "followerKnownBtn",
    "followingBtn",
    "followersBtn",
    "knownFollowersContainer",
    "followingContainer",
    "followersContainer",
  ];
  connect() {
    console.log("started");
  }
  showFollowersYouKnow() {
    if (document.querySelector(".follow-known")) {
      this.knownFollowersContainerTarget.classList.add("active");
    }
    this.followersContainerTarget.classList.remove("active");
    this.followingContainerTarget.classList.remove("active");
    // btns
    if (document.querySelector(".follow-known")) {
      this.followerKnownBtnTarget.classList.add("active");
    }
    this.followingBtnTarget.classList.remove("active");
    this.followersBtnTarget.classList.remove("active");
  }
  showFollowers() {
    if (document.querySelector(".follow-known")) {
      this.knownFollowersContainerTarget.classList.remove("active");
    }
    this.followersContainerTarget.classList.add("active");
    this.followingContainerTarget.classList.remove("active");
    // btns
    if (document.querySelector(".follow-known")) {
      this.followerKnownBtnTarget.classList.remove("active");
    }
    this.followingBtnTarget.classList.remove("active");
    this.followersBtnTarget.classList.add("active");
  }
  showFollowing() {
    if (document.querySelector(".follow-known")) {
      this.knownFollowersContainerTarget.classList.remove("active");
    }
    this.followingContainerTarget.classList.add("active");
    this.followersContainerTarget.classList.remove("active");
    // btns
    if (document.querySelector(".follow-known")) {
      this.followerKnownBtnTarget.classList.remove("active");
    }
    this.followingBtnTarget.classList.add("active");
    this.followersBtnTarget.classList.remove("active");
  }
}
