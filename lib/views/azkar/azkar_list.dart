import 'package:fazakir/bloc/azkar_cubit/azkar_cubit.dart';
import 'package:fazakir/core/constant.dart';
import 'package:fazakir/injection_container.dart';
import 'package:fazakir/repository/azkar_repository/azkar_repository.dart';
import 'package:fazakir/views/zekr/zekr_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AzkarList extends StatelessWidget {
  const AzkarList({Key? key}) : super(key: key);

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
                    onTap: () => goTo(context, ZekrList(azkarModel: state.azkarModel[index])),
                    leading: SvgPicture.asset(
                      "assets/icons/doaa.svg",
                      height: size.width * 0.1,
                      width: size.width * 0.1,
                    ),
                    title: Text(state.azkarModel[index].title),
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
