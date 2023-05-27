class ScreenSize {
  static num? screenWidth;
}
extension SizeExtension on num {
  num get w {
    if (ScreenSize.screenWidth == null) {
      throw Exception("You must initialize ScreenSize before using it");
    }
    return this * ScreenSize.screenWidth! / 1080;
  }
}
void main() {

  ScreenSize.screenWidth = 720;

  final h = 64.w;
  print(h);
}

