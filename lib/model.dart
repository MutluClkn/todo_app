// ignore_for_file: public_member_api_docs, sort_constructors_first
class Model {
  int id;
  String title;
  DateTime date;
  String description;
  bool isDone;

  Model({
    required this.id,
    required this.title,
    required this.date,
    required this.description,
    required this.isDone,
  });

  // generate models
  static List<Model> generateModels() {
    return [
      Model(
        id: 1,
        title: 'Meeting',
        date: DateTime.now(),
        description: 'Meeting with Andrew',
        isDone: false,
      ),
      Model(
        id: 2,
        title: 'Design Review',
        date: DateTime.now(),
        description: 'Design review with the team',
        isDone: false,
      ),
      Model(
        id: 3,
        title: 'Meeting',
        date: DateTime.now(),
        description: 'Meeting with Andrew',
        isDone: false,
      ),
      Model(
        id: 4,
        title: 'Design Review',
        date: DateTime.now(),
        description: 'Design review with the team',
        isDone: false,
      ),
      Model(
        id: 5,
        title: 'Meeting',
        date: DateTime.now(),
        description: 'Meeting with Andrew',
        isDone: false,
      ),
      Model(
        id: 6,
        title: 'Design Review',
        date: DateTime.now(),
        description: 'Design review with the team',
        isDone: false,
      ),
      Model(
        id: 7,
        title: 'Meeting',
        date: DateTime.now(),
        description: 'Meeting with Andrew',
        isDone: false,
      ),
      Model(
        id: 8,
        title: 'Design Review',
        date: DateTime.now(),
        description: 'Design review with the team',
        isDone: false,
      ),
      Model(
        id: 9,
        title: 'Meeting',
        date: DateTime.now(),
        description: 'Meeting with Andrew',
        isDone: false,
      ),
      Model(
        id: 10,
        title: 'Design Review',
        date: DateTime.now(),
        description: 'Design review with the team',
        isDone: false,
      ),
      Model(
        id: 11,
        title: 'Meeting',
        date: DateTime.now(),
        description: 'Meeting with Andrew',
        isDone: false,
      ),
      Model(
        id: 12,
        title: 'Design Review',
        date: DateTime.now(),
        description: 'Design review with the team',
        isDone: false,
      ),
    ];
  }
}
