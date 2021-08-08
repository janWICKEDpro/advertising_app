import 'package:advertise/Screens/about.dart';
import 'package:advertise/Screens/accountSettings.dart';
import 'package:advertise/Screens/addProduct/addProduct.dart';
import 'package:advertise/Screens/products.dart';
import 'package:advertise/Screens/settings.dart';
import 'package:advertise/authenticationMethods/authentication.dart';
import 'package:advertise/colorConstants.dart';
import 'package:flutter/material.dart';
import 'package:advertise/objects/categoriesObjects.dart';


class MainView extends StatefulWidget {
  const MainView({ Key? key }) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

        child: Column(children: [
          Container(
            height: 150,
            child: Image.asset('assets/images/pic1.jpeg'),
          ),
          ListTile(
            leading: Icon(Icons.settings,color: primaryColor,),
            title: Text("Settings"),
            onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Settings()));},
          ),
          Divider(),
            ListTile(
            leading: Icon(Icons.info,color: primaryColor,),
            title: Text("About"),
            onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>About()));},
          ),
          Divider(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
              onTap: (){
                AuthService().logout();
              },
              leading: Icon(Icons.logout,color: primaryColor,),
              title: Text("Logout"),
              ),
            ),
          )
        ],),
      ),
      appBar: AppBar(
        title: Text("Advertise",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 8,
        actions: [
          IconButton(
            onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Account()));}, 
            color: Colors.white,
            icon: Icon(Icons.account_circle),
            iconSize: 30,
            ),
          ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          children: List.generate(4, (index)  {
            return InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Products(title: category[index].title,)));
              },
              child: Card(
                color: primaryColor,
                elevation: 10,
                  child: Center(
                    child: Column(children: [
                      Expanded(flex: 10,child: Icon(category[index].icon,color: Colors.white,size: 40)),
                      Expanded(flex: 3,child: Text("${category[index].title}",style: TextStyle(color: Colors.white), ))
                    ],),
                  ),
              ),
            );
          }),
        ),
      ),
      floatingActionButton: Container(decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        boxShadow: [
          BoxShadow(
            color: primaryColor
          )
        ],
        color: primaryColor
      ), child: IconButton(icon: Icon(Icons.add) , onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddProduct()));},color: Colors.white,iconSize: 35,)),
    );
  }
}

