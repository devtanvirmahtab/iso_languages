# iso_languages

A Flutter package for working with ISO 639-1 language codes, providing English and native names for
languages in an easy-to-use API.

---

## Features

- Retrieve the English name of a language using its ISO code.
- Retrieve the native name of a language.
- Supports over 180 ISO 639-1 language codes.
- Lightweight and developer-friendly.

---

## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  iso_languages: ^1.0.0
```

## Usage

### Import the Package

  ```bash
    import 'package:iso_languages/iso_languages.dart';
   ```

### Example: Get Language Names

   ```bash
    void main() {
      // Get the English name of the language
      String englishName = isoLanguage(shortName: 'en');
      print('English Name: $englishName'); // Output: English
    
      // Get the native name of the language
      String nativeName = isoLanguage(shortName: 'ab', isNativeName: true);
      print('Native Name: $nativeName'); // Output: аҧсуа бызшәа
    
      // Handle unknown codes gracefully
      String unknown = isoLanguage(shortName: 'unknown');
      print('Unknown Code: $unknown'); // Output: (Empty String)
    }
   ```

