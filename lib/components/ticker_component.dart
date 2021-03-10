import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TickerComponent extends StatefulWidget {
  @override
  _TickerComponentState createState() => _TickerComponentState();
}

class _TickerComponentState extends State<TickerComponent> {
  bool isDone = false;

  handleOnTap() {
    setState(() {
      isDone = !isDone;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleOnTap,
      child: AnimatedContainer(
        margin: EdgeInsets.only(right: 10),
        child: Icon(
        FontAwesomeIcons.check,
          size: 15,
          color: Colors.white,
        ),
        curve: Curves.easeIn,
        duration: Duration(milliseconds: 250),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: isDone ? Colors.indigo : Colors.indigo[200]),
        width: 30,
        height: 30,
      ),
    );
  }
}
