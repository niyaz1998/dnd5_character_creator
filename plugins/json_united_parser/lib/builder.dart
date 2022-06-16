import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'json_united_parser_generator.dart';

Builder jsonUnitedParserGenerator(BuilderOptions options) =>
    SharedPartBuilder([JsonSerializableVisitor()], 'json_united');
