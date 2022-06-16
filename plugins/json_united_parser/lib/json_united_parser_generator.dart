import 'package:build/src/builder/build_step.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:json_united_parser/model/parsable_class.dart';
import 'package:source_gen/source_gen.dart';

import 'dependency_tree_builder.dart';
import 'visitor.dart';

class JsonSerializableVisitor extends GeneratorForAnnotation<JsonSerializable> {
  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final visitor = ModelVisitor();
    element.visitChildren(visitor);
    DependencyTreeBuilder().addClass(
      ParsableClass(
        className: element.name,
        parent: element.getDisplayString(withNullability: false),
      ),
    );
    return '';
  }
}
