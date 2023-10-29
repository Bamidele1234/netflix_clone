class AppAssets {
  static const netflixLogo = "assets/images/netflix_logo.png";

  static const netflixAnimation = "assets/netflix_anim.json";

  static String profilePic(int number) {
    switch (number) {
      case 1:
        return "assets/images/profile_pics/profile_pic_1.png";
      case 2:
        return "assets/images/profile_pics/profile_pic_2.png";
      case 3:
        return "assets/images/profile_pics/profile_pic_3.png";
      case 4:
        return "assets/images/profile_pics/profile_pic_4.png";
      default:
        // Handle the case where the number is out of the range 1-4.
        return "assets/images/profile_pics/default.png";
    }
  }
}
