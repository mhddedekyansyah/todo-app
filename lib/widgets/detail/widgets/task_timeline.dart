import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TaskTimeLine extends StatelessWidget {
  final Map<String, dynamic>? detail;
  const TaskTimeLine({ Key? key, this.detail }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint(detail.toString());
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children : [
          _buildTimeLine(detail!['tlColor']),
          Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(detail!['time'].toString(), style: GoogleFonts.poppins(),),
                        detail!['title'].isNotEmpty ?
                        _buildCard(detail!['bgcolor'], detail!['title'], detail!['slot'])
                        : _buildCard(Colors.white, '', '')
                      ],
                    )
                  )
        ]
      )
    );
  }

  Widget _buildTimeLine(Color color){
    return Container(
      height: 80,
      width: 20,
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0,
        isFirst: true,
        indicatorStyle: IndicatorStyle(
          indicatorXY: 0,
          width: 15,
          indicator: Container(
            decoration: BoxDecoration(
            color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(width: 5, color: color)
            ),
          )
        ),
        afterLineStyle: LineStyle(thickness: 2, color: color),
      ),
    );
  }

  Widget _buildCard(Color color, String title, String slot){
    return Container(
      width: 250,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
          Text(slot, style: GoogleFonts.poppins(),),
        ],
      ),
    );
  }
}