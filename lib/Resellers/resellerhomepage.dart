import 'package:flutter/material.dart';

class Resellerhomepage extends StatefulWidget {
  const Resellerhomepage({super.key});

  @override
  State<Resellerhomepage> createState() => _ResellerhomepageState();
}

class _ResellerhomepageState extends State<Resellerhomepage> {
  List<String> gridviewname = [
    "Joss",
    "Amana",
    "Thomas",
    "joshi",
    "sahal",
    "more"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/background.jpg"),
                    fit: BoxFit.cover)),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(Icons.location_on_outlined),
                          const Text(
                            "kerala,india",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                            size: 27,
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.person,
                                size: 28,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.chat_outlined,
                                size: 28,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications_none_outlined,
                                size: 28,
                              )),
                        ],
                      ),
                      SearchBar(
                        hintText: "Find Businesses or Resellers",
                        hintStyle: const MaterialStatePropertyAll(
                            TextStyle(color: Colors.black45)),
                        leading: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.search_outlined)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            "Browse Categories",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 190,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "See All",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            child: Container(
                              height: 100,
                              width: 120,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.car_repair,
                                    size: 100,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          InkWell(
                            child: Container(
                              height: 100,
                              width: 120,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.location_city_outlined,
                                    size: 100,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          InkWell(
                            child: Container(
                              height: 100,
                              width: 120,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.mobile_friendly,
                                    size: 100,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        " Fresh Recammetions",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                          height: 480,
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10),
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 800,
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 100,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(gridviewname[index])
                                  ],
                                ),
                              );
                            },
                          )),
                    ]))));
  }
}
