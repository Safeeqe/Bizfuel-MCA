import 'package:bizfuel/Businesses/bizhomepage.dart';
import 'package:bizfuel/login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Bizregistration extends StatefulWidget {
  const Bizregistration({super.key});

  @override
  State<Bizregistration> createState() => _BizregistrationState();
}

class _BizregistrationState extends State<Bizregistration> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController phnocontroller = TextEditingController();
  TextEditingController businessnamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();

  bool ischecked = false;

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
            child: SingleChildScrollView(
              child: Column(children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    "Business Account  \n     Registration",
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
                                      controller: emailcontroller,
                                      validator: (value) {
                                        if ((value == null || value.isEmpty)) {
                                          return "required filed";
                                        }
                                      },
                                      decoration: const InputDecoration(
                                          filled: true,
                                          hintText: "E-mail",
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder()),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    TextFormField(
                                      controller: phnocontroller,
                                      validator: (value) {
                                        if ((value == null || value.isEmpty)) {
                                          return "required filed";
                                        }
                                      },
                                      decoration: const InputDecoration(
                                          filled: true,
                                          hintText: "Phone Number",
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder()),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextFormField(
                                      controller: businessnamecontroller,
                                      validator: (value) {
                                        if ((value == null || value.isEmpty)) {
                                          return "required filed";
                                        }
                                      },
                                      decoration: const InputDecoration(
                                          filled: true,
                                          hintText: "Business Name",
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder()),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextFormField(
                                      controller: passwordcontroller,
                                      validator: (value) {
                                        if ((value == null || value.isEmpty)) {
                                          return "required filed";
                                        }
                                      },
                                      decoration: InputDecoration(
                                          filled: true,
                                          hintText: "Password",
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(),
                                          suffixIcon: IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons
                                                  .remove_red_eye_rounded))),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextFormField(
                                      controller: confirmpasswordcontroller,
                                      validator: (value) {
                                        if ((value == null || value.isEmpty)) {
                                          return "required filed";
                                        }
                                      },
                                      decoration: InputDecoration(
                                          filled: true,
                                          hintText: "Confirm password",
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(),
                                          suffixIcon: IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons
                                                  .remove_red_eye_rounded))),
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
                                        Checkbox(
                                            fillColor: MaterialStatePropertyAll(
                                                Colors.white),
                                            checkColor: Colors.black,
                                            value: ischecked,
                                            onChanged: (value) {
                                              setState(() {
                                                ischecked = value!;
                                              });
                                            }),
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
                                                      BorderRadius.circular(
                                                          20))),
                                          onPressed: () {
                                            if (_formkey.currentState!
                                                .validate()) {
                                              FirebaseAuth.instance
                                                  .createUserWithEmailAndPassword(
                                                      email:
                                                          emailcontroller.text,
                                                      password:
                                                          passwordcontroller
                                                              .text);
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Login()));
                                            }

                                            // ischecked == false
                                            //     ? ScaffoldMessenger.of(context)
                                            //         .showSnackBar(SnackBar(
                                            //             content: Text(
                                            //                 "please agree terms and condition")))
                                            //     : Navigator.of(context).push(
                                            //         MaterialPageRoute(
                                            //             builder: (context) =>
                                            //                 Login()));
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
              ]),
            )));
  }
}
