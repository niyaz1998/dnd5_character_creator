
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations returned
/// by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru')
  ];

  /// No description provided for @dnd.
  ///
  /// In ru, this message translates to:
  /// **'DnD5e'**
  String get dnd;

  /// No description provided for @builder.
  ///
  /// In ru, this message translates to:
  /// **'Персонаж'**
  String get builder;

  /// No description provided for @library.
  ///
  /// In ru, this message translates to:
  /// **'Библиотека'**
  String get library;

  /// No description provided for @settings.
  ///
  /// In ru, this message translates to:
  /// **'Настройки'**
  String get settings;

  /// No description provided for @choiceListTitle.
  ///
  /// In ru, this message translates to:
  /// **'{type}. Choose {amount} from'**
  String choiceListTitle(String type, int amount);

  /// No description provided for @isUsedForSkills.
  ///
  /// In ru, this message translates to:
  /// **'Основа для навыков'**
  String get isUsedForSkills;

  /// No description provided for @abbreviationIs.
  ///
  /// In ru, this message translates to:
  /// **'Сокращение: {abbreviation}'**
  String abbreviationIs(String abbreviation);

  /// No description provided for @startingProficiencies.
  ///
  /// In ru, this message translates to:
  /// **'Стартовые умения'**
  String get startingProficiencies;

  /// No description provided for @startingEquipment.
  ///
  /// In ru, this message translates to:
  /// **'Стартовое снаряжение'**
  String get startingEquipment;

  /// No description provided for @personality.
  ///
  /// In ru, this message translates to:
  /// **'Личность'**
  String get personality;

  /// No description provided for @languageType.
  ///
  /// In ru, this message translates to:
  /// **'Редкость языка {rarity}'**
  String languageType(String rarity);

  /// No description provided for @languageScript.
  ///
  /// In ru, this message translates to:
  /// **'Использует {script} письменность'**
  String languageScript(String script);

  /// No description provided for @typicalSpeakers.
  ///
  /// In ru, this message translates to:
  /// **'Список рас, говорящих на языке: {speakers}'**
  String typicalSpeakers(String speakers);

  /// No description provided for @proficiencyGeneralType.
  ///
  /// In ru, this message translates to:
  /// **'Общая категория умения: {type}'**
  String proficiencyGeneralType(String speakers);

  /// No description provided for @classesStartsWithProficiency.
  ///
  /// In ru, this message translates to:
  /// **'Является стартовым умением классов(а):'**
  String get classesStartsWithProficiency;

  /// No description provided for @noClassStartsWithProficiency.
  ///
  /// In ru, this message translates to:
  /// **'Не является стартовым умением ни одного класса'**
  String get noClassStartsWithProficiency;

  /// No description provided for @racesStartsWithProficiency.
  ///
  /// In ru, this message translates to:
  /// **'Является стартовым умением рас(ы):'**
  String get racesStartsWithProficiency;

  /// No description provided for @noRaceStartsWithProficiency.
  ///
  /// In ru, this message translates to:
  /// **'Не является стартовым умением ни одной расы'**
  String get noRaceStartsWithProficiency;

  /// No description provided for @skillBasedOn.
  ///
  /// In ru, this message translates to:
  /// **'Зависит от'**
  String get skillBasedOn;

  /// No description provided for @hitDieSize.
  ///
  /// In ru, this message translates to:
  /// **'Размер кости 1d{hitDie}'**
  String hitDieSize(String hitDie);

  /// No description provided for @subclasses.
  ///
  /// In ru, this message translates to:
  /// **'Подклассы'**
  String get subclasses;

  /// No description provided for @savingThrows.
  ///
  /// In ru, this message translates to:
  /// **'Спасброски'**
  String get savingThrows;

  /// No description provided for @classAbleToCastFrom.
  ///
  /// In ru, this message translates to:
  /// **'Класс способен использовать заклинания с {level}-го уровня'**
  String classAbleToCastFrom(String level);
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
