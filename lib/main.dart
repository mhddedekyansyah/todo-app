import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/models/task_model.dart';
import 'package:todo_app/widgets/go_premium.dart';
import 'package:todo_app/widgets/task.dart';

void main() {
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Todo App',
        home: Scaffold(
          appBar: _buildAppBar(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GoPremium(),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Text('Tasks' , style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),),
              ),
              Task()
            ],
          ),
        bottomNavigationBar: _buildBottomNavBar(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: (){},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Icon(Icons.add),
          ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        ),
    );
  }
}


AppBar _buildAppBar(){
  return AppBar(
    title: Text('Hi, Dude!', style: GoogleFonts.poppins(
      color: Colors.black,
      ),
    ),
    actions: [
      Icon(Icons.more_vert,color: Colors.black54,)
    ],
    elevation: 0,
    backgroundColor: Colors.white,
    leading: Container(
      margin: EdgeInsets.only(left: 15, top: 10, bottom: 5),
       decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage('assets/profile.jpg'),
            fit: BoxFit.cover
            )
        ),
    ),
  );
}

Widget _buildBottomNavBar(){
  return BottomNavigationBar(
    selectedItemColor: Colors.black,
    showUnselectedLabels: false,
    showSelectedLabels: false,
    unselectedItemColor: Colors.grey,
    type: BottomNavigationBarType.fixed,
    iconSize: 30,
    items: [
        BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home'
      ),
         BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'User'
      )
    ]
  );
}

