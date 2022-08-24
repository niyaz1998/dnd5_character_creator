class SpellCastingEntity {
  const SpellCastingEntity({
    required this.level,
    required this.info,
  });

  /// Level at which the class can start using its spellcasting abilities.
  final int level;
  final List<SpellCastingInfoEntity> info;
}

class SpellCastingInfoEntity {
  const SpellCastingInfoEntity({
    required this.name,
    required this.description,
  });

  final String name;
  final List<String> description;
}
