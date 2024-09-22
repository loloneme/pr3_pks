import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data.dart';
import '../components/drink_item.dart';

class DrinksPage extends StatelessWidget {
  const DrinksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
          child: Text("Напитки",
          style: GoogleFonts.sourceSerif4(
            textStyle: const TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(255, 238, 205, 1.0),
            )
          )
          )
      ),
        backgroundColor: const Color.fromRGBO(71, 58, 42, 1.0),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(71, 58, 42, 1.0),
        child: GridView.count(
          padding:  const EdgeInsets.fromLTRB(20, 15, 20, 25),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 15,
          children: List.generate(drinks.length, (index){
            return DrinkItem(drink: drinks[index]);
          }),
        ),
      )
    );
  }
}
