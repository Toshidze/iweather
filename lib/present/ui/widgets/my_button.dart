import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//common button
class MyButton extends StatelessWidget {
  final String route;
  final String buttonName;
  const MyButton({
    required this.route,
    required this.buttonName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: Colors.white60,
        ),
      ),
      child: TextButton(
        onPressed: () => context.go(route),
        child: Text(
          buttonName,
          style: textTheme.headline5,
        ),
      ),
    );
  }
}
