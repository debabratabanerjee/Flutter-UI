import 'package:flutter/material.dart';
import 'package:gyt_ui_review/accountOption.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'trial again',
      home:
          Scaffold(backgroundColor: Color(0xff025581), body: new MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xff025581),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Investments account'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountOption()),
              );
            }),
      ),
      body: new ListView(
        children: <Widget>[
          //scroll cards
          new Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            padding: EdgeInsets.fromLTRB(10, 30, 1, 20),
            height: 220.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(1.8, 0.1),
                      colors: <Color>[Colors.white, Colors.lightBlueAccent],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Maturing on Apr 15, 2020",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "\$20,000.00",
                              style: TextStyle(
                                  fontSize: 45,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "Current Balance",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Icon(
                              Icons.access_alarm_rounded,
                              size: 50,
                              color: Colors.yellowAccent,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  width: 350.0,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    //color: Colors.white,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(1.8,
                          0.1), // 10% of the width, so there are ten blinds.
                      colors: <Color>[Colors.white, Colors.lightBlueAccent],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Invest Rate: 2.0%",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "\$5,000.00",
                              style: TextStyle(
                                  fontSize: 45,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "Current Balance",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Icon(
                              Icons.access_alarm_rounded,
                              size: 50,
                              color: Colors.yellowAccent,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  width: 350.0,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.red,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Trail",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "20 ",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  width: 350.0,
                ),
                const SizedBox(
                  width: 20.0,
                ),
              ],
            ),
          ),

          //tab system
          new Container(
            height: 80,
            decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                )),
            child: new TabBar(
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.yellow[700], width: 5.0),
              ),
              indicatorPadding: EdgeInsets.symmetric(horizontal: 20.0),
              labelColor: Theme.of(context).accentColor,
              labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              unselectedLabelColor: Colors.black,
              controller: _controller,
              tabs: [
                Tab(text: "Activity"),
                Tab(text: "Summary"),
              ],
            ),
          ),

          new Container(
            height: 460,
            child: new TabBarView(
              controller: _controller,
              children: [
                // _buildList(key: "key1", string: "List1: "),
                // _buildList(key: "key2", string: "List2: "),
                ListViewBuilder(),
                ListViewSummary(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: Icon(Icons.list),
                trailing: Text(
                  "Activity",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("Other Items $index"));
          }),
    );
  }
}

class ListViewSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(15),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20),
            // height: 30,
            child: Row(
              children: <Widget>[
                Text(
                  "Account Details",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w900,
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 40,
            thickness: 1,
            color: Colors.transparent,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Name',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black38,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
                Column(
                  children: [
                    Text('Investment Account',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 60,
            thickness: 1,
            color: Colors.grey[200],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Account Type',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black38,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
                Column(
                  children: [
                    Text('TFSA GIC',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 60,
            thickness: 1,
            color: Colors.grey[200],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Contract ID',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black38,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
                Column(
                  children: [
                    Text('994365922',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 60,
            thickness: 1,
            color: Colors.grey[200],
          ),
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  "Funding Details",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w900,
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 40,
            thickness: 1,
            color: Colors.transparent,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Principal Investment',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black38,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
                Column(
                  children: [
                    Text('\$20,000',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 60,
            thickness: 1,
            color: Colors.grey[200],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Interest Rate',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black38,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
                Column(
                  children: [
                    Text('1.5%,1.75%,2.75%',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 60,
            thickness: 1,
            color: Colors.grey[200],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Started on',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black38,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
                Column(
                  children: [
                    Text('Apr 15,2018',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 60,
            thickness: 1,
            color: Colors.grey[200],
          ),
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  "Account Details",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w900,
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 40,
            thickness: 1,
            color: Colors.transparent,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Name',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black38,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
                Column(
                  children: [
                    Text('Investment Account',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 60,
            thickness: 1,
            color: Colors.grey[200],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Account Type',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black38,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
                Column(
                  children: [
                    Text('TFSA GIC',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 60,
            thickness: 1,
            color: Colors.grey[200],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Contract ID',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black38,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
                Column(
                  children: [
                    Text('994365922',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 60,
            thickness: 1,
            color: Colors.grey[200],
          ),
        ],
      ),
    );
  }
}

//for automated loops list->

// Widget _buildList({String key, String string}) {
//   return ListView.builder(
//     key: PageStorageKey(key),
//     itemBuilder: (_, i) => ListTile(title: Text("${string} ${i}")),
//   );
// }

// Widget _firstScreen(){
//   return ListView.builder(itemBuilder: itemBuilder)
// }

