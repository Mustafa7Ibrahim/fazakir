import 'dart:ui';

import 'package:flutter/material.dart';

class SalahInfo extends StatelessWidget {
  const SalahInfo({
    Key? key,
    required this.data,
  }) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 20,
          height: 15,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              shape: BoxShape.circle),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(
            bottom: 30.0,
            right: 10.0,
          ),
          child: Text(
            data,
            style: const TextStyle(fontFamily: "Othmani"),
          ),
        ))
      ],
    );
  }
}


// Row(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           width: 2.0,
//           constraints:
//               BoxConstraints(minHeight: size * 0.05, maxHeight: size * 0.3),
//           color: Colors.red,
//         ),
//         // Column(
//         //   children: [
//         //     Container(
//         //       width: 20,
//         //       height: 15,
//         //       decoration: const BoxDecoration(
//         //           color: Colors.amber, shape: BoxShape.circle),
//         //     ),
//         //     Container(
//         //       width: 2.0,
//         //       constraints:
//         //           BoxConstraints(minHeight: size * 0.05, maxHeight: size * 0.3),
//         //       color: Colors.red,
//         //     ),
//         //   ],
//         // ),
//         Expanded(
//           child: Container(
//             color: Colors.amber,
//             child: Padding(
//               padding: const EdgeInsets.only(
//                 bottom: 20.0,
//               ),
//               child: Text(data),
//             ),
//           ),
//         ),
//       ],
//     );