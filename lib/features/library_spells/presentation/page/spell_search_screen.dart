import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/presentation/page/gin_base_page.dart';
import '../../../../app/presentation/widgets/common/async_field_builder.dart';
import '../../../../di/injectable.dart';
import '../../../library/domain/entities/base/reference_base_entity.dart';
import '../../../library/domain/entities/library_category_entity.dart';
import '../../../library/presentation/components/category/category_item_card.dart';
import '../../domain/state/spell_search_cubit.dart';

class SearchSpellsListView extends GinBasePage {
  const SearchSpellsListView({
    Key? key,
    required this.libraryCategoryEntity,
  }) : super(key: key);

  final LibraryCategoryEntity libraryCategoryEntity;

  @override
  Widget buildProviders(Widget child) {
    return BlocProvider(
      create: (c) => SpellSearchCubit(
        categoryEntity: libraryCategoryEntity,
        libraryRepo: getIt(),
      ),
      child: child,
    );
  }

  @override
  Widget buildPageContent(BuildContext context) {
    return BlocBuilder<SpellSearchCubit, SpellSearchState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: const AutoLeadingButton(),
            title: Text('${state.spellLevel} level '
                '${libraryCategoryEntity.localeKey}'),
          ),
          body: Column(
            children: [
              const SizedBox(height: 20),
              Slider(
                value: state.spellLevel.toDouble(),
                min: 1,
                max: 9,
                divisions: 8,
                label: state.spellLevel.toString(),
                onChanged: (value) {
                  SpellSearchCubit.of(context).changeSpellLevel(value.toInt());
                },
              ),
              Expanded(
                child: AsyncFieldBuilder<SpellSearchCubit, SpellSearchState,
                    List<ReferenceBaseEntity>>(
                  fieldGetter: (state) => state.field,
                  dataBuilder: (data) => ListView.builder(
                    padding: const EdgeInsets.all(20),
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, int index) =>
                        CategoryItemCard(
                      referenceBaseModel: data[index],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
