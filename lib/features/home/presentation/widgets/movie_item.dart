import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  final String name;
  final String image;
  final String subtitle;
  final String rating;
  final void Function()? onTap;
  const MovieItem({
    super.key,
    required this.name,
    required this.image,
    required this.subtitle,
    required this.rating,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Banner(
        location: BannerLocation.topEnd,
        message: rating,
        child: Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            shadows: const [
              BoxShadow(
                color: Color(0x28D4D4D4),
                blurRadius: 40,
                offset: Offset(0, 20),
                spreadRadius: 0,
              )
            ],
          ),
          child: ListTile(
            onTap: onTap,
            title: Text(
              name,
              style: const TextStyle(
                color: Color(0xFF00263E),
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Text(
              subtitle,
              style: const TextStyle(
                color: Color(0xFF7F7A7A),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
