import 'package:ballasttest/core/models/movie.dart' as model;
import 'package:flutter/material.dart';

class MovieTile extends StatelessWidget {
  final model.Movie movie;
  const MovieTile(this.movie, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          margin: const EdgeInsets.only(bottom: 16),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: Row(
            children: <Widget>[
              Image.network(
                movie.show.image.medium,
                height: 96,
                width: 96,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(movie.show.name),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
