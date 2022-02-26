import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: const Text('SL'),
              backgroundColor: Colors.indigo[900],
            ),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
            maxRadius: 100,
            backgroundImage: NetworkImage('https://laverdadnoticias.com/__export/1636133938075/sites/laverdad/img/2021/11/05/one_piece_manga_1031_spoilers_sanji.jpg_743561205.jpg'),
          ),
      ),
    );
  }
}