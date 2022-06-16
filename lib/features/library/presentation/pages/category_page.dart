import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/presentation/page/gin_base_page.dart';
import '../../../../app/presentation/widgets/common/async_field_builder.dart';
import '../../../../di/service_locator.dart';
import '../../data/models/base/reference_base_model.dart';
import '../../domain/entities/library_category_entity.dart';
import '../../domain/state/library_category/library_category_cubit.dart';
import '../components/category_item_card.dart';

class CategoryPage extends GinBasePage {
  const CategoryPage({
    Key? key,
    required this.libraryCategoryEntity,
  }) : super(key: key);

  final LibraryCategoryEntity libraryCategoryEntity;

  @override
  Widget buildProviders(Widget child) {
    return BlocProvider<LibraryCategoryCubit>(
      create: (context) => LibraryCategoryCubit(
        libraryCategoryRepo: getIt(),
        libraryCategoryEntity: libraryCategoryEntity,
      )..init(),
      child: child,
    );
  }

  @override
  Widget buildPageContent(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const AutoLeadingButton()),
      body: SafeArea(
        child: AsyncFieldBuilder<LibraryCategoryCubit, LibraryCategoryState,
            List<ReferenceBaseModel>>(
          fieldGetter: (state) => state.field,
          dataBuilder: (data) => ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) => CategoryItemCard(
              referenceBaseModel: data[index],
            ),
          ),
        ),
      ),
    );
  }
}
