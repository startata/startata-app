import 'package:flutter/material.dart';
import 'package:startata/features/domain/domain.dart';

class PersonMenuDrawer extends StatefulWidget {
  final List<PersonEntity>? persons;
  final List<bool> reportsChecked;
  final void Function(int index) onTileTap;
  const PersonMenuDrawer({
    Key? key,
    required this.persons,
    required this.onTileTap,
    required this.reportsChecked,
  }) : super(key: key);

  @override
  State<PersonMenuDrawer> createState() => _PersonMenuDrawerState();
}

class _PersonMenuDrawerState extends State<PersonMenuDrawer> {
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      constraints: BoxConstraints(
        minWidth: 200,
        maxWidth: 300,
      ),
      child: ListView.builder(
        itemCount: widget.persons?.length,
        itemBuilder: (_, i) {
          final person = widget.persons?[i];
          return Container(
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: _selected == i ? Colors.black : null,
            ),
            child: ListTile(
              onTap: () {
                setState(() {
                  _selected = i;
                });
                widget.onTileTap(_selected);
              },
              leading: CircleAvatar(
                backgroundImage: person?.photoUrl != null
                    ? NetworkImage(
                        person!.photoUrl!,
                      )
                    : null,
              ),
              title: Text(
                person?.name ?? '--',
                style: theme.textTheme.bodyText2?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: _selected == i ? Colors.white : null,
                ),
              ),
              subtitle: Text(
                person?.team.label ?? '--',
                style: theme.textTheme.caption?.copyWith(
                  color: _selected == i ? Colors.white : null,
                ),
              ),
              trailing: widget.reportsChecked[i]
                  ? Icon(
                      Icons.check,
                      color: _selected == i ? Colors.white : null,
                    )
                  : null,
            ),
          );
        },
      ),
    );
  }
}
