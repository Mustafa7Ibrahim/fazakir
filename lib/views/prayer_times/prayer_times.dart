import 'package:fazakir/bloc/prayer_cubit/prayer_cubit.dart';
import 'package:fazakir/injection_container.dart';
import 'package:fazakir/views/prayer_times/prayer_first_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PrayerTime extends StatelessWidget {
  const PrayerTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<PrayerCubit>()..getPrayerTimes(),
        child: BlocConsumer<PrayerCubit, PrayerState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is PrayerLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is PrayerLoaded) {
              return Text(state.dataModel.toString());
            }
            if (state is PrayerError) {
              return Center(child: Text(state.message));
            }
            if (state is PrayerFirstTime) {
              return const PrayerFirstTimeSet();
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
