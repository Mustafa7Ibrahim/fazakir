import 'package:fazakir/features/prayer_time/presentation/widgets/prayer_times_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../cubit/prayer_time_cubit.dart';
import 'prayer_first_time.dart';

class PrayerTime extends StatelessWidget {
  const PrayerTime({Key? key}) : super(key: key);

  static const routeName = '/prayer_time';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<PrayerTimeCubit>()..getPrayerTimesOfTheDay(),
        child: BlocConsumer<PrayerTimeCubit, PrayerTimeState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              firstTime: () => const PrayerFirstTimeSet(),
              loaded: (prayerTimes) =>
                  PrayerTimesWidget(prayerTimes: prayerTimes),
            );

            // if (state is PrayerError) {
            //   return Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       const Center(
            //         child: Text(
            //           "يوجد عطل في الاتصال بالانترنت برجاء اعاده المحاولة",
            //         ),
            //       ),
            //       IconButton(
            //         onPressed: () {
            //           BlocProvider.of<PrayerCubit>(context).getPrayerTimes();
            //         },
            //         icon: const Icon(Icons.refresh),
            //       )
            //     ],
            //   );
            // }
          },
        ),
      ),
    );
  }
}
