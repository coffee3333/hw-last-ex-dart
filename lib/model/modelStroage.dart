import 'package:dart_hw_last/model/model.dart';

class CatFactsStorage {
  List<CatFact> catFactStorage = [];
  List<CatFact> getStorage() => catFactStorage;
  addToStorage(CatFact catFact) => catFactStorage.add(catFact);
  printStorage() => catFactStorage.asMap().forEach((index, element) {
        print("#${index + 1} ${element.fact}\n");
      });
}
