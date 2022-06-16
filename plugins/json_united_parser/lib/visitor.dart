import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';

class ModelVisitor extends SimpleElementVisitor<void> {
  String? className;
  String? parent;

  @override
  void visitConstructorElement(ConstructorElement element) {
    final elementReturnType = element.type.returnType.toString();
    className = elementReturnType.replaceFirst('*', '');
    parent = element.enclosingElement.supertype.toString();
    print(element.name);
    print(element.enclosingElement.getDisplayString(withNullability: true));
  }

  @override
  void visitPropertyAccessorElement(PropertyAccessorElement element) {}

  @override
  void visitMethodElement(MethodElement element) {}

  @override
  void visitFieldElement(FieldElement element) {}
}
