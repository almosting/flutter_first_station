void main() {
  double a = 2.3;
  double b = 4.5;
  double c = 2.5;
  double avg = (a + b + c) / 3;
  print(bmp());
}

double bmp([double height = 720.0, double weight = 1080]) {
  double result = weight / (height * height);
  return result;
}
