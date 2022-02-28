import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskModel{
  IconData? icon;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  int? left;
  int? done;
  bool? isLast;

  TaskModel({this.icon, this.title, this.bgColor, this.iconColor, this.btnColor, this.left, this.done, this.isLast = false});

  static generateTask(){
    return [
      TaskModel(icon: Icons.person_rounded, title: 'Personal', bgColor: Colors.amberAccent.shade100, iconColor: Colors.amberAccent.shade700, btnColor: Colors.amberAccent, left: 4, done: 1),
      TaskModel(icon: Icons.cases_rounded, title: 'Work', bgColor: Colors.blueAccent.shade100, iconColor: Colors.blueAccent.shade700, btnColor: Colors.blueAccent, left: 3, done: 4),
      TaskModel(icon: Icons.chair_rounded, title: 'Weekend', bgColor: Colors.greenAccent.shade100, iconColor: Colors.greenAccent.shade700, btnColor: Colors.greenAccent, left: 4, done: 1),
      TaskModel(icon: Icons.favorite_rounded, title: 'Health', bgColor: Colors.redAccent.shade100, iconColor: Colors.redAccent.shade700, btnColor: Colors.redAccent, left: 2, done: 3),
      TaskModel(isLast: true)
    ];
  }
}