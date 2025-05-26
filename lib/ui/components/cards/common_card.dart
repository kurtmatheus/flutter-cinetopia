import 'package:cinetopia/ui/components/text/texts.dart';
import 'package:cinetopia/ui/styles/app_color.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Row(
        children: [
          Container(
            width: 96,
            height: 132,
            decoration: BoxDecoration(color: AppColor.black),
            margin: EdgeInsets.only(right: 16),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: text20DefaultColorBold(text: "Título do Filme"),
              ),
              textSelectAll(
                text: "Lançamento: 01-01-2020",
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
