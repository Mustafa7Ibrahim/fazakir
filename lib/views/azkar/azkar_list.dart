import '../../bloc/azkar_cubit/azkar_cubit.dart';
import '../../injection_container.dart';
import '../zekr/zekr_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AzkarList extends StatelessWidget {
  const AzkarList({Key? key}) : super(key: key);

  static const routeName = '/azkar';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appTitle),
      ),
      body: BlocProvider(
        create: (context) => getIt<AzkarCubit>()..getAzkar(),
        child: BlocBuilder<AzkarCubit, AzkarState>(
          builder: (context, state) {
            if (state is AzkarLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is AzkarError) {
              return Center(child: Text(state.message));
            } else if (state is AzkarLoaded) {
              return ListView.separated(
                itemCount: state.azkarModel.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () => Navigator.pushNamed(
                      context,
                      ZekrList.routeName,
                      arguments: state.azkarModel[index],
                    ),
                    leading: SvgPicture.asset(
                      "assets/icons/doaa.svg",
                      height: size.width * 0.1,
                      width: size.width * 0.1,
                    ),
                    title: Text(
                      state.azkarModel[index].title,
                      style: const TextStyle(fontFamily: "Arabic"),
                    ),
                  );
                },
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
