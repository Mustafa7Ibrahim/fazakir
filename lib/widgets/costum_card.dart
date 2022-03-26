import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.size,
    required this.image,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final Size size;
  final String image;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).colorScheme.primary,
          ],
        ),
        borderRadius: BorderRadius.circular(18.0),
      ),
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 6.0),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
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
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontFamily: "Arabic",
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        "اذهب الي",
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 18.0,
                          fontFamily: "Arabic",
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18.0,
                        color: Colors.white54,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              SvgPicture.asset(
                image,
                height: size.height * 0.10,
                width: size.width * 0.10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
