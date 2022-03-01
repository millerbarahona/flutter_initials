import 'package:flutter/material.dart';
import 'package:movies_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Movies in Cinemas')),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_rounded),
            onPressed: (){},
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            CardSwiper(), //tarjetas principales
      
            MovieSlider() //slider de movies
          ],
        ),
      ),
    );
  }
}
