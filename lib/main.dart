import 'dart:convert';

import 'package:assignment/navbar/dr_data.dart';
import 'package:assignment/navbar/nav.dart';

import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //primarySwatch: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final _razorpay= Razorpay();
  TextEditingController amountcontroller=TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }



  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds


  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment succeeds
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when payment succeeds
  }

  void dispose(){
    _razorpay.clear();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child:  Column(
            children: [
              const NavBar(),
              const SizedBox(height: 10,),
              Container(
                alignment: Alignment.center,
                height: 45,
                width: 1500,
                color: Colors.indigo,
                child: const Text(
                  "UPTO 50% OFF ON 3 MONTHS CARE PLANS CODE:FREEDOM | TIME REMAINING-ONE DAY",
                  style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                //padding: EdgeInsets.all(50),
                height: 450,
                width: 1500,
                color: Colors.white10,
                child:
                  Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                        child:  Column(
                          children: [
                            const Text("Your Personal Peditrician\nwith Babynama",
                            style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                             const SizedBox(height: 25,),
                              const Text("For the parents who want nothing \nbut the best.Secure your peace of\n mind with round-the-clock\n"
                                  "Pediatric Support, a Personal\n Pediatrician, and comprehensive \nchild and mother care",
                                style: TextStyle(fontSize: 25, color: Colors.black,),
                              ),
                            const SizedBox(height: 60,),
                            Container(
                              child: SizedBox(
                                height: 60,
                                width: 350,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.purple,

                                  ),
                                  onPressed: (){},
                                  child: const Text(
                                    "Subscribe & Enjoy Peace of Mind ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),

                    ),

                    Expanded(child: Container()),
                    //Padding(
                      //padding: const EdgeInsets.only(top: 100, right: 25),
                       Expanded(
                        flex: 1,
                        child: Image.asset("assets/image.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),

                  ],
                ),
              ),
              const SizedBox(height: 40,),
              Container(
                height: 1500,
                width: 1500,
                color: const Color.fromARGB(100, 143, 180, 197),
                
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(35.0),
                      child: Text("Meet Our Doctors",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    //SizedBox(height: 20,),
                    const Text("Best In Business",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    ),
                    const SizedBox(height: 100,),
                    Container(
                      height: 400,

                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          promoCard('assets/dr1.jpg'),
                          const SizedBox(width: 25,),
                          promoCard('assets/dr2.jpg'),
                          const SizedBox(width: 25,),
                          promoCard('assets/dr3.jpg'),
                          const SizedBox(width: 25,),
                          promoCard('assets/dr4.jpg'),
                          const SizedBox(width: 25,),
                          promoCard('assets/dr5.jpg'),
                          const SizedBox(width: 25,),
                          promoCard('assets/dr3.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 45,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Our Plan",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        const SizedBox(height: 35,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                                child: Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 500,
                                    width: 350,

                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(25)),
                                      color: Colors.white
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const Text("Basic Care",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                        SizedBox(height: 20,),
                                        const Text("Reliable pediatric care within 15 minutes.",style: TextStyle(fontSize: 15),),
                                        SizedBox(height: 10,),
                                        const Text("Instant answers on WhatsApp by Pediatricians\n(8AM-10PM)",style: TextStyle(fontSize: 15)),
                                        SizedBox(height: 10,),
                                        const Text("Free postpartum yoga classes",style: TextStyle(fontSize: 15)),

                                        const SizedBox(height: 180,),
                                        Container(
                                          child: SizedBox(
                                            height: 60,
                                            width: 300,
                                            child: ElevatedButton(
                                                onPressed: (){
                                                  showDialog(
                                                      context: context,
                                                      builder: (BuildContext context) {
                                                        return AlertDialog(
                                                          title: const Center(
                                                            child: Text("Pay ₹2499and give your baby \n"
                                                                "a healthy start with Babynama Basic\n"
                                                                " Care  for  3 Month",
                                                              style: TextStyle(fontSize: 16,
                                                              fontWeight: FontWeight.bold
                                                              ),
                                                            ),
                                                          ),
                                                          content: Container(
                                                            height: 300,
                                                            width: 300,
                                                            child: Column(
                                                              children: [
                                                                Container(
                                                                  child: Column(
                                                                    children: [
                                                                      const TextField(
                                                                          decoration: InputDecoration(
                                                                            labelText: "Phone Num",
                                                                             icon: Icon(Icons.call)
                                                                             //icon at head of input
                                                                          )
                                                                      ),
                                                                      const SizedBox(height: 6,),

                                                                          const TextField(
                                                                              decoration: InputDecoration(
                                                                                  labelText: "Enter coupon",
                                                                                  icon: Icon(Icons.call)
                                                                                //icon at head of input

                                                                              )
                                                                          ),
                                                                      const SizedBox(height: 25,),
                                                                      Container(
                                                                        child: SizedBox(
                                                                          height: 50,
                                                                          width: 300,
                                                                          child: ElevatedButton(
                                                                            style: ElevatedButton.styleFrom(
                                                                              backgroundColor: Colors.purple,

                                                                            ),
                                                                            onPressed: (){
                                                                              var options = {
                                                                                'key': 'rzp_test_ichWp9a9vyAZm7',
                                                                                'amount': 2499000, //in the smallest currency sub-unit.
                                                                                'name': 'Babynama',
                                                                                'order_id': 'order_EMBFqjDHEEn80l', // Generate order_id using Orders API
                                                                                'description': 'Babynama',
                                                                                'timeout': 60, // in seconds
                                                                              };
                                                                              _razorpay.open(options);
                                                                            },
                                                                            child: const Text(
                                                                              "Pay Now",
                                                                              style: TextStyle(
                                                                                fontSize: 20,
                                                                                fontWeight: FontWeight.bold,
                                                                                color: Colors.white,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      )


                                                                    ],
                                                                  ),


                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      });
                                                },
                                                child: const Text("Buy@ Rs 2499 (3 month)"),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Container(
                                          child: SizedBox(
                                            height: 60,
                                            width: 300,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.pink,

                                              ),
                                              onPressed: (){
                                                showDialog(
                                                    context: context,
                                                    builder: (BuildContext context) {
                                                      return AlertDialog(
                                                        title: const Center(
                                                          child: Text("Pay ₹999 and give your baby \n"
                                                              "a healthy start with Babynama Basic Care for 1 Month",
                                                            style: TextStyle(fontSize: 15,
                                                              fontWeight: FontWeight.bold
                                                            ),
                                                          ),
                                                        ),
                                                        content: Container(
                                                          height: 300,
                                                          width: 300,
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                child: Column(
                                                                  children: [
                                                                    const TextField(
                                                                        decoration: InputDecoration(
                                                                            labelText: "Phone Num",
                                                                            icon: Icon(Icons.call)
                                                                          //icon at head of input
                                                                        )
                                                                    ),
                                                                    const SizedBox(height: 5,),

                                                                    const TextField(
                                                                        decoration: InputDecoration(
                                                                            labelText: "Enter coupon",
                                                                            icon: Icon(Icons.call)
                                                                          //icon at head of input

                                                                        )
                                                                    ),
                                                                    const SizedBox(height: 25,),
                                                                    Container(
                                                                      child: SizedBox(
                                                                        height: 50,
                                                                        width: 300,
                                                                        child: ElevatedButton(
                                                                          style: ElevatedButton.styleFrom(
                                                                            backgroundColor: Colors.purple,
                                                                          ),
                                                                          onPressed: (){
                                                                            var options = {
                                                                              'key': 'rzp_test_ichWp9a9vyAZm7',
                                                                              'amount': 999000, //in the smallest currency sub-unit.
                                                                              'name': 'Babynama',
                                                                              'order_id': 'order_EMBFqjDHEEn80l', // Generate order_id using Orders API
                                                                              'description': 'Babynama',
                                                                              'timeout': 60, // in seconds
                                                                            };
                                                                            _razorpay.open(options);
                                                                          },
                                                                          child: const Text(
                                                                            "Pay Now",
                                                                            style: TextStyle(
                                                                              fontSize: 20,
                                                                              fontWeight: FontWeight.bold,
                                                                              color: Colors.white,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    )


                                                                  ],
                                                                ),


                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    });
                                              },
                                              child: const Text("Buy@ Rs 999(1 month)"),
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),

                          ],
                        )
                      ],
                    )
                  ],

                ),

              ),
            ],
          ),
        ),
      )

    );

  }

}



