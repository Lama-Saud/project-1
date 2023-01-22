import 'package:flutter/material.dart';
import 'package:project1/pages/wishlist.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  String name = "Lama Saud";
  String email = "lama.saud.s@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Image.asset(
                      "lib/assets/userProfile.png",
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        email,
                        style: const TextStyle(fontSize: 12),
                      ),
                      const Text(
                        "0552739160",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  ProfileSections(
                    text: "Wishlist",
                    press: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const WishList())),
                  ),
                  const SizedBox(height: 10),
                  ProfileSections(
                    text: 'My Orders',
                    press: () {},
                  ),
                  const SizedBox(height: 10),
                  ProfileSections(
                    text: "My Address",
                    press: () {},
                  ),
                  const SizedBox(height: 10),
                  ProfileSections(
                    text: "Change Language",
                    press: () {},
                  ),
                ],
              ),
            ),
            //NameField(label: "Edit your name: ", hintText: "hintText"),
            // NameField(label: "Edit your email: ", hintText: "hintText"),
            //----------------------------------------------------------------------------------------
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      //top: 16,
                      bottom: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: nameController,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            //labelText: 'Enter Name',
                            hintText: "Enter your new name",
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 80,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Edit"),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      name = nameController.text;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.edit,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      //top: 16,
                      bottom: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: emailController,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            //labelText: 'Enter Name',
                            hintText: "Enter your new email",
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 80,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Edit"),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      email = emailController.text;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.edit,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0, right: 32, top: 16),
                    child: ElevatedButton(
                      // ignore: prefer_const_constructors
                      style: ElevatedButton.styleFrom(
                        //shadowColor: shadowColor,
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.logout,
                              color: Colors.white,
                            ),
                            Text(
                              "Logout",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileSections extends StatelessWidget {
  String text;
  VoidCallback? press;
  //IconData icon;

  ProfileSections({
    Key? key,
    //required this.icon,
    required this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        // decoration: const BoxDecoration(boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey,
        //     blurRadius: 25,
        //     offset: Offset(
        //       5,
        //       5,
        //     ),
        //   ),
        // ]),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
        onPressed: press,
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: const TextStyle(color: Colors.black),
                ),
                const Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ));
  }
}

class NameField extends StatefulWidget {
  String label;
  String? hintText;

  NameField({super.key, required this.label, required this.hintText});

  @override
  State<NameField> createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> {
  final myController = TextEditingController();
  // final String name ="Lama Saud";
  // final String email ="lama.saud.s@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            //style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            //onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                //top: 16,
                bottom: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: myController,
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      //labelText: 'Enter Name',
                      hintText: widget.label,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 80,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Edit"),
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.edit,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              //top: 16,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: myController,
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    //labelText: 'Enter Name',
                    hintText: widget.label,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 80,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Edit"),
                        Icon(
                          Icons.edit,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
