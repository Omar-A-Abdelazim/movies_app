import 'package:flutter/material.dart';
import 'package:movies_app/widgets/resources/resources_model.dart';

class MovieCard extends StatelessWidget {

  final Movies movie;

  const MovieCard({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [

        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.network(
            movie.largeCoverImage ?? "",
            fit: BoxFit.cover,
          ),
        ),

        Positioned(
          top: 10,
          left: 10,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),

            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(20),
            ),

            child: Row(
              children: [

                Text(
                  "${movie.rating}",
                  style: TextStyle(color: Colors.white),
                ),

                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 18,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}