import 'package:flutter/material.dart';

import '../Module/featured.dart';

class Advisable extends StatelessWidget {
  final Featured featured;

  const Advisable({super.key, required this.featured});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Container(
              width: 320,
              height: 252,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: NetworkImage(featured.cover), //extracts image
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(24),
                ),
              ),
            ),
          ),
          Positioned(
            left: 12,
            bottom: 68,
            top: 150,
            right: 10,
            child: Text(
              featured.title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 12,
            bottom: 12,
            top: 180,
            right: 220,
            child: SizedBox(
              width: 30,
              height: 14,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: const Color(0xffff6e40),
                    shape: const StadiumBorder()),
                child: const Text(
                  'Read Now',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 15,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
