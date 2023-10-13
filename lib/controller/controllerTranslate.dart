import 'package:dart_hw_last/model/model.dart';
import 'package:translator/translator.dart';

class ControllerTranslate {
  Future<CatFact> textTranslate(CatFact catFact, String language) async {
    final translator = GoogleTranslator();
    var translation =
        await translator.translate(catFact.fact ?? "none", to: language);
    catFact.set(translation.toString());
    return catFact;
  }
}
