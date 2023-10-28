int trimeLineResponsive(double screenHeight) {
  if (screenHeight < 750) {
    return 4;
  } else if (screenHeight < 820) {
    return 5;
  } else if (screenHeight < 900) {
    return 7;
  } else if (screenHeight < 950) {
    return 8;
  } else {
    return 10;
  }
}
