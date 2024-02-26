import 'package:flutter/material.dart';
import 'package:job_hunt_app/view/Home_Screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<Map<String, dynamic>> category = [
    {
      "pic": "https://www.apc.edu.au/wp-content/uploads/2023/04/Graphic-Designer-4.jpg",
      "text": "Design & art ",
      "item": "5 jobs",
    },
    {
      "pic": "https://www.ibusinessinstitute.org/blog/wp-content/uploads/2022/11/1.png",
      "text": "Finance",
      "item": "7 jobs",
    },
    {
      "pic": "https://media.istockphoto.com/id/1356364287/photo/close-up-focus-on-persons-hands-typing-on-the-desktop-computer-backlit-keyboard-screens-show.jpg?s=612x612&w=0&k=20&c=ijjq-DLNxIaPuGvIX8k06IZxMAjGpyJeboaV_byCX9k=",
      "text": "Developer",
      "item": "12 jobs",
    },
    {
      "pic": "https://thumbs.dreamstime.com/b/education-study-books-high-school-university-16383080.jpg",
      "text": "Education",
      "item": "15 jobs",
    },
    {
      "pic": "https://content.jdmagicbox.com/comp/allahabad/b4/0532px532.x532.190510161607.y8b4/catalogue/n-i-real-estate-civil-lines-allahabad-estate-agents-yw16py6790.jpg",
      "text": "Real Estate",
      "item": "3 jobs",
    },
    {
      "pic": "https://thumbs.dreamstime.com/b/good-health-word-cloud-hand-marker-concept-white-background-184068166.jpg",
      "text": "Health",
      "item": "8 jobs",
    },
    {
      "pic": "https://thumbs.dreamstime.com/z/any-other-options-woman-holding-chalkboard-words-any-other-options-blue-sky-background-115717627.jpg",
      "text": "Other",
      "item": "24 jobs",
    },
  ];
  int select_id = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        title: Text(
          "Categories",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: height * 0.9,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 7,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        select_id = index;
                        if (select_id == 0) {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => Shopping_Screen(),
                          //     ));
                        }
                      },
                      child: Container(
                        height: height * 0.15,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(
                            vertical: height * 0.02, horizontal: width * 0.06),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(height * 0.015),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 1),
                                color: Colors.grey,
                                blurRadius: 3,
                                spreadRadius: 3,
                                blurStyle: BlurStyle.outer,
                              ),
                            ]),
                        child: Row(
                          children: [
                            Container(
                              height: height * 0.11,
                              width: width * 0.25,
                              margin: EdgeInsets.only(left: width * 0.04),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                BorderRadius.circular(height * 0.02),
                              ),
                              child: Image.network(
                                category[index]['pic'],
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.08,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  category[index]['text'],
                                  style: TextStyle(
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  category[index]['item'],
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      child: Icon(Icons.arrow_forward_ios_rounded),
                      right: width * 0.12,
                      top: height * 0.08,
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
