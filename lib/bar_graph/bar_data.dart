

class BarData {
  final double one;
  final double two;
  final double three;
  final double four;
  final double five;
  final double six;
  final double saven;
  BarData({
      required this.one,
      required this.two,
      required this.three,
      required this.four,
      required this.five,
      required this.six,
      required this.saven});
  List<IndivisualBar> myBarData = [];

  //initilze bar data

  void initlizeBarData() {
    myBarData = [
      IndivisualBar(x: 0, y: one),
      IndivisualBar(x: 1, y: two),
      IndivisualBar(x: 2, y: three),
      IndivisualBar(x: 3, y: four),
      IndivisualBar(x: 4, y: five),
      IndivisualBar(x: 5, y: six),
      IndivisualBar(x: 6, y: saven),
    ];

  }
}

class IndivisualBar {
  final int x; //position on X Axis.
  final double y; //value on y axis
  IndivisualBar({required this.x, required this.y});
}
