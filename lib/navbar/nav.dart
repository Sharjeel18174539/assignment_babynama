
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DesktopNavBar(),
    );
  }
  Widget MobileNavBar(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          navLogo(),
        ],
      ),
    );
  }

  Widget DesktopNavBar(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Babynama",
          style: TextStyle(fontSize: 25, color: Colors.lightBlueAccent,
          fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(),
          Row(
            children: [
              navButton("Home"),
              navButton("Care Plans"),
              navButton("About us"),
              navButton("Our Program"),
              navButton("Preview Access"),
              navButton("Blogs"),
            ],
          ),
          Container(
            child: SizedBox(
              height: 40,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,

                ),
                onPressed: (){},
                child: Text(
                  "Emergency Consultation",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget navButton(String text){

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
        onPressed: (){},
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget navLogo(){
    return Container(
      width: 110,
      decoration: BoxDecoration(
          //image: DecorationImage(image: AssetImage("assets/logo.png"))
      ),
    );
  }

}
