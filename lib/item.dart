// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:amapp/data.dart';

class Item extends StatelessWidget {
  final Data data;
  final VoidCallback onEditPressed;
  final VoidCallback onDeletePressed;

  const Item({
    Key? key,
    required this.data,
    required this.onEditPressed,
    required this.onDeletePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final primaryColor = theme.colorScheme.primary;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: primaryColor,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.title,
                    style: textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    data.description,
                    style: textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: onEditPressed,
              icon: const Icon(Icons.edit, color: Colors.green), 
            ),
            IconButton(
              onPressed: onDeletePressed,
              icon: const Icon(Icons.delete, color: Colors.red), 
            ),
          ],
        ),
      ),
    );
  }
}

