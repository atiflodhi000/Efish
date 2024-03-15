import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final firbaseref = FirebaseDatabase.instance.ref('post');
  GlobalKey<ScaffoldState> _gl=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        key: _gl,
        endDrawer: Drawer(
         // backgroundColor: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
          ListTile(
          title: Text('Drawer Item 1'),
          onTap: () {
            // Add functionality for this item
          },
        ),
        ListTile(
          title: Text('Drawer Item 2'),
          onTap: () {
            // Add functionality for this item
          },
        ),

            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                height: 230,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 5, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // Offset in x and y direction
                      ),
                    ],
                    color: Color(0xff47409D),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(60),bottomLeft: Radius.circular(60))
                ) ,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 0,left: 20),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 40,
                              child: CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/10080749/pexels-photo-10080749.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.menu),
                            color: Colors.white,
                            onPressed: (){
                              _gl.currentState!.openEndDrawer();
                            },
                          ),
                        ],
                      ),
                    ),
                    //SizedBox(height: 35,),

                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20),
                      child: Text(
                          "Salman ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.77119255065918,
                            fontWeight: FontWeight.w700,
                          )
                      ),
                    )
                    //SizedBox(height: 35,),

                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                            "MON",
                            style: TextStyle(
                              fontSize: 12.436442375183105,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff101010)
                            )
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black12,
                            border: Border.all(
                              width: 5,
                              color: Colors.white
                            )

                          ),

                        ),
                      ],
                    ),
                    SizedBox(width: 18,),
                    Column(
                      children: [
                        Text(
                            "TUE",
                            style: TextStyle(
                                fontSize: 12.436442375183105,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff101010)
                            )
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black12,
                              border: Border.all(
                                  width: 5,
                                  color: Colors.white
                              )

                          ),

                        ),
                      ],
                    ),
                    SizedBox(width: 18,),
                    Column(
                      children: [
                        Text(
                            "WED",
                            style: TextStyle(
                                fontSize: 12.436442375183105,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff101010)
                            )
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff47409D),
                              border: Border.all(
                                  width: 5,
                                  color: Colors.white
                              )

                          ),

                        ),
                      ],
                    ),
                    SizedBox(width: 18,),
                    Column(
                      children: [
                        Text(
                            "THU",
                            style: TextStyle(
                                fontSize: 12.436442375183105,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff101010)
                            )
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black12,
                              border: Border.all(
                                  width: 5,
                                  color: Colors.white
                              )

                          ),

                        ),
                      ],
                    ),
                    SizedBox(width: 18,),
                    Column(
                      children: [
                        Text(
                            "FRI",
                            style: TextStyle(
                                fontSize: 12.436442375183105,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff101010)
                            )
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black12,
                              border: Border.all(
                                  width: 5,
                                  color: Colors.white
                              )

                          ),

                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      //padding: EdgeInsets.only(left: 30),
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 3, // Spread radius
                            blurRadius: 3, // Blur radius
                            offset: Offset(0, 4), // Offset in x and y direction
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                         // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Text(
                                    "Temperature",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff040404)
                                    )
                                ),
                                SizedBox(width: 7,),
                                Image(image: AssetImage('images/thermo.jpg'))
                              ],
                            ),
                            SizedBox(height: 20,),
                            Expanded(
                              child: FirebaseAnimatedList(query: firbaseref,
                                  itemBuilder: (context,snapshot,animation,index){
                                    return Text(
                                        snapshot.child('temp').value.toString(),
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff007AFF)
                                        )
                                    );
                                  }),
                            ),
                            //SizedBox(height: 10,),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      //padding: EdgeInsets.only(left: 30),
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 3, // Spread radius
                              blurRadius: 3, // Blur radius
                              offset: Offset(0, 4), // Offset in x and y direction
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Text(
                                    "Pressure",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff040404)
                                    )
                                ),
                                SizedBox(width: 7,),
                                Image(image: AssetImage('images/prs.jpg'))
                              ],
                            ),
                            SizedBox(height: 20,),
                            Expanded(
                              child: FirebaseAnimatedList(query: firbaseref,
                                  itemBuilder: (context,snapshot,animation,index){
                                    return Text(
                                        snapshot.child('pres').value.toString(),
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff007AFF)
                                        )
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      //padding: EdgeInsets.only(left: 30),
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 3, // Spread radius
                              blurRadius: 3, // Blur radius
                              offset: Offset(0, 4), // Offset in x and y direction
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Text(
                                    "PH",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff040404)
                                    )
                                ),
                                SizedBox(width: 70,),
                                Image(image: AssetImage('images/water.jpg'))
                              ],
                            ),
                            SizedBox(height: 20,),
                            Expanded(
                              child: FirebaseAnimatedList(query: firbaseref,
                                  itemBuilder: (context,snapshot,animation,index){
                                    return Text(
                                        snapshot.child('ph').value.toString(),
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff007AFF)
                                        )
                                    );
                                  }),
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                     // padding: EdgeInsets.only(left: 15),
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 3, // Spread radius
                              blurRadius: 3, // Blur radius
                              offset: Offset(0, 4), // Offset in x and y direction
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Row(

                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(

                                      "Methane",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff040404)
                                      )
                                  ),
                                ),
                                SizedBox(width: 40,),
                                Image(

                                    image: AssetImage('images/meth.jpg'))
                              ],
                            ),
                            SizedBox(height: 20,),
                            Expanded(
                              child: FirebaseAnimatedList(query: firbaseref,
                                  itemBuilder: (context,snapshot,animation,index){
                                    return Text(
                                        snapshot.child('meth').value.toString(),
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff007AFF)
                                        )
                                    );
                                  }),
                            ),


                          ],
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
    );
  }
}
