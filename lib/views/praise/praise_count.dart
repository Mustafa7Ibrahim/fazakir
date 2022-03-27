import 'package:flutter/material.dart';

class PraiseCount extends StatelessWidget {
  const PraiseCount({Key? key, required this.sum}) : super(key: key);
  final int sum;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
              blurRadius: 1,
              offset: const Offset(0, 3),
            ),
          ]),
      child: Row(
        children: [
          const Expanded(
              child: Text(
            "قال تعالي \n ( وَمَنْ أَعْرَضَ عَن ذِكْرِى فَإِنَّ لَهُۥ مَعِيشَةً ضَنكًا وَنَحْشُرُهُۥ يَوْمَ ٱلْقِيَٰمَةِ أَعْمَىٰ )* صدق الله العظيم",
            style: TextStyle(fontFamily: "Arabic"),
          )),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                  width: 5.0,
                  style: BorderStyle.solid,
                ),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "$sum",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
