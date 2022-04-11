import 'package:bloc/bloc.dart';
import '../../data_source/local/hive_helper.dart';

class ThemeModeCubit extends Cubit<bool> {
  final HiveHelper hiveHelper;
  ThemeModeCubit(this.hiveHelper) : super(hiveHelper.getData("theme") ?? true);
  // bool thememode = HiveHelper().getData("theme") ?? true;
  void changeTheme() {
    emit(!state);

    hiveHelper.putData("theme", state);
  }
}
