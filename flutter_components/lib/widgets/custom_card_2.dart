import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({
    Key? key,
    required this.imageUrl,
    this.imageTitle,
  }) : super(key: key);

  final String imageUrl;
  final String? imageTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 3,
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(imageUrl),
            width: double.infinity,
            fit: BoxFit.fitHeight,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (imageTitle != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(
                  right: 20, left: 10, top: 10, bottom: 10),
              child: Text(imageTitle ?? 'Una Fotito Guay'),
            )
        ],
      ),
    );
  }
}
