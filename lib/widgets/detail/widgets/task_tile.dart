import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/models/task_model.dart';

class TaskTile extends StatelessWidget {

  const TaskTile({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
              Text('Tasks', style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.1),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Text('Timeline', style: GoogleFonts.poppins(
                      color: Colors.grey.shade700
                    ),),
                    const SizedBox(width: 2,),
                    const Icon(Icons.keyboard_arrow_down_outlined)
                  ],
                ),
              )
            ],
      ),
    );
  }
}