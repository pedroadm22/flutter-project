import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: colors.secondary
      ),
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(children: [Icon(Icons.home)]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
