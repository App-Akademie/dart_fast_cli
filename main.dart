import 'dart:io';

void main() {
  // Login, damit der Fortschritt online gespeichert wird.
  // Anzeigen von Code Snippets, bei denen gesagt werden soll, was rauskommt.
  // Ein Exerciseboard, auf dem man sieht, wie viele und welche Aufgaben man gemacht hat.
  print("Willkommen bei Dart Fast CLI.");
  print(
      "Hier wird dir Code gezeigt, von dem du sagen sollst, ob er richtig oder falsch ist.");
  // Wie lange läuft das Programm?
  bool isProgramRunning = true;
  while (isProgramRunning) {
    print(
        "Was möchtest du tun? Programm (b)eenden, (L)ogin, (S)nippet anzeigen.");
    // Eingabe des Benutzers.
    String userChoiceInput = stdin.readLineSync()!;

    switch (userChoiceInput) {
      case "b" || "B":
        isProgramRunning = false;
      // Benutzer soll sich mit Username und Passwort einloggen können.
      case "l" || "L":
        stdout.write("Bitte gib deinen Benutzername ein: ");
        stdin.readLineSync()!;
        stdout.write("Bitte gib dein Passwort ein: ");
        stdin.readLineSync();

        print("");
      case "s" || "S":
        print("Was gibt der folgende Code aus?");
        print('void main() { print("Hallo Batch 7")}');
        print("");
    }

    // Anzeige abhängig von Eingabe.
  }
}
