import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/presentation/page/gin_base_page.dart';
import '../../../../app/presentation/widgets/common/async_field_builder.dart';
import '../../../../di/service_locator.dart';
import '../../domain/entities/base/dnd_base_entity.dart';
import '../../domain/entities/base/reference_base_entity.dart';
import '../../domain/state/library_item/library_item_cubit.dart';
import '../components/dnd_entity_card.dart';

class LibraryItemPage extends GinBasePage {
  const LibraryItemPage({
    Key? key,
    required this.referenceBase,
  }) : super(key: key);

  final ReferenceBaseEntity<DndBaseEntity> referenceBase;

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
      appBar: AppBar(
        leading: const AutoLeadingButton(),
        title: Text(referenceBase.name),
      ),
      body:
          AsyncFieldBuilder<LibraryItemCubit, LibraryItemState, DndBaseEntity>(
        fieldGetter: (state) => state.field,
        dataBuilder: (data) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: DndEntityCard(dndBaseEntity: data),
          );
        },
      ),
    );
  }
}
