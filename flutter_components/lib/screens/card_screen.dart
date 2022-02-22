import 'package:flutter/material.dart';

import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(imageTitle: 'Ferxxito God', imageUrl: 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F21%2F2021%2F08%2F20%2FPhoto-Aug-05-10-53-24-PM-2000.jpg'),
            CustomCardType2(imageUrl: 'https://www.hola.com/us/images/026e-136a95ccf261-a1df17501fbe-1000/horizontal-1200/bad-bunny.jpg',)
          ],
        ));
  }
}
