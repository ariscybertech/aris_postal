import 'package:flutter/material.dart';
import './packet/main.dart';

class TabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: SafeArea(
            child: TabBar(
              indicator: BoxDecoration(color: Colors.transparent),
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.account_balance_wallet,
                    size: 40,
                    color: Color.fromRGBO(25, 22, 96, 1),
                  ),
                ),
                Container(
                    child: Container(
                        height: 100,
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        decoration: new BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30)),
                          gradient: new LinearGradient(
                              colors: [Colors.orange[800], Colors.orangeAccent],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.white,
                          ),
                        ))),
                Tab(
                  icon: Icon(
                    Icons.perm_identity,
                    size: 40,
                    color: Color.fromRGBO(25, 22, 96, 1),
                  ),
                ),
              ],
              labelColor: Colors.yellow,
              unselectedLabelColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.red,
            ),
          ),
          body: TabBarView(
            children: [
              Packet(),
              Container(
                child: FlatButton(
                  onPressed: () {},
                ),
              ),
              Icon(Icons.adb),
            ],
          ),
        ),
      ),
    );
  }
}
