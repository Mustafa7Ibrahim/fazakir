import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.size,
    this.image,
    required this.title,
    required this.onTap,
    required this.colors,
  }) : super(key: key);

  final Size size;
  final String? image;
  final String title;
  final VoidCallback onTap;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors),
        borderRadius: BorderRadius.circular(18.0),
      ),
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 6.0),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontSize: 24, color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text(
                        "اذهب الي",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontSize: 18, color: Colors.white38),
                      ),
                      image != null
                          ? const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 18.0,
                              color: Colors.white54,
                            )
                          : const SizedBox(),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              image != null
                  ? SvgPicture.asset(
                      image!,
                      height: size.height * 0.08,
                      width: size.width * 0.10,
                    )
                  : const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 24.0,
                      color: Colors.white54,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
