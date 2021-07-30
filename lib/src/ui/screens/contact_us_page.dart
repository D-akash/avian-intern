import 'package:flutter/material.dart';

import '../../../constants/string.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://static.wixstatic.com/media/ec9816_2b47f4f44a4d49f693b84835be335f78~mv2.png/v1/fill/w_852,h_792,al_c,q_90/ec9816_2b47f4f44a4d49f693b84835be335f78~mv2.webp",
            fit: BoxFit.cover,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 2.0,
                child: Image.network(
                  "https://static.wixstatic.com/media/62f0fae5d3664613b1ad0874c395a7ca.jpg/v1/fill/w_530,h_347,fp_0.50_0.50,q_80,usm_0.66_1.00_0.01/62f0fae5d3664613b1ad0874c395a7ca.webp",
                  color: Colors.black26,
                  colorBlendMode: BlendMode.darken,
                ),
              ),
              Container(
                width: _size.width * .9,
                height: _size.height * .3,
                decoration: BoxDecoration(
                    color: Color(0xFF1ABAD7),
                    borderRadius: BorderRadius.circular(12.0)),
                padding: const EdgeInsets.symmetric(
                    vertical: 24.0, horizontal: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get your free consultancy!",
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                    ),
                    const SizedBox(height: 8.0),
                    Text("Let's get down to discussing your project"),
                    const SizedBox(height: 8.0),
                    Divider(
                      thickness: 1.0,
                    ),
                    const SizedBox(height: 8.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Book Now"),
                      style: ButtonStyle(backgroundColor:
                          MaterialStateProperty.resolveWith((states) {
                        if (states.contains(MaterialState.disabled)) {
                          return Colors.black12;
                        } else {
                          return Color(0xFF295760);
                        }
                      })),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 52.0,
            left: 16.0,
            right: 16.0,
            child: Text(
              kContactUsPageTitleText,
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 142.0,
            left: 8.0,
            right: 8.0,
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.white,
              ),
              trailing: TextButton(
                onPressed: () {},
                child: Text(
                  "info@avaindesign.in",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 100.0,
            left: 8.0,
            right: 8.0,
            child: ListTile(
              leading: Icon(
                Icons.call,
                color: Colors.white,
              ),
              trailing: TextButton(
                onPressed: () {},
                child: Text(
                  "+1 812 558 3209",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 80.0,
            right: 24.0,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "+91 9354906525",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
