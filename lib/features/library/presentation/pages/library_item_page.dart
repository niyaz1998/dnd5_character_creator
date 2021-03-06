import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/data/models/base/reference_base_model.codegen.dart';
import '../../../../app/presentation/page/gin_base_page.dart';
import '../../../../app/presentation/widgets/common/async_field_builder.dart';
import '../../../../di/service_locator.dart';
import '../../domain/entities/library_category_entity.dart';
import '../../domain/state/library_item/library_item_cubit.dart';

class LibraryItemPage extends GinBasePage {
  const LibraryItemPage({
    Key? key,
    required this.referenceBase,
    required this.libraryCategoryEntity,
  }) : super(key: key);

  final LibraryCategoryEntity libraryCategoryEntity;
  final ReferenceBaseModel referenceBase;

  @override
  Widget buildProviders(Widget child) {
    return BlocProvider(
      create: (c) => LibraryItemCubit(
        libraryRepo: getIt(),
        baseLink: referenceBase,
      )..init(),
      child: child,
    );
  }

  @override
  Widget buildPageContent(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const AutoLeadingButton()),
      body: AsyncFieldBuilder<LibraryItemCubit, LibraryItemState, ReferenceBaseModel>(
        fieldGetter: (state) => state.field,
        dataBuilder: (data) {
          return ListView(
            children: [
              Text(data.name),
              Text(data.url),
              Text(data.index),
            ],
          );
        },
      ),
    );
  }
}
