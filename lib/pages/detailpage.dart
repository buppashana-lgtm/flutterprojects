import 'package:flutter/material.dart';
import 'package:sectiondapp/pages/dashboard.dart';

class detailPage extends StatefulWidget {
  const detailPage({super.key});

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(

        body: SingleChildScrollView(
          child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                        height: size.height/4,
                        width: size.width,
                        child: Image.network(fit: BoxFit.cover,
                            "https://i0.wp.com/picjumbo.com/wp-content/uploads/silhouettes-of-hawaiian-palms-at-a-gorgeous-sunset-free-image.jpeg?h=800&quality=80"
                        )

                    ),
                    Container(
                      height: size.height/4,
                      width: size.width,
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: const EdgeInsetsGeometry.all(8.0),
                      child: Icon(Icons.arrow_back,color:Colors.white,size:40,),
                    ),
                    Positioned(
                      right: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.share,color: Colors.white,size: 40,),
                      ),
                    ),
                    Container(
                      height: size.height/4,
                      width:size.width,
                      child: Center(
                        child: Icon(Icons.play_circle_fill, size: 60, color: Colors.white,),
                      ),
                    )

                  ],
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Happy dashain everyone"
                      ,style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.bold),maxLines: 2,overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Author Name"),
                          Text("07 oct 2026"),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Text("Happy dashain everyoneHappy dashain everyoneHappy dashain everyoneHappy dashain everyoneHappy dashain everyoneHappy dashain everyoneHappy dashain everyoneHappy dashain everyoneHappy dashain everyone")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:15.0,right: 15),
                  child: Divider(),
                ),
                Row(
                  children: [
                    SizedBox(width: 15,),
                    Text("Related videos",style:TextStyle(fontSize: 18)
                    ),
                  ],
                ),
                dashboardState.verticallistitem(
                    size,
                    "title happy dashain to pcps family hdebhjhdxjkjd",
                    "https://thumbs.dreamstime.com/b/idyllic-summer-landscape-clear-mountain-lake-alps-45054687.jpg",
                    "02,04,2026",
                    "pcps"
                ),
                dashboardState.verticallistitem(
                    size,
                    "title happy dashain to pcps family hdebhjhdxjkjd",
                    "https://thumbs.dreamstime.com/b/idyllic-summer-landscape-clear-mountain-lake-alps-45054687.jpg",
                    "02,04,2026",
                    "pcps"
                ),
                dashboardState.verticallistitem(
                    size,
                    "title happy dashain to pcps family hdebhjhdxjkjd",
                    "https://thumbs.dreamstime.com/b/idyllic-summer-landscape-clear-mountain-lake-alps-45054687.jpg",
                    "02,04,2026",
                    "pcps"
                ),
                dashboardState.verticallistitem(
                    size,
                    "title happy dashain to pcps family hdebhjhdxjkjd",
                    "https://thumbs.dreamstime.com/b/idyllic-summer-landscape-clear-mountain-lake-alps-45054687.jpg",
                    "02,04,2026",
                    "pcps"
                ),
                dashboardState.verticallistitem(
                    size,
                    "title happy dashain to pcps family hdebhjhdxjkjd",
                    "https://thumbs.dreamstime.com/b/idyllic-summer-landscape-clear-mountain-lake-alps-45054687.jpg",
                    "02,04,2026",
                    "pcps"
                ),
                dashboardState.verticallistitem(
                    size,
                    "title happy dashain to pcps family hdebhjhdxjkjd",
                    "https://thumbs.dreamstime.com/b/idyllic-summer-landscape-clear-mountain-lake-alps-45054687.jpg",
                    "02,04,2026",
                    "pcps"
                ),
              ],

          ),
        ),
    );
  }
}