double getOffseetFABDrawerOpen(double widthScreen) {
  if (widthScreen < 365) {
    return 242;
  } else if (widthScreen < 395) {
    return 237;
  } else if (widthScreen < 415) {
    return 232;
  } else {
    return 227;
  }
}

double getOffsetNavigationBarDraweOpen(double heightScreen) {
  if (heightScreen < 890) {
    return -33;
  } else if (heightScreen < 930) {
    return -40;
  } else {
    return -50;
  }
}
