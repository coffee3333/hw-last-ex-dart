import 'dart:io';

import 'package:dart_hw_last/controller/controllerLanguage.dart';
import 'package:dart_hw_last/controller/controllerTranslate.dart';
import 'package:dart_hw_last/model/getData.dart';
import 'package:dart_hw_last/model/model.dart';
import 'package:dart_hw_last/model/modelStroage.dart';

class Controller {
  CatFactsStorage catFactsStorage = CatFactsStorage();

  Map<String, String> getLanguage() {
    while (true) {
      print(
          '''<<< Please choose language >>> <<< Wahle Sie Sprachen bitte >>> <<< Выберите язык >>>
      (1) English (2) Deutch (3) Русский''');

      int answer = int.tryParse(stdin.readLineSync()!) ?? 1;

      if (answer >= 1 && answer <= 3) {
        ControllerLanguage language = ControllerLanguage();
        return language.getLanguage(answer)!;
      } else {
        print("---- Please enter only number, not out of range!!! ----");
        print(
            "---- Bitte geben Sie nur die Nummer ein, nicht außerhalb des zulässigen Bereichs!!! ----");
        print(
            "---- Пожалуйста, введите только номер, не выходящий за пределы диапазона!!! ----");
      }
    }
  }

  Future<CatFact> getFact(String language) async {
    GetData data = GetData();
    CatFact catFact = await data.getFacts();
    ControllerTranslate translater = ControllerTranslate();
    if (language == 'en') {
      return catFact;
    } else {
      return await translater.textTranslate(catFact, language);
    }
  }

  bool continueMenu(Map answers) {
    while (true) {
      int answer = int.tryParse(stdin.readLineSync()!) ?? 2;
      if (answer >= 1 && answer <= 2) {
        if (answer == 1) {
          return true;
        } else {
          return false;
        }
      } else {
        print(answers['warning']);
      }
    }
  }

  bool likeMenu(CatFact catFact, Map answers) {
    while (true) {
      print(answers['menu']);
      int answer = int.tryParse(stdin.readLineSync()!) ?? 4;
      if (answer >= 1 && answer <= 4) {
        if (answer == 1) {
          catFactsStorage.addToStorage(catFact);
          print(answers['saved']);
          return false;
        } else if (answer == 2) {
          if (catFactsStorage.catFactStorage.isNotEmpty) {
            catFactsStorage.printStorage();
            print(answers['continue']);
            if (continueMenu(answers)) {
              return false;
            } else {
              return true;
            }
          } else {
            print(answers['empty']);
            print(answers['continue']);
            if (continueMenu(answers)) {
              return false;
            } else {
              return true;
            }
          }
        } else if (answer == 3) {
          return false;
        } else {
          return true;
        }
      } else {
        print(answers['warning']);
      }
    }
  }
}
