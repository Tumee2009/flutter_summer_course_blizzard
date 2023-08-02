import 'Char_model.dart';

class TaskModel {
  String? question;
  String? pathImage;
  String? answer;
  bool? isDone = false;
  bool? isFull = false;
  List<CharModel> puzzles = [];
  List<String> arrayButtons = [];
  TaskModel({
    required this.pathImage,
    required this.question,
    required this.answer,
    this.arrayButtons = const [],
  });
  void setWordFindChar(List<CharModel> puzzles) {
    this.puzzles = puzzles;
  }

  void setIsDone() {
    isDone = true;
  }

  bool fieldCompleteCorrect() {
    bool complete =
        puzzles.where((puzzle) => puzzle.currentValue == null).isEmpty;
    isFull = false;
    return complete;
    String answeredString  = puzzles.map((puzzle) => puzzle.currentValue).join("");
    answeredString == answer;
    return fieldCompleteCorrect();
  }
   TaskModel clone(){
    TaskModel(pathImage: pathImage, question: question, answer: answer);
    return clone();
   }
}
