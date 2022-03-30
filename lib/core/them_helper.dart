import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/theme_mode_cubit/them_model_cubit.dart';

class ThemeHandler {
  bool isDark(BuildContext context) {
    bool isDarkMode = BlocProvider.of<ThemeModeCubit>(context).state;
    return isDarkMode;
  }
}
