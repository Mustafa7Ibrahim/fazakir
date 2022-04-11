import 'package:equatable/equatable.dart';
import '../../models/quran_page_model.dart';
import '../../models/soura_detals_model.dart';

abstract class QuranState extends Equatable {
  const QuranState();

  @override
  List<Object> get props => [];
}

class QuranInitial extends QuranState {}

class SouraLoading extends QuranState {}

class SouraScasses extends QuranState {
  final SouraModel souraModel;

  const SouraScasses({
    required this.souraModel,
  });
  @override
  List<Object> get props => [souraModel];
}

class SouraError extends QuranState {
  final String message;
  const SouraError({
    required this.message,
  });
  @override
  List<Object> get props => [message];
}

class QuranPageLoading extends QuranState {}

class QuranPageScasses extends QuranState {
  final QuranPageModel quranPageModel;

  const QuranPageScasses({
    required this.quranPageModel,
  });
  @override
  List<Object> get props => [quranPageModel];
}

class QuranPageError extends QuranState {
  final String message;
  const QuranPageError({
    required this.message,
  });
  @override
  List<Object> get props => [message];
}
