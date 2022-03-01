import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({ Key? key }) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final List<String>dayList = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  final List<int> itemList = [24, 25, 26, 27, 28, 29, 30];
  int selected = 4;
  @override
  Widget build(BuildContext context) { 
    return Container(
      height: 105,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        )
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => setState(()=> selected = index),
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: selected == index ? Colors.grey.withOpacity(.1) : Colors.white,
            ),
            child: Column(
              children: [
                Text(dayList[index], style: GoogleFonts.poppins(
                  color: selected == index ? Colors.black : Colors.grey,
                  fontWeight: FontWeight.bold
                ),),
                Text(itemList[index].toString(), style: GoogleFonts.poppins(
                  color: selected == index ? Colors.black : Colors.grey,
                  fontWeight: FontWeight.bold
                ),),
              ],
            ),
          ),
        ), 
        separatorBuilder: (_, index) => const SizedBox(width: 5,), 
        itemCount: dayList.length)
    );
  }
}