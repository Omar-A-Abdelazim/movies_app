import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key,
    this.onPressed,
    required this.text,
    this.isloading = false,
    this.child,
  });
  final Widget? child;
  final void Function()? onPressed;
  final String text;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: isloading
              ? Center(child: CircularProgressIndicator())
              : SizedBox(
                  height: 48,
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: theme.hoverColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: onPressed,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (child != null) child!,

                        const SizedBox(width: 12),

                        Text(
                          text,
                          style: Theme.of(context).textTheme.displayMedium!
                              .copyWith(
                                fontWeight: FontWeight.w500,
                                color: theme.primaryColor,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}














//  ListTile(
//                       leading: child,
//                       title: Text(
//                         text,
//                         style: Theme.of(context).textTheme.displayMedium!
//                             .copyWith(
//                               fontWeight: FontWeight.w500,
//                               color:theme.primaryColor,
//                             ),
//                       ),
//                     ),
                
