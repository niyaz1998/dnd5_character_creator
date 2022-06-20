
class LibraryCategoryEntity {
  const LibraryCategoryEntity({
    required this.path,
    required this.localeKey,
    required this.domainType,
  });

  final String path;
  final String localeKey;
  final Type domainType;
}
