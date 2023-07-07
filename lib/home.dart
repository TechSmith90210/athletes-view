import 'package:flutter/material.dart';
import 'package:practice/Athletesjson.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Atheletesjson> athleteslist = [
    Atheletesjson(name: 'Rajesh', level: 'Intermediate'),
    Atheletesjson(name: 'Mohan', level: 'Advanced'),
    Atheletesjson(name: 'Ram', level: 'Intermediate'),
    Atheletesjson(name: 'Raja', level: 'Basic'),
    Atheletesjson(name: 'Suman', level: 'Intermediate'),
    Atheletesjson(name: 'Abhishek', level: 'Basic'),
  ];

  List<Atheletesjson> basiclist = [];
  List<Atheletesjson> interlist = [];
  List<Atheletesjson> advlist = [];

  final controller = PageController(
    initialPage: 0,
  );
  final colors = ['Colors.red', 'Colors.blue'];

  @override
  void initState() {
    basiclist = athleteslist
        .where((Atheletesjson) => Atheletesjson.level == 'Basic')
        .toList();
    interlist = athleteslist
        .where((Atheletesjson) => Atheletesjson.level == 'Intermediate')
        .toList();
    advlist = athleteslist
        .where((Atheletesjson) => Atheletesjson.level == 'Advanced')
        .toList();

    super.initState();

    print(basiclist);
    print(interlist);
    print(advlist);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Sports App',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'Roboto Mono',
            fontWeight: FontWeight.w400,
            letterSpacing: 1.08,
          ),
        ),
        centerTitle: true,
      ),
      body: Scrollbar(
        controller: controller,
        thumbVisibility: true,
        thickness: 20,
        child: PageView(
            controller: controller,
            onPageChanged: (page) => {print(page.toString())},
            pageSnapping: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 4 / 3,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(7, 15, 7, 32),
                    child: AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Container(
                        width: 300,
                        height: 380,
                        decoration: ShapeDecoration(
                          color: const Color(0xCCB3C4FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 2),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 400,
                                height: 126,
                                child: Column(
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Basic\n',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 60,
                                              fontFamily: 'Roboto Mono',
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 1.55,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Athletes',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 24,
                                              fontFamily: 'Roboto Mono',
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 0.72,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 10),
                                    const Divider(height: 0, thickness: 3),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 300,
                                height: 300,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        height: 50,
                                        width: 100,
                                        child: ListTile(
                                          title: Text(
                                            basiclist[index].name,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 28,
                                                fontFamily: 'Roboto Mono',
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 3.20),
                                          ),
                                        ),
                                      );
                                    },
                                    itemCount: basiclist.length),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 4 / 3,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(7, 15, 7, 32),
                    child: AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Container(
                        width: 300,
                        height: 380,
                        decoration: ShapeDecoration(
                          color: const Color(0xCCFFBF00),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 2),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 400,
                                height: 126,
                                child: Column(
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Intermediate\n',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 60,
                                              fontFamily: 'Roboto Mono',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Athletes',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 24,
                                              fontFamily: 'Roboto Mono',
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 0.72,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 10),
                                    const Divider(height: 0, thickness: 3),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 300,
                                height: 300,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        height: 50,
                                        width: 100,
                                        child: ListTile(
                                          title: Text(
                                            interlist[index].name,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 28,
                                                fontFamily: 'Roboto Mono',
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 3.20),
                                          ),
                                        ),
                                      );
                                    },
                                    itemCount: interlist.length),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 4 / 3,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(7, 15, 7, 32),
                    child: AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Container(
                        width: 300,
                        height: 380,
                        decoration: ShapeDecoration(
                          color: const Color(0xCC51DF51),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 2),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 400,
                                height: 126,
                                child: Column(
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Advanced\n',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 60,
                                              fontFamily: 'Roboto Mono',
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 1.55,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Athletes',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 24,
                                              fontFamily: 'Roboto Mono',
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 0.72,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 10),
                                    const Divider(height: 0, thickness: 3),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 300,
                                height: 300,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        height: 50,
                                        width: 100,
                                        child: ListTile(
                                          title: Text(
                                            advlist[index].name,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 28,
                                                fontFamily: 'Roboto Mono',
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 3.20),
                                          ),
                                        ),
                                      );
                                    },
                                    itemCount: advlist.length),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
