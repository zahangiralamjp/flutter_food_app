import 'package:flutter/material.dart';

import 'home.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.amber,
      child: ListView(
        children: [
          DrawerHeader(
              child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 43,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome Gress'),
                  Container(
                    height: 25,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text('Login'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          ListTile(
            onTap: () {
              ///CartScreen
            },
            leading: Icon(Icons.shopping_basket_outlined),
            title: Text('Review Cart'),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.list),
            title: Text('My Orders'),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.person_outline),
            title: Text('My Profile'),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.notifications_outlined),
            title: Text('Notifications'),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.favorite_border_outlined),
            title: Text('My Wishlist'),
          ),
          ListTile(
            leading: Icon(Icons.copy_all_outlined),
            title: Text('Rase a Complant'),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.format_quote_outlined),
            title: Text('Catagories'),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact Support',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Text('Call us :'),
                      SizedBox(
                        width: 10,
                      ),
                      Text('01959 888848'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Call us :'),
                      SizedBox(
                        width: 10,
                      ),
                      Text('01959 888848'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
