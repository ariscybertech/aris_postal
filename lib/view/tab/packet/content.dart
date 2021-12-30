import 'package:flutter/material.dart';

class PacketContent extends StatefulWidget {
  @override
  _PacketContentState createState() => new _PacketContentState();
}

class _PacketContentState extends State<PacketContent>
    with SingleTickerProviderStateMixin {
  TabController controller;
  int _currentID = 0;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: choices.length);
  }

  @override
  Widget build(BuildContext context) {
    controller.addListener(() {
      setState(() {
        _currentID = controller.index;
      });
    });
    return DefaultTabController(
      length: choices.length,
      child: Scaffold(
          body: Column(
        children: <Widget>[
          Container(
              child: Container(
            child: TabBar(
              controller: controller,
              isScrollable: true,
              indicatorColor: Colors.transparent,
              tabs: choices.map((Choice choice) {
                return Tab(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: choice.id == _currentID
                            ? Color.fromRGBO(0, 227, 129, 1.0)
                            : Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      children: <Widget>[
                        Icon(choice.icon,
                            color: choice.id == _currentID
                                ? Colors.white
                                : Color.fromRGBO(25, 22, 96, 1)),
                        Text(
                          choice.title,
                          style: TextStyle(
                              color: choice.id == _currentID
                                  ? Colors.white
                                  : Color.fromRGBO(25, 22, 96, 1)),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          )),
          Expanded(
              flex: 1,
              child: Container(
                color: Color.fromRGBO(246, 246, 249, 0.1),
                child: TabBarView(
                  controller: controller,
                  children: choices.map((Choice choice) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ChoiceCard(choice: choice),
                    );
                  }).toList(),
                ),
              ))
        ],
      )),
    );
  }
}

class Choice {
  const Choice({this.id, this.title, this.icon});
  final int id;
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(id: 0, title: 'CAR', icon: Icons.directions_car),
  const Choice(id: 1, title: 'BICYCLE', icon: Icons.directions_bike),
  const Choice(id: 2, title: 'BOAT', icon: Icons.directions_boat),
  const Choice(id: 3, title: 'BUS', icon: Icons.directions_bus),
  const Choice(id: 4, title: 'TRAIN', icon: Icons.directions_railway),
  const Choice(id: 5, title: 'WALK', icon: Icons.directions_walk),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
            Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}
