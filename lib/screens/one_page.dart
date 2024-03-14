
import 'package:figma_12task/views/bookread.dart';
import 'package:figma_12task/views/prize_book.dart';
import 'package:figma_12task/views/top_listview_container.dart';
import 'package:flutter/material.dart';

class Onepage extends StatefulWidget {
  const Onepage({super.key});

  @override
  State<Onepage> createState() => _OnepageState();
}

int currentindex = -1;
List<String> list = [
  "All",
  "Romance",
  "Sci-Fi",
  "Fantasy",
  "Classics",
  "Import"
];
List<Prizebook> prizebook = [
  Prizebook(
     topstring: "Ur to'qmoq",
     bottomstring: "O'zbek xalq ertaklari",
      backcolor: const Color(0xffF5EABD),
      image: "https://foydali-fayllar.uz/wp-content/uploads/2021/04/ertaklar.-Ur-toqmoq.jpg",
      prize: 9.99),
  Prizebook(
    topstring: "Yoriltosh",
     bottomstring: "O'zbek xalq ertaklari",
      backcolor: const Color(0xffF8C183),
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMNfJpDzUgR9XuLfNBpdjbgJpWKO842MHujw&usqp=CAU",
      prize: 6.99),
  Prizebook(
    topstring: "Laylak bilan Tulki",
     bottomstring: "O'zbek xalq ertaklari",
      backcolor: const Color(0xffF5EABD),
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrljJCjWDq1qPk4LwRsEi5vIS1NCEnoWmJTg&usqp=CAU",
      prize: 9.99),
  Prizebook(
    topstring: "Zumrad va Qimmat",
     bottomstring: "O'zbek xalq ertaklari",
      backcolor: const Color(0xffF8C183),
      image: "https://cdn.shopify.com/s/files/1/0059/3664/4178/collections/Zumrad_Va_Qimmat_To_plami_image_musavvir_Natalya_Yevdokimova_1024x1024_e4d84fc5-c859-43e5-9c59-8378a6e4e60d_1200x1200.jpg?v=1601220723",
      prize: 6.99),
];

class _OnepageState extends State<Onepage> {
   int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(currentIndex: currentIndex, 
       onTap: (index){
        currentIndex=index;
        setState(() {
          
        });
         

       },
       selectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          activeIcon:Image.asset(
              "assets/images/home.png",
              height: 28,
              color: Colors.black,
            ), 
          
            icon: Image.asset(
              "assets/images/home.png",
              height: 28,
              color: Colors.grey,
            ),
            label: "Home"),
        BottomNavigationBarItem(
          activeIcon:Image.asset("assets/images/bottom_2.png",
                height: 25, color: Colors.black), 
            icon: Image.asset("assets/images/bottom_2.png",
                height: 25, color: Colors.grey),
            label: "Category"),
        BottomNavigationBarItem(
          activeIcon: Image.asset(
              "assets/images/bottom_3.png",
              color: Colors.black,
              width: 30,
            ),
            icon: Image.asset(
              "assets/images/bottom_3.png",
              color: Colors.grey,
              width: 30,
            ),
            label: "Saved"),
        BottomNavigationBarItem(
          activeIcon: Image.asset("assets/images/bottom_4.png", color: Colors.black),
            icon:
                Image.asset("assets/images/bottom_4.png", color: Colors.grey),
            label: "Profile"),
      ]),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: const TextSpan(
                          text: "Book ",
                          children: [
                            TextSpan(
                                text: "Junction",
                                style: TextStyle(color: Color(0xffD1618A)))
                          ],
                          style: TextStyle(
                            fontFamily: "Playfair",
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ))),
                  Image.asset(
                    "assets/images/notification.png",
                    height: 35,
                    width: 35,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Image.asset("assets/images/search.png"),
                    hintText: "Search for books",
                    suffixIcon: Image.asset(
                      "assets/images/microphone2.png",
                      height: 40,
                      width: 40,
                    ),
                    fillColor: const Color(0xffF8F8F8),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none)),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 40,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    bool isselected = index == currentindex;
                    return Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: TopListView(
                          isselected: isselected,
                          text: list[index],
                          onpressed: () {
                            currentindex = index;
                            setState(() {
                              debugPrint("${list[index]}");
                            });
                          }),
                    );
                  }),
            ),
            const SizedBox(
              height: 13,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: const Text(
                "Continue Reading",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Playfair",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 144,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Bookread(
                      ertakname:"Oltinbaliq" ,
                      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-hNTwYGX91-gnsZIiUqFG5CW1cP2f9164GQ&usqp=CAU",
                      text1: "Oltin Baliq",
                      text2: "O'zbek  xalq ertagi",
                      color: const Color(0xffCBF5FF),
                    ),
                  ),
                  Bookread(
                     ertakname: "Maymun bilan to'ti",
                    image: "https://assets.asaxiy.uz/product/items/desktop/0132dfd11fdb5249972a027d5c9db9082020111815334129812n8tYzx1i3k.jpg.webp",
                    text1: "Maymun bilan to'ti",
                    text2: "Samantha Shannon",
                    color: const Color(0xffDEDFE2),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,top: 10),
              child: const Text(
                "Best Sellers",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Playfair",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: prizebook.length,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 300),
                itemBuilder: (context, index) {
                  return Padding
                  (
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: prizebook[index]);
                })
          ],
        ),
      )),
    );
  }
}
