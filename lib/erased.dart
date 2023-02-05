import 'package:flutter/material.dart';

class DisappearingChip extends StatefulWidget {
  const DisappearingChip({Key? key}) : super(key: key);

  @override
  State createState() => _DisappearingChipState();
}

class _DisappearingChipState extends State<DisappearingChip> {
  bool? erased;

  @override
  void initState() {
    erased = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => erased!
      ? Container()
      : Chip(
          deleteIcon: Icon(
            Icons.close,
            size: 15,
          ),
          label: const Text('Delete me!'),
          deleteButtonTooltipMessage: 'erase',
          onDeleted: () {
            setState(() {
              erased = true;
            });
          },
        );
}