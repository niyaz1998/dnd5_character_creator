import 'model/parsable_class.dart';

class DependencyTreeBuilder {
  static final DependencyTreeBuilder _singleton =
      DependencyTreeBuilder._internal();

  factory DependencyTreeBuilder() {
    return _singleton;
  }

  DependencyTreeBuilder._internal();

  List<ParsableClass> allAnnotatedClasses = [];

  void addClass(ParsableClass annotatedClass) {
    allAnnotatedClasses.add(annotatedClass);
  }
}
