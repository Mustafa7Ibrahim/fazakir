import '../../models/salah_model.dart';
import 'package:flutter/material.dart';

import 'salah_info.dart';

class SalahList extends StatefulWidget {
  const SalahList({
    Key? key,
    required this.sahalInfo,
  }) : super(key: key);
  final SalahData sahalInfo;
  @override
  State<SalahList> createState() => _SalahListState();
}

class _SalahListState extends State<SalahList> {
  final GlobalKey columnlKey = GlobalKey();
  late bool _see;
  double? height;

  @override
  void initState() {
    super.initState();
    _see = false;
    height = 0.0;
  }

  void changeExpandedValue() {
    final currentContext = columnlKey.currentContext!;
    final box = currentContext.findRenderObject() as RenderBox?;

    if (_see) {
      setState(() {
        height = 0.0;
        _see = !_see;
      });
    } else {
      setState(() {
        height = box!.size.height;
        _see = !_see;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
            blurRadius: 1,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: InkWell(
        onTap: changeExpandedValue,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${widget.sahalInfo.name}",
                    style: const TextStyle(fontFamily: 'quran', fontSize: 24),
                  ),
                  Icon(_see ? Icons.expand_less : Icons.expand_more)
                ],
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                height: height,
                child: AnimatedOpacity(
                  opacity: _see ? 1 : 0,
                  duration: const Duration(milliseconds: 300),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      key: columnlKey,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 36.0,
                          child: Divider(
                            indent: 10.0,
                            thickness: 0.8,
                            endIndent: 10.0,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.6,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 9.0),
                                child: Container(
                                  width: 2.0,
                                  height:
                                      MediaQuery.of(context).size.height * 0.6,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondary
                                      .withOpacity(0.3),
                                ),
                              ),
                              ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: widget.sahalInfo.info!.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return SalahInfo(
                                    data: widget.sahalInfo.info![index],
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
