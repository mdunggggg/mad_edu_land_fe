extension ExtDuration on Duration {
  String get formatHHmmss =>
      "${inHours.toString().padLeft(2, '0')}:"
      "${(inMinutes % 60).toString().padLeft(2, '0')}:"
      "${(inSeconds % 60).toString().padLeft(2, '0')}";

  String get formatMMss =>
      "${inMinutes.toString().padLeft(2, '0')}:"
      "${(inSeconds % 60).toString().padLeft(2, '0')}";
}
