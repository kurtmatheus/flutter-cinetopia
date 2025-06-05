import 'package:cinetopia/app/models/movie.dart';
import 'package:cinetopia/app/util/const.dart';
import 'package:cinetopia/ui/components/text/texts.dart';
import 'package:cinetopia/ui/screens/search_movies.dart';
import 'package:cinetopia/ui/styles/app_color.dart';
import 'package:flutter/material.dart';

class MoviesDetails extends StatelessWidget {
  final Movie movie;

  const MoviesDetails({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.maybePop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: AppColor.deepPurple80,
      ),
      body: Ink(
        decoration: BoxDecoration(color: AppColor.deepPurple80),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(padding: const EdgeInsets.only(bottom: 24), child: Image.asset("assets/movie.png")),
              text32DefaultColorBold(text: movie.title),
              Container(
                width: 156,
                height: 192,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColor.black,
                  image: DecorationImage(image: NetworkImage("$imageUrlPrefix${movie.imageUrl}"), fit: BoxFit.cover),
                ),
                margin: EdgeInsets.fromLTRB(0, 32, 16, 32),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [text20DefaultColorBold(text: "Descrição", align: TextAlign.left)],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: textSelectAll(
                        text: movie.overview,
                        size: 18,
                        fontWeight: FontWeight.w400,
                        align: TextAlign.left,
                        color: AppColor.lightGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
