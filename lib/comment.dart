import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFEBCB73),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.LLPyhy_F2z4PJ8ncTk2x_gHaHa%26pid%3DApi&f=1"),
            ),
            // SizedBox(
            //   width: 10,
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Marrer",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Wow I love the color way",
                ),
              ],
            ),
            // Align(alignment: Alignment.topRight, child: Text('12 min')),
            Text('12 min'),
          ],
        ));
  }
}
