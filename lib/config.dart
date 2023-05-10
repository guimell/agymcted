import 'dart:async';

class AppConfig {
  // screen size
  static StreamController<List<double>> screenSizeStreamController =
      StreamController<List<double>>.broadcast();
  static double screenWidth = 0;
  static double screenHeight = 0;
}
