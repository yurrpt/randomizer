import 'dart:math';

extension RandomNumGen on num {
  num get random => this * Random().nextInt(51231);
}
