import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData(

        primaryColor: Color(0xFF34495e)
      ),

    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('Wallet'),
        actions: <Widget>[

        ],
        elevation: 0,
        backgroundColor: Color(0xFF2c3e50),
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('03312480169'),
              accountName: Text('Umar Khan'),
              currentAccountPicture: CircleAvatar(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image(
                  image: NetworkImage("https://s3.amazonaws.com/uifaces/faces/tw"),
                ),
                ),
              ),
            ),

            ListTile(
              title: Text('Profile'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Transactions'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Promotions'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Manage Funds'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Investments'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Settings'),
              onTap: (){},
            ),
          ],
        ),
      ),

      body: Container(
        color: Color(0xFF95a5a6),
        padding: EdgeInsets.only(bottom: 100,),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(


          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFF2c3e50),
                  borderRadius: BorderRadius.only(
                    bottomLeft:Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),

                ),

                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                            Text('Account Balance',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),

                        ],

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Rs. 5,000',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF2c3e50),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              child: Text("+4.5%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      SizedBox(height: 65,),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Row(
                        children: <Widget>[

                          Text('32.35 USD',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),

                          ),

                        ],
                      ),


                    ),

                    ],
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 35,

                  ),
                  width: MediaQuery.of(context).size.width,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFc0392b),
                        Color(0xFFe74c3c)
                      ],
                    ),
                  ),
                ),
              ),


              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,
                vertical: 20,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                    child:RaisedButton.icon(
                        onPressed:(){
                          } ,
                        icon: Icon(FontAwesomeIcons.levelUpAlt, color: Color(0xFF2980b9),
                        ),
                        label: Text('Send'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                    ),
                    ),
                    Expanded(
                    child:RaisedButton.icon(
                      onPressed:(){
                      } ,
                      icon: Icon(FontAwesomeIcons.levelDownAlt, color: Color(0xFF2980b9),
                      ),
                      label: Text('Receive'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [

          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.userAlt),
            title: Text('Account'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bullhorn),
            title: Text('Promotions'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.tags),
            title: Text('Discounts'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.plus),
            title: Text('Cash'),
          ),
        ],
        currentIndex: 0,
        onTap:(i) {},
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Color(0xFFc0392b),
        backgroundColor: Color(0xFF34495e),
      ),
    );
  }
}
