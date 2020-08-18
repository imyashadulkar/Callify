import 'package:apphigh_tech_assignment/config.dart';
import 'package:flutter/material.dart';

class CallButton extends StatefulWidget {
  @override
  _CallButtonState createState() => _CallButtonState();
}

class _CallButtonState extends State<CallButton>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _animationController.repeat(reverse: true);
    _animation = Tween(
      begin: 2.0,
      end: 15.0,
    ).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            color: AppConfig.appColor,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.lightBlueAccent,
                blurRadius: _animation.value,
                spreadRadius: _animation.value,
              ),
            ]),
        child: Icon(
          Icons.videocam,
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}