import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';

class ZekrCubit extends Cubit<int> {
  ZekrCubit() : super(0);

  /// Add 1 to the current state.
  void increment(int max) {
    if (state < max) {
      emit(state + 1);
      _haptic();
    }
  }

  void incrementWithoutMaxNumber() {
    emit(state + 1);
    _haptic();
  }

  void _haptic() {
    HapticFeedback.mediumImpact();
    SystemSound.play(SystemSoundType.click);
  }

  /// Subtract 1 from the current state.
  void decrement() {
    if (state > 0) emit(state - 1);
  }
}
