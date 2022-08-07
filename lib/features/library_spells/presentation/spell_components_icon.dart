import 'package:flutter/material.dart';

import '../domain/spell_entity.dart';

class SpellComponentsIcon extends StatelessWidget {
  const SpellComponentsIcon({
    Key? key,
    this.spellComponent,
    this.concentration = false,
    this.ritual = false,
  }) : super(key: key);

  final SpellComponent? spellComponent;
  final bool concentration;
  final bool ritual;

  @override
  Widget build(BuildContext context) {
    String text = '';
    switch (spellComponent) {
      case null:
        if (concentration) {
          text = 'C';
        } else if (ritual) {
          text = 'R';
        }
        break;
      case SpellComponent.V:
        text = 'V';
        break;
      case SpellComponent.S:
        text = 'S';
        break;
      case SpellComponent.M:
        text = 'M';
        break;
    }

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: (concentration || ritual) ? Colors.black87 : Colors.black26,
        shape: BoxShape.circle,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: (concentration || ritual) ? Colors.white : Colors.black),
      ),
    );
  }
}
