import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  MainAppBar() : preferredSize = Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final text = RichText(
      text: TextSpan(
        style: theme.textTheme.bodyLarge?.copyWith(fontSize: 30),
        children: [
          TextSpan(
            text: 'start',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(text: 'ata'),
        ],
      ),
    );

    return PreferredSize(
      preferredSize: const Size(0, 0),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 64, vertical: 32),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              text,
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Ana Roberta',
                    style: theme.textTheme.bodyText1
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage:
                        NetworkImage('https://picsum.photos/id/237/100'),
                    backgroundColor: Colors.transparent,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
