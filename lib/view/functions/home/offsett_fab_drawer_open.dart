double getOffseetFABDrawerOpen(double widthScreen) {
  if (widthScreen < 365) {
    return 212;
  } else if (widthScreen < 395) {
    return 207;
  } else if (widthScreen < 415) {
    return 202;
  } else {
    return 197;
  }
}
