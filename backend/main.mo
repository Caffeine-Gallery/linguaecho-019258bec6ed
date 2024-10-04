import Func "mo:base/Func";

import Array "mo:base/Array";
import Iter "mo:base/Iter";
import Text "mo:base/Text";

actor {
  // Define a type for storing translations
  type Translation = {
    original: Text;
    translated: Text;
    language: Text;
  };

  // Stable variable to store translations
  stable var translations : [Translation] = [];

  // Function to add a new translation
  public func addTranslation(original: Text, translated: Text, language: Text) : async () {
    let newTranslation : Translation = {
      original = original;
      translated = translated;
      language = language;
    };
    translations := Array.append(translations, [newTranslation]);
  };

  // Function to get all translations
  public query func getTranslations() : async [Translation] {
    translations
  };

  // Function to clear all translations
  public func clearTranslations() : async () {
    translations := [];
  };
}
