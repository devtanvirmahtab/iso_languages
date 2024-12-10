import 'iso_language_list.dart';

String isoLanguage({
  required String shortName,
  bool isNativeName = false,
}) {
  final language = languageList[shortName.toLowerCase()];

  if (language == null) {
    return '';
  }

  return isNativeName ? language['nativeName'] ?? '' : language['name'] ?? '';
}