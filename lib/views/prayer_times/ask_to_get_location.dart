import '../../bloc/prayer_cubit/prayer_cubit.dart';
import '../../injection_container.dart';
import '../../repository/prayer_time_repository/prayer_time_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AskToGetCurrentLocation extends StatelessWidget {
  const AskToGetCurrentLocation({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      height: size.height,
      width: size.width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 8,
            child: SvgPicture.asset("assets/icons/location.svg"),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 44.0,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Text(
                  "احصل على مواقيت صلاة دقيقة لموقعك",
                  style: Theme.of(context).textTheme.headline6,
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: size.width,
              child: OutlinedButton(
                onPressed: () {
                  getIt<PryaerTimeRepositiory>().getPosition().then((value) =>
                      BlocProvider.of<PrayerCubit>(context).getPrayerTimes());
                },
                style: OutlinedButton.styleFrom(shape: const StadiumBorder()),
                child: const Text("حدد موقعي"),
              ),
            ),
          ),
          const SizedBox(height: 34.0)
        ],
      ),
    );
  }
}
