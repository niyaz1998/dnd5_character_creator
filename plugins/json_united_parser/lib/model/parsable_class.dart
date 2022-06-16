class ParsableClass {
  final String? className;
  final String? parent;

  ParsableClass({
    required this.className,
    required this.parent,
  });

  @override
  String toString() {
    return 'ParsableClass{className: $className, parent: $parent}';
  }
}
