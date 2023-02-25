import 'package:flutter/material.dart';

class Country extends StatefulWidget {
  String i;
  String pmi;
  String pmn;
  String l;
  String about;
  Country(this.i,this.pmi,this.pmn,this.l,this.about);
  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "${widget.l}",
          style: TextStyle(
              letterSpacing: 1,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(widget.i,
                  height: 200,width: 200,),
                Image.asset(widget.pmi,
                  height: 200,width: 200,),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 50,width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Prime Minister of ${widget.l} : ${widget.pmn}",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 15
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 300,width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${widget.about}",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 15
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
