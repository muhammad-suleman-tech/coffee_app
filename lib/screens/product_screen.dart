import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {

  List sizes = ['S','M','L'];

   ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.7,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                ),
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("assets/images/coffee2.jpg"),
                    fit: BoxFit.cover,
                    opacity: 0.9,
                ),
              ),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Icon(Icons.arrow_back_rounded,color: Colors.grey,size: 30,),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Icon(Icons.notifications,color: Colors.grey,size: 30,),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),

              // Rating Container
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black26.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text("Cappuccino", style: TextStyle(color: Colors.white,
                            letterSpacing: 1,fontSize: 21,fontWeight: FontWeight.w600),),
                         SizedBox(height: 3,),
                         Text("with out milk", style: TextStyle(color: Colors.white,letterSpacing: 1,fontSize: 15,),),
                        SizedBox(height: 3,),
                        Row(
                            children: [
                              Icon(Icons.star,color: Colors.amber,size: 20,),SizedBox(width: 4,),
                              Text("4.5", style: TextStyle(color: Colors.grey,letterSpacing: 1,fontSize: 15,),),

                            ],
                          )
                      ],
                    ),
                  ),
                )
              ],
            ),
            ),
            const SizedBox(height: 10,),
           Padding(
               padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 20),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children:  [
                 const Text("Description",
                   textAlign: TextAlign.justify,
                   style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),const SizedBox(height: 10,),
                 const Text("A cappuccino is a coffee-based drink made primary with expresso and oat milk cappuccino is a coffee-based drink made primary with expresso.",style: TextStyle(color: Colors.grey,fontSize: 16,),),
                  const SizedBox(height: 10,),
                 const Text("Size.",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                 for(int i=0; i< sizes.length;i++)
                     Container(
                        margin: const EdgeInsets.all(10),
                       padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                       decoration: BoxDecoration(
                         color: Colors.black,
                         border: Border.all(
                           color: i ==0 ? Colors.orange : Colors.grey
                         ),
                         borderRadius: BorderRadius.circular(10)
                       ),
                       child: Text(sizes[i],
                         style: const TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                     ),
                   ],
                 ),
                 const SizedBox(height: 7,),
                 SizedBox(
                   height: 50,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       const Row(
                         children: [
                           Text("\$", style: TextStyle(color: Colors.orange,fontSize: 16,),),
                           SizedBox(width: 10,),
                           Text("4.20", style: TextStyle(color: Colors.white,fontSize: 18,),),
                         ],
                       ),
                       Container(
                         height: 55,
                         padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 10),
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                             color: Colors.orange
                         ),
                         child: const Text("Buy now",
                           style: TextStyle(color: Colors.white,fontSize: 20),
                         ),
                       ),
                     ],
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
