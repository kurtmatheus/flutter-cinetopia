import 'package:cinetopia/app/models/movie.dart';
import 'package:cinetopia/app/util/const.dart';
import 'package:cinetopia/ui/components/text/texts.dart';
import 'package:cinetopia/ui/styles/app_color.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Row(
        children: [
          Container(
            width: 96,
            height: 132,
            decoration: BoxDecoration(
              color: AppColor.black,
              image: DecorationImage(
                image: NetworkImage("$imageUrlPrefix${movie.imageUrl}"),
                fit: BoxFit.cover,
              ),
            ),
            margin: EdgeInsets.only(right: 16),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: text20DefaultColorBold(text: movie.title),
              ),
              textSelectAll(
                text: "Lançamento: ${movie.releaseDate}",
                color: AppColor.lightGrey,
                size: 18,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
