import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mount_ack/main.dart';

class Splash extends StatefulWidget{
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState(){
    super.initState();

    _controller = AnimationController(vsync: this);

    new Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (BuildContext context) => MyApp()),
              (route) => false));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Lottie.asset('assets/lottie/app_splash_lottie.json',
                controller: _controller, onLoaded: (composition) {
                  _controller.addStatusListener((status) {
                    if(status == AnimationStatus.dismissed)
                      _controller.forward();
                    else if(status == AnimationStatus.completed)
                      _controller.reverse();
                  });
                  _controller
                  ..duration = composition.duration
                  ..forward();
                    }))
            ],
          ),
        ),
      ),
    );
  }
}