import 'package:flutter/material.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Body();
}

class _Body extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: IconButton( // Button for now until can get pictures figured out
            iconSize: 30,
            onPressed: () {},
            icon: const Icon(Icons.person),
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
