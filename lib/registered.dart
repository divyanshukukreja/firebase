import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Registered extends StatefulWidget {
  const Registered({super.key});

  @override
  State<Registered> createState() => _RegisteredState();
}

class _RegisteredState extends State<Registered> {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  var userController = TextEditingController();
  var phoneController = TextEditingController();
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 65, 100, 66),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 65, 100, 66),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Signup",
            style: TextStyle(
                fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Username",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    controller: userController,
                    decoration: InputDecoration(
                        hintText: "Enter Username",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.person_outlined,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide.none),
                        fillColor: Colors.grey,
                        filled: true),
                    validator: (value) {
                      if (value?.isEmpty == true)
                        return "error enter user name";
                      else
                        return null;
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Phone Number",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: TextFormField(
                      controller: phoneController,
                      maxLength: 10,
                      decoration: InputDecoration(
                          hintText: "Enter Phone Number",
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(
                            Icons.person_outlined,
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide.none),
                          fillColor: Colors.grey,
                          filled: true),
                      validator: (value) {
                        if (value?.isEmpty == true)
                          return "error enter phone number";
                        else
                          return null;
                      }),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "Enter Email",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: TextFormField(
                      controller: emailcontroller,
                      decoration: InputDecoration(
                          hintText: "Enter Email",
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(
                            Icons.person_outlined,
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide.none),
                          fillColor: Colors.grey,
                          filled: true),
                      validator: (value) {
                        if (value?.isEmpty == true)
                          return "error enter Email";
                        else
                          return null;
                      }),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Password",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: TextFormField(
                      controller: passwordcontroller,
                      maxLength: 10,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(
                            Icons.key_outlined,
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide.none),
                          fillColor: Colors.grey,
                          filled: true),
                      validator: (value) {
                        if (value?.isEmpty == true)
                          return "error enter password";
                        else
                          return null;
                      }),
                ),
                Center(
                  child: Container(
                    height: 40,
                    width: 400,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black)),
                      onPressed: () {
                        if (formkey.currentState?.validate() == true) {
                          firebaseAuth
                              .createUserWithEmailAndPassword(
                                  email: emailcontroller.text.toString(),
                                  password: passwordcontroller.text.toString())
                              .then((value) => Navigator.pop(context))
                              .onError((error, stackTrace) =>
                                  Fluttertoast.showToast(
                                      msg: error.toString()));
                        }
                      },
                      child: Text(
                        "Signup",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
