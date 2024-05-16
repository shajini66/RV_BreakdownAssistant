import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rvba/screens/user_book.dart';
import 'package:rvba/screens/user_manufa.dart';
import 'package:rvba/user/user_profile.dart';

class user_hdesign extends StatefulWidget {
  const user_hdesign({super.key});

  @override
  State<user_hdesign> createState() => _user_hdesignState();
}

class _user_hdesignState extends State<user_hdesign> {
  @override
  Widget build(BuildContext context) {
    backgroundColor: Colors.grey[850];
    drawer: const menuss(),
    appBar: AppBar(
    backgroundColor: Colors.transparent,
    bottom:
    const PreferredSize(preferredSize: Size.fromHeight(20), child: Divider()),
    toolbarHeight: 50,
    leading:
    // // Center(
    Builder(
    builder: (context) {
    return IconButton(onPressed: (){
    Scaffold.of(context).openDrawer();
    }, icon: const Icon(Icons.menu,color: Colors.white,));
    }
    ),
    //   Icon(
    //     Icons.menu,
    //     color: Colors.white,
    //   ),
    // ),
    title: Text(
    "Home",
    style: GoogleFonts.inknutAntiqua(color: Colors.white),
    ),
    actions: [
    IconButton(
    onPressed: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => const user_manufa()));
    },
    icon: const Icon(
    Icons.notifications_on,
    ),
    color: Colors.white,
    ),
    const Padding(
    padding: EdgeInsets.all(8),
    // child: Icon(Icons.chat_outlined),
    ),
    IconButton(
    onPressed: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => const user_book()));
    },
    icon: const Icon(
    Icons.chat_outlined,
    color: Colors.white,
    ),
    )
    ],
    ),
    body: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    const SizedBox(
    height: 30,
    ),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: TextField(
    style: const TextStyle(color: Colors.white),
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(7),
    borderSide: const BorderSide(color: Colors.white)),
    labelText: "Search",
    labelStyle: GoogleFonts.inknutAntiqua(
    color: Colors.white.withOpacity(0.5)),
    prefixIcon: Icon(
    Icons.search,
    color: Colors.white.withOpacity(0.5),
    )),
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Text(
    "Choose your vehicles",
    style: GoogleFonts.inknutAntiqua(
    color: Colors.amber[900],
    fontSize: 25,
    ),
    ),
    ),
    Expanded(
    child: ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) {
    return Padding(
    padding: const EdgeInsets.all(10),
    child: GestureDetector(
    onTap: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => const user_book()));
    },
    child: Container(
    // height: 150,
    width: 350,

    decoration: BoxDecoration(
    border: Border.all(
    width: 1,
    color: Colors.white,
    ),
    borderRadius: BorderRadius.circular(7)),

    child: Row(
    children: [
    Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
    children:[Image.asset(
    "assets/dr3.png",
    scale: 1.3,
    ),
    Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Row(
    children: [
    Icon(Icons.star,size: 20,color: Colors.amber,), Icon(Icons.star,size: 20,color: Colors.amber,), Icon(Icons.star,size: 20,color: Colors.amber,), Icon(Icons.star,size: 20,), Icon(Icons.star,size: 20,),
    ],
    ),
    )
    ]
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 5, bottom: 8),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Text(
    "DR.Rose",
    style: GoogleFonts.inknutAntiqua(
    color: Colors.white, fontSize: 15),
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Text(
    "Clinical Psychologist",
    style: GoogleFonts.inknutAntiqua(
    color: Colors.white, fontSize: 15),
    ),
    ),
    Row(
    children: [
    Image.asset("assets/Warranty.png"),
    Padding(
    padding: const EdgeInsets.only(left: 10),
    child: SizedBox(
    width: 150,
    child: Text(
    "Love and family",
    style: GoogleFonts.inknutAntiqua(
    color: Colors.white,
    fontSize: 15),
    )),
    ),
    ],
    ),
    Row(
    children: [
    Icon(
    Icons.language,
    color: Colors.blue[900],
    ),
    Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Padding(
    padding:
    const EdgeInsets.only(right: 20),
    child: Text(
    "English,Hindi",
    style: GoogleFonts.inknutAntiqua(
    color: Colors.white,
    fontSize: 15),
    ),
    ),
    ),
    ],
    ),
    ],
    ),
    )
    ],
    ),
    ),
    ),
    );
    },
    ),
    )
    ],

    ),
    );
  }
}