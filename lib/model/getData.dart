import 'package:dart_hw_last/model/model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetData {
  Future<CatFact> getFacts() async {
    CatFact catFact = CatFact(fact: "No data", lenght: 0);
    final httpPackageUrl = Uri.parse('https://catfact.ninja/fact');
    final httpPackageInfo = await http.get(httpPackageUrl);

    if (httpPackageInfo.statusCode == 200) {
      final httpPackageJson =
          jsonDecode(httpPackageInfo.body) as Map<String, dynamic>;
      catFact = CatFact(
          fact: httpPackageJson['fact'], lenght: httpPackageJson['length']);
    }
    return catFact;
  }
}
