// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class Custom_OutlinedButton extends StatelessWidget {
  const Custom_OutlinedButton({super.key, this.onPressed, required this.child});
  final void Function()? onPressed;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 48,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Theme.of(context).cardColor,
              side: BorderSide(width: 5, color: Theme.of(context).hoverColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            onPressed: onPressed,
            child: child,
          ),
        ),
      ],
    );
  }
}
