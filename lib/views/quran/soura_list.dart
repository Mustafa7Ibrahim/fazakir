import '../../bloc/quran_cubit/quran_cubit.dart';
import '../../bloc/quran_cubit/quran_state.dart';
import 'quran_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../injection_container.dart';

class SouraList extends StatelessWidget {
  const SouraList({Key? key}) : super(key: key);

  static const routeName = '/soura';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "القران الكريم",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<QuranCubit>()..getsoura(),
        child: BlocConsumer<QuranCubit, QuranState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is SouraLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is SouraError) {
              return Center(child: Text(state.message));
            } else if (state is SouraScasses) {
              return ListView.separated(
                itemCount: state.souraModel.soura.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => QuranPageScrean(
                          index: state.souraModel.soura[index].pages,
                        ),
                      ),
                    ),
                    leading: SvgPicture.asset(
                      "assets/icons/moshaf.svg",
                      height: size.width * 0.1,
                      width: size.width * 0.1,
                    ),
                    title: Text(
                      state.souraModel.soura[index].titleAr!,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "عدد الآيات : ${state.souraModel.soura[index].count}",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          "الصفحة : ${state.souraModel.soura[index].pages! + 1}",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          state.souraModel.soura[index].type.toString(),
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
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
