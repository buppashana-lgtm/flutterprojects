import 'package:flutter/material.dart';
import 'detailpage.dart';


class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => dashboardState();
}

class dashboardState extends State<dashboard> {
  horizontallistitem(size,String title,url,date){
    return  GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (context)=>detailPage(),
          )
        );
      },
      child: Stack(
        children: [
          Container(

              height: size.height/4.5,
              width: size.width/1.4,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color:Colors.black38,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(fit:BoxFit.cover,url
                    ),
              )

          ),
          Container(

            height: size.height/4.5,
            width: size.width/1.4,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color:Colors.black38,
                borderRadius: BorderRadius.circular(20)
            ),

          ),
          Positioned(
            bottom:45,
            left:30,
            child:Container(
              width: size.width/2,
              child: Text(title,
                overflow: TextOverflow.ellipsis,maxLines: 2,
                style:TextStyle(color:Colors.white,fontSize:16),),

            ) ,
          ),
          Positioned(
            bottom:28,
            left:30,
            child:Text(date,
              style:TextStyle(color:Colors.white,fontSize:16),) ,
          ),
          Positioned(
              bottom:30,right:30,
              child: Icon(Icons.play_circle_fill_rounded,
                  color:Colors.white)
          )
        ],
      ),
    );
  }

  static verticallistitem(size,String title,url,date,source){
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height:100,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
                child: Image.network(fit: BoxFit.cover,
                    url),
              ),
            ),
            Container(
              height: 120,
              width: 120,
              margin: EdgeInsets.all(15),
              child:Center(
                child: Icon(Icons.play_circle_fill_rounded,
                  size: 50,color: Colors.white,
                ),
              ),
            )],
        ),
        Container(
          height: 90,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width:size.width/2,
                child: Text(title,
                  maxLines: 2,overflow: TextOverflow.ellipsis,),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10,right:10,
                        top: 8,bottom: 8),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text(source,style: TextStyle(color: Colors.white),),
                  ),
                  SizedBox(width: 15,),
                  Text(date,)
                ],
              )
            ],
          ),
        )

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
          //horizontal
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:Row(

              children: [
                //horizontal card
                horizontallistitem(size,
                    "title happy dashain pcps family gdygsuyhidxbhugdx",
                "https://thumbs.dreamstime.com/b/idyllic-summer-landscape-clear-mountain-lake-alps-45054687.jpg",
                "03 feb 2026"),
                horizontallistitem(size,
                    "title happy dashain pcps family gdygsuyhidxbhugdx",
                    "https://thumbs.dreamstime.com/b/idyllic-summer-landscape-clear-mountain-lake-alps-45054687.jpg",
                    "04 feb 2026"),
                horizontallistitem(size,
                    "title happy dashain pcps family gdygsuyhidxbhugdx",
                    "https://thumbs.dreamstime.com/b/idyllic-summer-landscape-clear-mountain-lake-alps-45054687.jpg",
                    "05 feb 2026"),
                horizontallistitem(size,
                    "title happy dashain pcps family gdygsuyhidxbhugdx",
                    "https://thumbs.dreamstime.com/b/idyllic-summer-landscape-clear-mountain-lake-alps-45054687.jpg",
                    "06 feb 2026"),


              ],
            ),),
          //vertical scroll items
          Container(
            height: size.height/1.6,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  verticallistitem(size,
                  "title happy dashain to pcps family hdebhjhdxjkjd",
                    "https://thumbs.dreamstime.com/b/idyllic-summer-landscape-clear-mountain-lake-alps-45054687.jpg",
                        "02,04,2026",
                    "pcps"
                  ),
                  verticallistitem(size,
                      "title happy dashain to pcps family hdebhjhdxjkjd",
                      "https://thumbs.dreamstime.com/b/idyllic-summer-landscape-clear-mountain-lake-alps-45054687.jpg",
                      "02,04,2026",
                      "pcps"
                  ),
                  verticallistitem(size,
                      "title happy dashain to pcps family hdebhjhdxjkjd",
                      "https://thumbs.dreamstime.com/b/idyllic-summer-landscape-clear-mountain-lake-alps-45054687.jpg",
                      "02,04,2026",
                      "pcps"
                  ),
                  verticallistitem(size,
                      "title happy dashain to pcps family hdebhjhdxjkjd",
                      "https://thumbs.dreamstime.com/b/idyllic-summer-landscape-clear-mountain-lake-alps-45054687.jpg",
                      "02,04,2026",
                      "pcps"
                  ),
                  verticallistitem(size,
                      "title happy dashain to pcps family hdebhjhdxjkjd",
                      "https://thumbs.dreamstime.com/b/idyllic-summer-landscape-clear-mountain-lake-alps-45054687.jpg",
                      "02,04,2026",
                      "pcps"
                  ),




                ],
              ),
            ),
          ),

        ],
      )
      ,



    );
  }
}
