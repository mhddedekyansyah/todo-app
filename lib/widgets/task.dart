import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/models/task_model.dart';
import 'package:dotted_border/dotted_border.dart';

class Task extends StatelessWidget {
  final List<TaskModel> task = TaskModel.generateTask();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15),
        child: GridView.builder(
          itemCount: task.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10
          ), 
          itemBuilder: (context, index) => task[index].isLast! ? _buildAddTask() : _buildTask(context, task[index]) 
        )
      ),
    );
  }
}

Widget _buildAddTask(){
  return DottedBorder(
     borderType: BorderType.RRect,
    radius: Radius.circular(20),
    dashPattern: [10, 10],
    strokeWidth: 2,
    child: ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    child:Center(child: Text('+ Add', style: GoogleFonts.poppins(
      fontWeight: FontWeight.w600
    ),))
  ),
  );
}

Widget _buildTask(context, TaskModel task){
  return Container(
    padding: EdgeInsets.all(15),
   decoration: BoxDecoration(
     color: task.bgColor,
     borderRadius: BorderRadius.circular(20)
   ),
   child: Column(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Icon(task.icon, size: 50, color: task.iconColor,),
       Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text(task.title.toString(), style: GoogleFonts.poppins(
             fontSize: 18,
             fontWeight: FontWeight.w600
           ),),
           Row(
             children: [
               Container(
                 padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: task.btnColor,
                   borderRadius: BorderRadius.circular(15)
                 ),
                 child: Text('${task.left} left', style: GoogleFonts.poppins(),),
               ),
               SizedBox(width: 10,),
               Container(
                 padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(15)
                 ),
                 child: Text('${task.done} done', style: GoogleFonts.poppins(
                   color: Colors.grey
                 ),),
               )
             ],
           )
         ],
       )
     ],
   ),
  );
}