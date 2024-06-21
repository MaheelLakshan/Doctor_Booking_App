import 'package:flutter/material.dart';

class SectionTile extends StatelessWidget {
  const SectionTile({
    super.key,
    required this.title,
    this.action,
    this.onPressed,
  });

  final String title;
  final String? action;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final ColorScheme = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
        ),
        if (action != null)
          TextButton(
            onPressed: onPressed,
            child: Text(
              action!,
              style: textTheme.bodyMedium!.copyWith(
                  decoration: TextDecoration.underline,
                  color: ColorScheme.secondary),
            ),
          ),
      ],
    );
  }
}
