import 'package:flutter/material.dart';
import 'package:movies_app/theme/app_theme.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      color: AppTheme.tertiaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Populares'),
          ),
          
          const SizedBox(height: 5,),

          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (_, int index) => const _MoviePoster()
            ),
          )
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      margin: const EdgeInsets.symmetric(horizontal: 10),      
      child: Column(
        children: [
          
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: 'movie-name'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://via.placeholder.com/300x400'),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Lord of the Rings: The Middle Hearth',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )

        ],
      ),
    );
  }
}
