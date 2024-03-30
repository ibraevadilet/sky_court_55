class GeometryCalculator {
  static double calculateCircleArea(double radius) {
    return 3.14159 * radius * radius;
  }

  static double calculateRectangleArea(double length, double width) {
    return length * width;
  }

  static double calculateTriangleArea(double base, double height) {
    return 0.5 * base * height;
  }
}
