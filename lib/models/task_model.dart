
import 'package:flutter/material.dart';

class TaskModel{
  IconData? icon;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  int? left;
  int? done;
  List<Map<String, dynamic>>? desc;
  bool? isLast;

  TaskModel({this.desc,this.icon, this.title, this.bgColor, this.iconColor, this.btnColor, this.left, this.done, this.isLast = false});

  static generateTask(){
    return [
      TaskModel(
        icon: Icons.person_rounded, 
        title: 'Personal', 
        bgColor: Colors.amberAccent.shade100, 
        iconColor: Colors.amberAccent.shade700, 
        btnColor: Colors.amberAccent, 
        left: 4, 
        done: 1,
        desc: [
          {
            'time': '9:00 am',
            'title': 'Go for a walk with dog',
            'slot': '9:00 - 10:00 am',
            'tlColor': Colors.redAccent.shade700,
            'bgcolor': Colors.redAccent.shade100
          },
          {
            'time': '11:00 am',
            'title': '',
            'slot': '',
            'tlColor': Colors.grey.withOpacity(.1),
          },
          {
            'time': '12:00 am',
            'title': '',
            'slot': '',
            'tlColor': Colors.grey.withOpacity(.1),
          },
          {
            'time': '1:00 pm',
            'title': 'Meeting with client',
            'slot': '1:00 - 2:00 pm',
            'tlColor': Colors.amberAccent.shade700,
            'bgcolor': Colors.amberAccent.shade100
          },
          {
            'time': '3:00 pm',
            'title': 'Meeting with client',
            'slot': '3:00 - 4:00 pm',
            'tlColor': Colors.amberAccent.shade700,
            'bgcolor': Colors.amberAccent.shade100
          },
          {
            'time': '5:00 pm',
            'title': 'Workout',
            'slot': '5:00 - 6:00 pm',
            'tlColor': Colors.blueAccent.shade700,
            'bgcolor': Colors.blueAccent.shade100
          },
        ]
      ),
      TaskModel(icon: Icons.cases_rounded, title: 'Work', bgColor: Colors.blueAccent.shade100, iconColor: Colors.blueAccent.shade700, btnColor: Colors.blueAccent, left: 3, done: 4),
      TaskModel(icon: Icons.favorite_rounded, title: 'Health', bgColor: Colors.redAccent.shade100, iconColor: Colors.redAccent.shade700, btnColor: Colors.redAccent, left: 2, done: 3),
      TaskModel(isLast: true)
    ];
  }
}