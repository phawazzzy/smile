class JokeBrain {
  int _jokeNumber = 0;

  List<String> jokes = [
    "I don't mind making jokes, but I don't want to look like one",
    "Electricity is actually made up of extremely tiny particles called electrons, that you cannot see with the naked eye unless you have been drinking.",
    "What's so unpleasant about being drunk?"
        "Ask a glass of water",
    "Everyone has a sense of humor. If you don't laugh at jokes, you probably laugh at opinions",
    "In this story I am the poet You're the poetry",
    "Ah, Signor Halt,' he said uncertainly, 'you are making a joke, yes?''He is making a joke, no,' Will said. 'But he likes to think he is making a joke, yes",
    "I don't mind making jokes, but I don't want to look like one I don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like oneI don't mind making jokes, but I don't want to look like one",
    "I don't mind making jokes, but I don't want to look like one",
    "I don't mind making jokes, but I don't want to look like one",
    "I don't mind making jokes, but I don't want to look like one",
    "I don't mind making jokes, but I don't want to look like one",
    "I don't mind making jokes, but I don't want to look like one",
    "I don't mind making jokes, but I don't want to look like one",
  ];
  void incrementJoke(index) {
    _jokeNumber = index;
    // print(_jokeNumber);
  }

  String getNextQuestion() {
    return jokes[_jokeNumber];
  }
}
