import 'package:flutter/material.dart';

class AccountOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Account Options',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.arrow_forward, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              }),
        ],
      ),
      body: ListAccount(),
    );
  }
}

class ListAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(15),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Divider(
          height: 40,
          thickness: 1,
          color: Colors.transparent,
        ),
        Container(
          padding: EdgeInsets.only(bottom: 20),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  // Icon(
                  //   Icons.account_balance_wallet,
                  //   color: Colors.blue,
                  // )
                  CircleAvatar(
                    backgroundColor: Color(0xffEBF3F4),
                    radius: 30,
                    child: Icon(Icons.account_balance_wallet),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 25,
                  )
                ],
              ),
              Column(
                children: [
                  Text('Pay a Bill',
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
        Container(
          padding: EdgeInsets.only(bottom: 20),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  // Icon(
                  //   Icons.account_balance_wallet,
                  //   color: Colors.blue,
                  // )
                  CircleAvatar(
                    backgroundColor: Color(0xffEBF3F4),
                    radius: 30,
                    child: Icon(Icons.send),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 25,
                  )
                ],
              ),
              Column(
                children: [
                  Text('Move Money',
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
        Container(
          padding: EdgeInsets.only(bottom: 20),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  // Icon(
                  //   Icons.account_balance_wallet,
                  //   color: Colors.blue,
                  // )
                  CircleAvatar(
                    backgroundColor: Color(0xffEBF3F4),
                    radius: 30,
                    child: Icon(
                      Icons.photo_camera,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 25,
                  )
                ],
              ),
              Column(
                children: [
                  Text('Remote cheque deposite',
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
        //divider

        Divider(
          height: 30,
          thickness: 1,
          color: Colors.transparent,
        ),

        Container(
          padding: EdgeInsets.only(bottom: 20),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  // Icon(
                  //   Icons.account_balance_wallet,
                  //   color: Colors.blue,
                  // )
                  CircleAvatar(
                    backgroundColor: Color(0xffF6FAFC),
                    radius: 30,
                    child: Icon(
                      Icons.calendar_today_sharp,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 25,
                  )
                ],
              ),
              Column(
                children: [
                  Text('Shedule Payment',
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
        Container(
          padding: EdgeInsets.only(bottom: 20),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  // Icon(
                  //   Icons.account_balance_wallet,
                  //   color: Colors.blue,
                  // )
                  CircleAvatar(
                    backgroundColor: Color(0xffF6FAFC),
                    radius: 30,
                    child: Icon(
                      Icons.watch_later,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 25,
                  )
                ],
              ),
              Column(
                children: [
                  Text('Shedule transfers',
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
        Container(
          padding: EdgeInsets.only(bottom: 20),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  // Icon(
                  //   Icons.account_balance_wallet,
                  //   color: Colors.blue,
                  // )
                  CircleAvatar(
                    backgroundColor: Color(0xffF6FAFC),
                    radius: 30,
                    child: Icon(
                      Icons.access_time_rounded,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 25,
                  )
                ],
              ),
              Column(
                children: [
                  Text('Automated saving',
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
          color: Color(0xffF6FAFC),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  // Icon(
                  //   Icons.account_balance_wallet,
                  //   color: Colors.blue,
                  // )
                ],
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
