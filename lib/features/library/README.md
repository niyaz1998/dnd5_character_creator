# Введение
Эта фича предоставляет базовые инструменты для библиотеки сущностей из dnd5e. 

## Инструкция как добавить новую категорию информацию в библиотеку

1) в папке domain/entities создать entity DTO class. За основу можно взять описание из АПИ. 
   1) Если вы создаете `ReferenceBaseEntity` или `ChoiceBaseEntity` не забудьте указать тип на который они "указывают".
2) в папке data/models создайте model DTO class. Тут точно за основу надо брать класс из АПИ.
   1) не забудьте отнаследоваться от `ReferenceBaseModel` или `DescribedBaseModel` классов.
   2) `@JsonSerializable(fieldRename: FieldRename.snake)`.
   3) старайтесь для списков указывать дефолтное значение в виде `[]`.
   4) создайте `extension` для модели, с функциями `toEntity` и для списка моделей.
3) в файл `lib/features/library/data/models/json_parsers/reference_model_converter.dart` добавьте `switch case` для вашей модели.
4) в файл `lib/features/library/data/repositories/resource_descriptors.dart` добавьте дескриптор вашей категории.
5) в файл `lib/features/library/data/repositories/library_category_repo_impl.dart` добавьте `switch case` для вашей model с переводом в entity
6) в папке `presentation/components/dnd_entity_info_cards` создайте widget, который будет отображать данные
7) в файл `lib/features/library/presentation/components/dnd_entity_card.dart` добавьте `else if` для вашей entity.
8) отобразите данные entity в вашем виджете
   1) для упрощения используйте виджеты в папке `lib/features/library/presentation/components/widely_used`.

Хорошим примером будет являться модели классов в `lib/features/library_class/presentation/presentation/components/dnd_entity_info_cards/dnd_class_info_card.dart`