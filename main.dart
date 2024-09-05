import 'dart:io';

// Login, damit der Fortschritt online gespeichert wird.
// Anzeigen von Code Snippets, bei denen gesagt werden soll, was rauskommt.
// Ein Exerciseboard, auf dem man sieht, wie viele und welche Aufgaben man gemacht hat.

void main() {
  // Login, damit der Fortschritt online gespeichert wird.
  // Anzeigen von Code Snippets, bei denen gesagt werden soll, was rauskommt.
  // Ein Exerciseboard, auf dem man sieht, wie viele und welche Aufgaben man gemacht hat.
  print("Willkommen bei Dart Fast CLI.");
  print(
      "Hier wird dir Code gezeigt, von dem du sagen sollst, ob er richtig oder falsch ist.");

  bool isUserLoggedIn = false;

  // Wie lange läuft das Programm?
  bool isProgramRunning = true;
  while (isProgramRunning) {
    if (isUserLoggedIn) {
      print("Was möchtest du tun? Programm (b)eenden, (S)nippet anzeigen.");
    } else {
      print(
          "Was möchtest du tun? Programm (b)eenden, (L)ogin, (S)nippet anzeigen.");
    }
    // Eingabe des Benutzers.
    String userChoiceInput = stdin.readLineSync()!;

    switch (userChoiceInput) {
      case "b" || "B":
        isProgramRunning = false;
      // Benutzer soll sich mit Username und Passwort einloggen können.
      case "l" || "L":
        // Benutzername und Passwort abfragen.
        // Schauen, ob es mit gespeicherten Daten übereinstimmt.
        // Wenn ja, dann ist Benutzer eingeloggt.
        // Wenn nein, entsprechende Ausgabe machen.
        String expectedUserName = "kai";
        String expecedUserPassword = "passwort";

        String inputUserName = "";
        String inputUserPassword = "";

        // Benutzername und Passwort abfragen.
        stdout.write("Bitte gib deinen Benutzername ein: ");
        inputUserName = stdin.readLineSync()!;
        stdout.write("Bitte gib dein Passwort ein: ");
        inputUserPassword = stdin.readLineSync()!;

        // Schauen, ob es mit gespeicherten Daten übereinstimmt.
        bool isLoginDataCorrect = inputUserName == expectedUserName &&
            inputUserPassword == expecedUserPassword;

        if (isLoginDataCorrect) {
          print("Du hast dich erfolgreich eingeloggt");
          isUserLoggedIn = true;
        } else {
          print("Du hast leider deine Daten falsch eingegeben");
          isUserLoggedIn = false;
        }

        print("");
      case "s" || "S":
        print("Was gibt der folgende Code aus?");
        print('void main() { print("Hallo Batch 7")}');
        print("");
    }

    // Anzeige abhängig von Eingabe.
  }
}
