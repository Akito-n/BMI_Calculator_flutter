import 'dart:math';

class Calculate {
  Calculate({this.weight, this.height});

  final int weight;
  final int height;

  double _bim;

  void _calc() {
    _bim = _bim = weight / pow(height / 100, 2);
  }

  String getResultBmi() {
    _calc();

    return _bim.toStringAsFixed(1);
  }

  String getResultTitle() {
    _calc();
    if (_bim > 25.5) {
      return '太ってる';
    } else if (_bim > 18.5) {
      return 'まあまあ';
    } else {
      return 'okだ';
    }
  }

  String getAdvise() {
    _calc();
    if (_bim > 25.5) {
      return '運動しろ,今すぐにな';
    } else if (_bim > 18.5) {
      return '気を抜くなよ、運動しなければすぐにデブコースだぞ';
    } else {
      return 'もっと食べましょう。過度なダイエットは不健康です';
    }
  }
}
