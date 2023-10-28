double getHeightBottomShadow(double screenHeight) {
  if (screenHeight < 750) {
    return 98;
  } else if (screenHeight < 850) {
    return 108;
  } else if (screenHeight < 900) {
    return 115;
  } else {
    return 115;
  }
}
