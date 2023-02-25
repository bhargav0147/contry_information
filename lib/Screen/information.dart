import 'package:contry_information/Screen/show.dart';
import 'package:flutter/material.dart';

class Fold extends StatefulWidget {
  const Fold({Key? key}) : super(key: key);

  @override
  State<Fold> createState() => _FoldState();
}

class _FoldState extends State<Fold> {
  List i = [
    "assets/images/portugal.png",
    "assets/images/china.png",
    "assets/images/thailand.png",
    "assets/images/singapore.png",
    "assets/images/india.png",
    "assets/images/greece.png",
    "assets/images/denmark.png",
    "assets/images/united-states.png",
    "assets/images/italy.png",
    "assets/images/new-zealand.png",
  ];
  List pmi = [
    "assets/images/pm/portugal-pr.jpg",
    "assets/images/pm/china-pr.jpg",
    "assets/images/pm/thailand-pr.jpg",
    "assets/images/pm/singapore-pr.jpg",
    "assets/images/pm/india-pr.png",
    "assets/images/pm/greece-pr.jpg",
    "assets/images/pm/denmark-pr.jpg",
    "assets/images/pm/united-states-pr.jpg",
    "assets/images/pm/italy-pr.jpg",
    "assets/images/pm/new-zealand-pr.jpg"
  ];
  List pmn = [
    "António Costa",
    "Li Keqiang",
    "Prayut Chan-o-cha",
    "Lee Hsien Loong",
    "Narendra Modi",
    "Kyriakos Mitsotakis",
    "Mette Frederiksen",
    "Joe Biden",
    "Giorgia Meloni",
    "Chris Hipkins",
  ];
  List l = [
    "Portugal",
    "China",
    "Thailand",
    "Singapore",
    "India",
    "Greece",
    "Denmark",
    "United States",
    "Italy",
    "New Zealand"
  ];
  List about = [
    "Portugal, officially The Portuguese Republic, "
        "is a country in southern Europe, founded in 1143, occupying a total area of 92,212 km2."
        "The mainland is located on the southwest of the Iberian Peninsula,"
        "bordering Spain to the north and east,"
        " and the Atlantic Ocean to the west and south.",
    "It is the world's most populous country, "
        "with a population exceeding 1.4 billion, slightly ahead of India. "
        "China spans the equivalent of five time zones and borders fourteen countries by land, "
        "the most of any country in the world, tied with Russia.",
    "Thailand is a multi-ethnic nation with a population of 64.1 million. "
        "Thailand's climate ranges from the sub-tropical to the tropical zones, "
        "with three distinct seasons: a hot and dry season from February to May, a monsoon season from June "
        "to October, and a cooler, dry season from November to January.",
    "Singapore is a sunny, tropical island in South-east Asia, off the southern tip of the Malay Peninsula. "
        "The city-state is 710 square kilometres and "
        "inhabited by five million people from four major communities; "
        "Chinese (majority), Malay, Indian and Eurasian.",
    "India is part of the continent of Asia. Most of India forms a peninsula, "
        "which means it is surrounded by water on three sides. The world's highest mountain range, "
        "the Himalaya, rises in the north. The southeast is bordered by the Bay of Bengal, and "
        "the southwest is bordered by the Arabian Sea.",
    "Greece has the longest coastline in Europe and is the southernmost country in Europe. "
        "The mainland has rugged mountains, forests, and lakes, but the country is well known for "
        "the thousands of islands dotting the blue Aegean Sea to the east, "
        "the Mediterranean Sea to the south, and the Ionian Sea to the west.",
    "Denmark, the most southerly country in the Nordic Region, is a small, densely populated country, "
        "made up of a large number of islands skirted by lovely beaches. Denmark borders Sweden to "
        "the east and Germany to the south. "
        "The Øresund Bridge connects Sweden to the largest Danish island, Zealand.",
    "The United States of America is the world's third largest country in size and "
        "nearly the third largest in terms of population. Located in North America, "
        "the country is bordered on the west by the Pacific Ocean and to the east by the Atlantic Ocean. "
        "Along the northern border is Canada and the southern border is Mexico.",
    "Italy is a boot-shaped peninsula that juts out of southern Europe into the Adriatic Sea, "
        "Tyrrhenian Sea, Mediterranean Sea, and other waters. Its location has played an "
        "important role in its history. The sea surrounds Italy, "
        "and mountains crisscross the interior, dividing it into regions.",
    "New Zealand (NZ) is an island country in the South Pacific Ocean located about 2,000 km (1,300 mi) "
        "southeast of Australia. The island-nation consists of some smaller islands and two main islands, "
        "the North Island (Te-Ika-a-Maui) and the South Island (Te Wai Pounamu),"
        "which are separated by the Cook Strait.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(
          "Country List",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              fontSize: 20),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: l
              .asMap()
              .entries
              .map((e) =>
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>
                        Country(i[e.key], pmi[e.key], pmn[e.key], l[e.key],
                            about[e.key]),));
                },
                child: titels(name: l[e.key]),
              )).toList(),


        ),
      ),
    );
  }

  Widget titels({required String name})
  {
    return Container(
      height: 50,
      width: double.infinity,
      color: Colors.blue,
      child: Center(
        child: Text(
          "$name",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 1,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
