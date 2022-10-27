import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'transactions_strings_pt.dart';

/// Callers can lookup localized strings with an instance of TransactionsStrings
/// returned by `TransactionsStrings.of(context)`.
///
/// Applications need to include `TransactionsStrings.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/transactions_strings.dart';
///
/// return MaterialApp(
///   localizationsDelegates: TransactionsStrings.localizationsDelegates,
///   supportedLocales: TransactionsStrings.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
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
/// be consistent with the languages listed in the TransactionsStrings.supportedLocales
/// property.
abstract class TransactionsStrings {
  TransactionsStrings(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static TransactionsStrings? of(BuildContext context) {
    return Localizations.of<TransactionsStrings>(context, TransactionsStrings);
  }

  static const LocalizationsDelegate<TransactionsStrings> delegate = _TransactionsStringsDelegate();

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
    Locale('pt')
  ];

  /// No description provided for @languageSymbol.
  ///
  /// In pt, this message translates to:
  /// **'pt_BR'**
  String get languageSymbol;

  /// No description provided for @appTitle.
  ///
  /// In pt, this message translates to:
  /// **'chalenge accelerate'**
  String get appTitle;

  /// No description provided for @mobile.
  ///
  /// In pt, this message translates to:
  /// **'Mobile'**
  String get mobile;

  /// No description provided for @detailsStart.
  ///
  /// In pt, this message translates to:
  /// **'São'**
  String get detailsStart;

  /// No description provided for @detailsTransactions.
  ///
  /// In pt, this message translates to:
  /// **'movimentações'**
  String get detailsTransactions;

  /// No description provided for @detailsEnd.
  ///
  /// In pt, this message translates to:
  /// **'disponíveis para visualização'**
  String get detailsEnd;

  /// No description provided for @filters.
  ///
  /// In pt, this message translates to:
  /// **'Filtros'**
  String get filters;

  /// No description provided for @transactions.
  ///
  /// In pt, this message translates to:
  /// **'Movimentações'**
  String get transactions;

  /// No description provided for @toTransfer.
  ///
  /// In pt, this message translates to:
  /// **'{from} para {to}'**
  String toTransfer(String from, String to);

  /// No description provided for @titleBottomSheetFilter.
  ///
  /// In pt, this message translates to:
  /// **'Filtros'**
  String get titleBottomSheetFilter;

  /// No description provided for @transactionTitleFilter.
  ///
  /// In pt, this message translates to:
  /// **'Título'**
  String get transactionTitleFilter;

  /// No description provided for @transactionStatusFilter.
  ///
  /// In pt, this message translates to:
  /// **'Status'**
  String get transactionStatusFilter;

  /// No description provided for @confirmFilter.
  ///
  /// In pt, this message translates to:
  /// **'Filtrar'**
  String get confirmFilter;

  /// No description provided for @transferedFrom.
  ///
  /// In pt, this message translates to:
  /// **'Transferido de'**
  String get transferedFrom;

  /// No description provided for @to.
  ///
  /// In pt, this message translates to:
  /// **'Para'**
  String get to;
}

class _TransactionsStringsDelegate extends LocalizationsDelegate<TransactionsStrings> {
  const _TransactionsStringsDelegate();

  @override
  Future<TransactionsStrings> load(Locale locale) {
    return SynchronousFuture<TransactionsStrings>(lookupTransactionsStrings(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_TransactionsStringsDelegate old) => false;
}

TransactionsStrings lookupTransactionsStrings(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'pt': return TransactionsStringsPt();
  }

  throw FlutterError(
    'TransactionsStrings.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
