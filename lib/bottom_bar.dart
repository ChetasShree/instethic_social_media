import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: Colors.transparent,
      elevation: 9,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 2 - 40,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home, color: Color(0xFF255096)),
                  Icon(Icons.search, color: Color(0xFF676E79)),
                ]),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 2 - 40,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.mail_outline, color: Color(0xFF676E79)),
                  Icon(Icons.person_outline, color: Color(0xFF676E79)),
                ]),
          ),
        ]),
      ),
    );
  }
}
