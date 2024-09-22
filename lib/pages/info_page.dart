import 'package:flutter/material.dart';
import '../models/drink.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/drink_info.dart';


class InfoPage extends StatelessWidget {
  const InfoPage({super.key, required this.drink});
  
  final Drink drink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
        child: Text(drink.name,
            style: GoogleFonts.sourceSerif4(
                textStyle: const TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(44, 32, 17, 1.0),
                )
            )
        )
      ),
        backgroundColor: const Color.fromRGBO(159, 133, 102, 1.0),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Container(
            width: double.infinity,
            color: const Color.fromRGBO(159, 133, 102, 1.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
              child: DrinkInfo(drink: drink),
            ),
          ),
        ),
      ),
    );
  }
}
