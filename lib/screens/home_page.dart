import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
      backgroundColor:const Color.fromARGB(200, 37, 211, 102),
      child:const Icon(Icons.whatsapp_outlined,
      size: 40,),),
      // floatingActionButton: Icon(Icons.whatsapp_outlined,
      // size: 40,
      // color: Colors.white,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(100))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage('assets/images/nalogo.jpg'))),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Hello Welcome Back',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Colors.green, fontSize: 20),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 560,
                width: 360,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      'LOGIN',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: Colors.white, fontSize: 15),
                    ),
                    TextButton(
                      text: 'User ID',
                    ),
                    TextformfieldWidget(
                      text: 'User ID',
                    ),
                    TextButton(
                      text: 'Password',
                    ),
                    TextformfieldWidget(
                      text: 'Password',
                    ),
                    const SizedBox(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'Forgot password?',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(color: Colors.white),
                          )),
                    ),
                    ElavatedWidget(
                      text: 'LOGIN',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElavatedWidget(
                      text: 'LOGIN WITH OTP',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 330,
                        height: 40,
                        child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.apple),
                            label: const Text('SIGN IN WITH APPLE')),
                      ),
                    ),
                    Stack(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(Icons.mail),
                                    label: const Text('GMAIL')),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: SizedBox(
                                child: ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(Icons.facebook),
                                    label: const Text('FACEBOOK')),
                              ),
                            ),
                          ],
                        ),
                        // const Positioned(
                        //     right: 40,
                        //     // top: 5,
                        //     bottom: 10,
                        //     child: Icon(
                        //       Icons.whatsapp_outlined,
                        //       size: 40,
                        //       color: Colors.green,
                        //     ))
                      ],
                    ),
                    Text(
                      'Dont have an account ? Register here',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: Colors.white),
                    ),
                  

                  ],
                ),
              ),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}

class ElavatedWidget extends StatelessWidget {
  String text;
  ElavatedWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          width: 330,
          height: 40,
          child: ElevatedButton(
              onPressed: () {},
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: Colors.white),
              ))),
    );
  }
}

class TextformfieldWidget extends StatelessWidget {
  String text;
  TextformfieldWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: text,
            hintStyle: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.white),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}

class TextButton extends StatelessWidget {
  String text;
  TextButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.white),
          ),
        ));
  }
}
