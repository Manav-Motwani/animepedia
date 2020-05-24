import 'package:animepedia/colours.dart';
import 'package:animepedia/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'data.dart';

class Middle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: EdgeInsets.all(32),
      child: Swiper(
        pagination: SwiperPagination(
                    builder:
                        DotSwiperPaginationBuilder(activeSize: 20, space: 8),
                  ),
        itemCount: characters.length,
        itemWidth: MediaQuery.of(context).size.width - 2 * 64 ,
        layout: SwiperLayout.STACK,
         itemBuilder: (context,int index){
          return InkWell(
              onTap: (){
                Navigator.push(context, PageRouteBuilder(pageBuilder: (context,a,b)=>DetailPage(charInfo: characters[index],)));
              },        
              child: Stack(
              children: <Widget>[
                Column(
                  children: [
                    SizedBox(height: 100,),
                    Card(
                      elevation: 8,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children : <Widget>[
                            SizedBox(height: 100,),
                            Text(
                              characters[index].name,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 44,
                                color: Color(0xff47455f),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'Dragon Ball Z',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 23,
                                color: Color(0xff47455f),
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height:16.0),
                            Row(
                              children: <Widget>[
                                Text(
                              'Know More',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 18,
                                color: Color(0xffe4979e),
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Icon(Icons.arrow_forward,color: secondaryTextColor,),
                              ],
                            ),
                          ]
                        ),
                      ),
                    ),
                    
                  ],
                ),
              // Image.asset(characters[index].iconImage,),
              Hero(
                tag: characters[index].position,
                child: Container(
                      width: 120.0,
                      height: 245.0,
                      margin: EdgeInsets.only(left:80),
                        alignment: Alignment.center,
                        decoration: new BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(characters[index].iconImage,),
                            fit: BoxFit.fill
                        ),
    ),
  ),
              )
              
              ],
            ),
          );
        },
      ),
    );
  }
}