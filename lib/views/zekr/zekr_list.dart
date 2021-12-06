import 'package:fazakir/models/azkar_model.dart';
import 'package:flutter/material.dart';

import 'zekr.dart';

class ZekrList extends StatefulWidget {
  const ZekrList({Key? key, required this.azkarModel}) : super(key: key);

  final AzkarModel azkarModel;

  @override
  State<ZekrList> createState() => _ZekrListState();
}

class _ZekrListState extends State<ZekrList> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Color(0xffBD84CA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          widget.azkarModel.title,
          // style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 12.0),
          Flexible(
            flex: 16,
            child: PageView.builder(
              itemCount: widget.azkarModel.content.length,
              itemBuilder: (context, index) {
                return Zekr(
                  size: size,
                  zekrModel: widget.azkarModel.content[index],
                  index: index,
                );
              },
            ),
          ),
          const SizedBox(height: 12.0),
          Flexible(
            flex: 1,
            child: Container(
                // color: Colors.red,
                ),
          )
        ],
      ),
    );
  }
}
