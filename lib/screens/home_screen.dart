import 'package:coffee_app/screens/product_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List products = [
    "Cappuccino",
    "Espresso",
    "Coffee",
    "Latte",
    "Coffee",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Icons row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Icon one
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color(0xff37373E),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.apps,
                        color: Colors.black45,
                        size: 30,
                      ),
                    ),
                    // Icon two
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color(0xff37373E),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.black45,
                        size: 30,
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                // Heading
                const Text(
                  "Find the best \ncoffee for you",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                // Search bar container
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color(0xff37373E),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.black45,
                        size: 30,
                      ),
                      Container(
                        height: 55,
                        margin: const EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Center(
                          child: TextFormField(
                            cursorColor: Colors.black,
                            decoration: const InputDecoration(
                                hintText: "Find your coffee",
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < products.length; i++)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            products[i],
                            style: TextStyle(
                                color: i == 0 ? Colors.amber : Colors.grey),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Box Container
                Row(
                  children: [
                    Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width / 2.4,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xff37373E),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  ProductScreen()),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                  child: Image.asset("assets/images/coffee1.png",
                                    fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              const Text("Cuppuccino", style: TextStyle(color: Colors.white,
                                  letterSpacing: 1,fontSize: 21,fontWeight: FontWeight.w600),),
                              const SizedBox(height: 5,),
                              const Text("with out milk", style: TextStyle(color: Colors.white,letterSpacing: 1,fontSize: 15,),),
                            const SizedBox(height: 5,),
                              Row(
                              children:  [
                                const Text("\$", style: TextStyle(color: Colors.orange,fontSize: 15,),),const SizedBox(width: 4,),
                                const Text("4.20", style: TextStyle(color: Colors.white,fontSize: 15,),),
                                const Spacer(),
                                Container(
                                  alignment: Alignment.topRight,
                                  margin: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: 25,width: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.orange,
                                    ),
                                    child: const Center(child: Icon(Icons.add,size: 14,)),
                                  ),
                                )
                              ],
                            )
                            ],
                          ),
                        ),
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width / 2.5,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xff37373E),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("assets/images/coffee2.jpg",fit: BoxFit.cover,height: 140,),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                const Text("Espresso", style: TextStyle(color: Colors.white,letterSpacing: 1,fontSize: 21,fontWeight: FontWeight.w600),),
                                const SizedBox(height: 5,),
                                const Text("with out milk", style: TextStyle(color: Colors.white,letterSpacing: 1,fontSize: 15,),),
                                const SizedBox(height: 5,),
                                Row(
                                  children:  [
                                    const Text("\$", style: TextStyle(color: Colors.orange,fontSize: 15,),),
                                    const SizedBox(width: 4,),
                                    const Text("6.24", style: TextStyle(color: Colors.white,fontSize: 15,),),
                                    const Spacer(),
                                    Container(
                                      alignment: Alignment.topRight,
                                      margin: const EdgeInsets.only(right: 10),
                                      child: Container(
                                        height: 20,width: 20,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.orange,
                                        ),
                                        child: const Center(child: Icon(Icons.add)),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Container(
                  height: 160,
                  width: 360,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xff37373E),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/coffee3.png",height: 250,width: 150,fit: BoxFit.fitHeight,),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Text("5 Coffee Beans For \n you Must Try!", style: TextStyle(color: Colors.white,
                              letterSpacing: 1,fontSize: 16,fontWeight: FontWeight.w600),),
                            const SizedBox(height: 10,),
                          const Text("with out milk", style: TextStyle(color: Colors.white,letterSpacing: 1,fontSize: 15,),),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:  [
                              const Text("\$", style: TextStyle(color: Colors.orange,fontSize: 16,),),const SizedBox(width: 4,),
                              const Text("6.24", style: TextStyle(color: Colors.white,fontSize: 16,),),
                           const SizedBox(width: 30,),
                              Container(
                                height: 30,width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.orange,
                                ),
                                child: const Center(child: Icon(Icons.add)),
                              )
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
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        child : const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home, color: Colors.orange,size: 35,),
            Icon(Icons.card_travel_sharp, color: Colors.grey,size: 35,),
            Icon(Icons.favorite, color: Colors.grey,size: 35,),
            Icon(Icons.person, color: Colors.grey,size: 35,),
          ],
        )
      ),
    );
  }
}
