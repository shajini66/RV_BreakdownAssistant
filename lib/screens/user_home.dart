import 'package:flutter/material.dart';
import 'package:rvba/screens/user_problem.dart';

class user_home extends StatefulWidget {
  const user_home({super.key});

  @override
  State<user_home> createState() => _user_homeState();
}

class _user_homeState extends State<user_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "RVBA",
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color:  Color(0xffD9D9D9),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 80,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              Text('Choose your vehicle',
              style:TextStyle(fontSize: 20.0),
              ),
              InkWell(
                onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>user_problem(),));},

                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.50),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          child: Image.asset('assets/images/auto.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text('Two wheeler',
                          style:TextStyle(fontSize: 18.0)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.50),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        child: Image.asset('assets/images/Rectangle 17.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text('Tree  wheeler',
                          style:TextStyle(fontSize: 20.0)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.50),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        child: Image.asset('assets/images/Rectangle 21.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text('For wheeler',
                        style:TextStyle(fontSize: 20.0)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.50),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        child: Image.asset('assets/images/Rectangle 22.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text('Six wheeler',
                        style:TextStyle(fontSize: 20.0)),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
