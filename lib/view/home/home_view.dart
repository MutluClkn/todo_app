import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final models = Model.generateModels();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _topListTile(),
              _cards(),
              _listTitle(),
              _list(models),
            ],
          ),
        ),
      ),
    );
  }

  Padding _list(List<Model> models) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        shrinkWrap: true,
        itemCount: models.length,
        itemBuilder: (context, index) {
          final Model model = models[index];
          return DecoratedBox(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 209, 225, 238),
              borderRadius: BorderRadius.circular(30),
            ),
            child: ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.calendar_month,
                    size: 15,
                    color: Colors.grey,
                  ),
                  const Text(
                    'Today',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.lock_clock,
                    size: 15,
                    color: Colors.grey,
                  ),
                  Text(
                    DateFormat('hh:mm').format(model.date),
                    style: const TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ],
              ),
              subtitle: Text(
                model.title,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }

  Padding _listTitle() {
    return const Padding(
      padding: EdgeInsets.all(5),
      child: Text(
        'Today Tasks',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }

  Column _cards() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _card('Today', 6, Colors.yellow.shade200, Icons.alarm),
            ),
            Expanded(
              child: _card('Scheduled', 5, Colors.blue.shade200, Icons.add),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: _card('All', 14, Colors.green.shade200, Icons.lock_clock),
            ),
            Expanded(
              child: _card('Overdue', 3, Colors.red.shade200, Icons.dangerous),
            ),
          ],
        )
      ],
    );
  }

  ListTile _topListTile() {
    return ListTile(
      title: const Text(
        'Hello Mutlu',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: const Text('You have work today.'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.alarm)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_sharp))
        ],
      ),
    );
  }
}

Widget _card(String text, num count, Color color, IconData icon) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 23,
              child: Icon(
                icon,
                size: 30,
                color: color,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(count.toString(),
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            )
          ],
        ),
      ),
    ),
  );
}
