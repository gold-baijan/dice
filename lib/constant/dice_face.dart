class DiceFace {
  static const oneDot = [false, false, false, false, true, false, false, false, false];
  static const twoDots = [true, false, false, false, false, false, false, false, true]; 
  static const threeDots = [true, false, false, false, true, false, false, false, true];
  static const fourDots = [true, false, true, false, false, false, true, false, true];
  static const fiveDots = [true, false, true, false, true, false, true, false, true];
  static const sixDots = [true, false, true, true, false, true, true, false, true];
  static const List<List<bool>> layouts = [
    oneDot, // 1
    twoDots, // 2
    threeDots, // 3
    fourDots, // 4
    fiveDots, // 5
    sixDots // 6
  ];
}
