import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Policy extends StatefulWidget {
  const Policy({Key? key, required this.mdFile}) : super(key: key);
  static const routeName = '/policy';

  final String mdFile;

  @override
  State<Policy> createState() => _PolicyState();
}

class _PolicyState extends State<Policy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString(widget.mdFile),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              return Directionality(
                textDirection: TextDirection.ltr,
                child: Markdown(
                  data: snapshot.data!,
                  onTapLink: (link, _, __) {
                    setState(() {});
                  },
                ),
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
