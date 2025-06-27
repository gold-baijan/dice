class DiceFace {
  static const List<List<bool>> layouts = [
    [false, false, false, false, true, false, false, false, false], // 1
    [true, false, false, false, false, false, false, false, true], // 2
    [true, false, false, false, true, false, false, false, true], // 3
    [true, false, true, false, false, false, true, false, true], // 4
    [true, false, true, false, true, false, true, false, true], // 5
    [true, false, true, true, false, true, true, false, true], // 6
  ];
}
