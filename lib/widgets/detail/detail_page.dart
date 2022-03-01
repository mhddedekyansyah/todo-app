import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/models/task_model.dart';
import 'package:todo_app/widgets/detail/widgets/date_picker.dart';
import 'package:todo_app/widgets/detail/widgets/task_tile.dart';
import 'package:todo_app/widgets/detail/widgets/task_timeline.dart';

class DetailPage extends StatelessWidget {
  final TaskModel? task;

  const DetailPage({this.task, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final detailTask = task?.desc;
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context, task!),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children : [
                  DatePicker(),
                  TaskTile(),
                ]
              ),
            ),
          ),
            detailTask == null ? 
            SliverFillRemaining(
              child: Container(
                color: Colors.white,
                alignment: Alignment.center,
                child: Text('No task today', style: GoogleFonts.poppins(
                  color: Colors.grey
                ),),
              ),
            ) : 
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => TaskTimeLine(detail: detailTask[index]),
                childCount: detailTask.length
              )
            )
        ],
      )
    );
  }
}

Widget _buildAppBar(context, task){
  return SliverAppBar(
    backgroundColor: Colors.black,
    expandedHeight: 90,
    leading: IconButton(
      onPressed: () => Navigator.of(context).pop(), 
      icon: const Icon(Icons.arrow_back_ios_new, size: 20,)),
    actions: const [
      Icon(Icons.more_vert, size: 40,)
    ],
    flexibleSpace: FlexibleSpaceBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${task.title.toString()} tasks', style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),),
          Text('You have ${task.title.toString()} tasks for today', style: GoogleFonts.poppins(
            color: Colors.grey,
            fontSize: 12
          ),)
        ],
      ),
    ),
  );
}