import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sinusoidal/wave.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.size,
    required this.image,
    required this.title,
    required this.colors,
    required this.short,
    required this.onTap,
  }) : super(key: key);

  final Size size;
  final String image;
  final String title;
  final List<Color> colors;
  final bool short;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
        ),
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            Positioned(
              bottom: 0.0,
              child: Sinusoidal(
                model: const SinusoidalModel(
                  formular: WaveFormular.travelling,
                  waves: 5,
                  amplitude: 20,
                  frequency: 0.5,
                ),
                child: Container(
                  color: Colors.white12,
                  height: short ? size.height * 0.09 : size.height * 0.15,
                  width: size.width,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    image,
                    height: size.height * 0.12,
                    width: size.width * 0.12,
                  ),
                  SizedBox(height: short ? size.height * 0.05 : size.height * 0.1),
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white54),
                  ),
                  Row(
                    children: const [
                      Text(
                        "اذهب الي",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 14.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
