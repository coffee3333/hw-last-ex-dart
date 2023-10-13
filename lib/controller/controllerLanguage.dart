class ControllerLanguage {
  Map<int, Map<String, String>> languages = {
    1: {
      "welcome": "<<< +++ Welcome +++ >>>",
      "somefact": "<<< +++ Here is some fact about Cats +++ >>>\n",
      "menu":
          "<<<< ++++ Please choose options ++++ >>>>\n(1) Like (2) List of liked (3) Next (4) Exit",
      "continue":
          "<<<< +++++ Do you wanna continue??? (1) yes / (2) no  +++++ >>>>",
      "warning": "---- Please enter only number, not out of range!!! ----",
      "lang": "en",
      "empty": "<<<<    ---  The list is empty  ---   >>>>",
      "saved": "<<<< ----- Successfully saved ----- >>>>"
    },
    2: {
      "welcome": "<<< +++ Willkommen +++ >>>",
      "somefact": "<<< +++ Hier sind einige Fakten über Katzen +++ >>>\n",
      "menu":
          "<<<< ++++ Bitte wählen Sie Optionen aus ++++ >>>>\n(1) Gefällt (2) Liste der gemochten (3) Nächste (4) Ende",
      "continue":
          "<<<< +++++ Willst du weitermachen??? (1) ja / (2) nein +++++ >>>>",
      "warning":
          "---- Bitte geben Sie nur die Nummer ein, nicht außerhalb des zulässigen Bereichs!!! ----",
      "lang": "de",
      "empty": "<<<<    ---  Die Liste ist leer  ---   >>>>",
      "saved": "<<<< ----- Erfolgreich gespeichert----- >>>>"
    },
    3: {
      "welcome": "<<< +++ Добро пожаловать +++ >>>",
      "somefact": "<<< +++ Вот несколько фактов о кошках +++ >>>\n",
      "menu":
          "<<<< ++++ Пожалуйста, выберите варианты ++++ >>>>\n(1) Понравился (2) Показать список понравившихся фактов (3) Далее (4) Выйти",
      "continue": "<<<< +++++ Хотите продолжить??? (1) да / (2) нет +++++ >>>>",
      "warning":
          "---- Пожалуйста, введите только номер, не выходящий за пределы диапазона!!! ----",
      "lang": "ru",
      "empty": "<<<<    ---  Список пуст  ---   >>>>",
      "saved": "<<<< ----- Успешно сохранен ----- >>>>"
    }
  };

  Map<String, String>? getLanguage(languegeNumber) => languages[languegeNumber];
}
