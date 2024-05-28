import 'package:bizfuel/Resellers/resellerhomepage.dart';
import 'package:flutter/material.dart';

class Resellregistration extends StatefulWidget {
  const Resellregistration({super.key});

  @override
  State<Resellregistration> createState() => _ResellregistrationState();
}

class _ResellregistrationState extends State<Resellregistration> {
  final _formkey = GlobalKey<FormState>();

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
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "Reseller Account  \n     Registration",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
              Stack(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 4, color: Colors.grey),
                              ),
                              child: Positioned(
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 4, color: Colors.grey)),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.camera_alt_outlined)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(14),
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        filled: true,
                                        hintText: "E-mail or Phone Number",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder()),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        filled: true,
                                        hintText: "Name",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder()),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        filled: true,
                                        hintText: "Qualification",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder()),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        hintText: "Password",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(),
                                        suffixIcon: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons.remove_red_eye_rounded))),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        hintText: "Confirm password",
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(),
                                        suffixIcon: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons.remove_red_eye_rounded))),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 60),
                                        child: Text(
                                          "Agree With Terms & Conditions  ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                      ),
                                      Container(
                                        height: 12,
                                        width: 12,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  SizedBox(
                                    width: 140,
                                    height: 50,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    233, 12, 12, 12),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Resellerhomepage()));
                                        },
                                        child: const Text(
                                          "Submit",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ])));
  }
}
