import 'package:flutter/material.dart';
import 'package:instethic_social_media/detail_page.dart';

class CardPage extends StatelessWidget {
  final String img;
  const CardPage({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailPage(
                      img: img,
                    ))),
            child: Hero(
              tag: 'hi$img',
              child: Container(
                height: height / 2 + 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            left: 5,
            bottom: 15,
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.c71YfVBHi6gbiFcZq5DUSQHaHa%26pid%3DApi&f=1"),
                    ),
                    Text(
                      "Chetas Shree",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Sed elitr no amet ipsum \nipsum, amet rebum.",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "#anime #chibi #flutter #girl",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
