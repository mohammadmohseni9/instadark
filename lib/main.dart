

import 'package:flutter/material.dart';
import 'package:instadark/HomePage.dart';
import 'package:instadark/widgets/customButtonTabs.dart';


void main() {
  runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'insatDark Mode',
    theme: ThemeData.dark(),
    home: CustomBottomTabs(),
    onGenerateRoute: (RouteSettings settings) {
      switch(settings.name) {
        case '/':
          return SlideRightRoute(widget: CustomBottomTabs());
          break;
        case '/home':
          return SlideRightRoute(widget: HomePage());

          break;

      }

    },
    )

  );
}


class SlideRightRoute extends PageRouteBuilder {

  final Widget widget;

  SlideRightRoute({this.widget})
      : super(
      pageBuilder: (BuildContext context,
          Animation<double> animation,
          Animation<double> secoundAnimation) {
        return widget;
      },
      transitionsBuilder: (BuildContext context,
          Animation<double> animation,
          Animation<double> secoundAnimation,
          Widget child) {
        return new SlideTransition(
          position: new Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      }

  );

}