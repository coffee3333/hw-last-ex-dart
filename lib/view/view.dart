import 'package:dart_hw_last/controller/controller.dart';
import 'package:dart_hw_last/model/model.dart';

class View {
  Controller controller = Controller();

  void runView() async {
    Map<String, String> answers = controller.getLanguage();
    print(answers['welcome']);

    while (true) {
      print(answers['somefact']);
      CatFact catFact = await controller.getFact(answers['lang'] ?? 'en');
      print("${catFact.fact}\n");
      if (controller.likeMenu(catFact, answers)) {
        break;
      }
    }
  }
}
