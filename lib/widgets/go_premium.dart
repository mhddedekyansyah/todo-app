import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoPremium extends StatelessWidget {
  const GoPremium({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20)
      ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    shape: BoxShape.circle
                  ),
                  child: const Icon(Icons.bolt_rounded, color: Colors.white,),
                ),
                const SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Go Premium', style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                  Text('Get unlimited access\nto all out features!', style: GoogleFonts.poppins(
                      color: Colors.grey.shade400,
                    ),
                  )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 15,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20)
              ),
              child: const Icon(Icons.arrow_forward, color: Colors.white,),
            )
          )
        ],
      ),
    );
  }
}