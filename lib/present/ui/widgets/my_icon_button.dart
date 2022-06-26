import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//Common IconButton
class MyIconButton extends StatelessWidget {
  final String route;
  final IconData? icon;
  const MyIconButton({
    required this.route,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.go(route);
      },
      icon: Icon(
        icon,
        size: 30,
        color: Colors.white60,
      ),
    );
  }
}
