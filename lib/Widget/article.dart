import 'package:flutter/material.dart';
import 'package:pam_lab4/Module/news.dart';


class Article extends StatelessWidget {
  const Article({super.key, required this.news});

  final News news;

  @override
  Widget build(BuildContext context) {
    return Container(                                      //the box
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: Colors.grey,
              width: 1
          )
      ),
      child: Row(
        children: [
          Container(
              width: 125,
              height: 156,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(50)
                ),
              ),
              child: Image.network(
                fit: BoxFit.fitHeight,
                news.cover,                             //news image
              )
          ),

          const SizedBox(width: 16),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 44,
                  width: 222,
                  child: Text(
                    news.title,                              //news title
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    maxLines: 2,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 23,
                      height: 23,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: NetworkImage(news.portal.logo),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),

                    Text(news.portal.title,                              //bbc
                      style: const TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 16,
                        fontWeight: FontWeight.w600, color: Color(0xff2C3A48),
                      ),
                    ),


                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            width: 1.0, color: const Color(0xffFE837D)),
                        color: Color(0xffFfffff),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 16,
                            width: 55,
                            child: Text(
                              news.category,                              // category box
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontFamily: 'Source Sans Pro',
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFF6861),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      child: Icon(
                        Icons.thumb_up_alt_rounded,               //like
                        color: Colors.deepOrange,
                        size: 15.0,
                      ),
                    ),
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text('${news.likes}',
                          style: const TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: SizedBox(
                        child: Icon(
                          Icons.comment,                         //comment
                          color: Colors.deepOrange,
                          size: 15.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: Text('${news.comments}',
                          style: const TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 20),
                      child: SizedBox(
                        child: Icon(Icons.bookmark_border,                 //bookmark
                          color: Colors.deepOrange,
                          size: 15.0,
                        ),
                      ),
                    ),
                  ],
                )
              ]
          ),
        ],
      ),
    );
  }
}