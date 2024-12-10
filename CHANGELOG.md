## 1.0.0

### Initial release

- **Added functionality** to work with ISO 639-1 language codes.
- **Supported features**:
    - Retrieve the **language name** based on its ISO code.
    - Retrieve the **native language name** based on its ISO code.
    - Utility functions to fetch language details for both common and native names.

### Example usage:
```dart
import 'package:iso_languages/iso_languages.dart';

void main() {
  String languageName = isoLanguage(shortName: 'en'); // Output: English
  String nativeName = isoLanguage(shortName: 'en', isNativeName: true); // Output: English (native name)
  print(languageName);
}