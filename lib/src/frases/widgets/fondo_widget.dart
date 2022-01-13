import 'package:flutter/material.dart';

class FondoWidget extends StatelessWidget {
  const FondoWidget({Key? key, required this.urlImage}) : super(key: key);
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(urlImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
