import 'package:flutter/material.dart';
import 'package:restaurant_app/model/data_restaurant.dart';
import 'package:restaurant_app/pages/detail_restaurant.dart';
import 'package:restaurant_app/theme.dart';

class HomePage extends StatelessWidget {
  // final bool unStar;
  // HomePage({this.unStar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: pinkGreyColor,
          ),
          SafeArea(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: whiteColor,
                  child: ListView(
                    children: [
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 148,
                            decoration: BoxDecoration(
                              color: pinkGreyColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Khaerul Ansari",
                                    style: relewayBlack.copyWith(
                                        fontSize: 24,
                                        color: blackColor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Image.asset("assets/profile.png",
                                      width: 50, height: 50)
                                ]),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Search,\nYour Favorite Restaurant",
                              style: relewayBlack.copyWith(
                                  fontWeight: FontWeight.w400, fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: "Search..."),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 285, left: 25, right: 25,),
                  child: ListView(
                      children: dataRestaurant.map((restaurant) {
                    return Padding(
                      padding: EdgeInsets.only(top: 18),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailRestaurant(restaurant: restaurant);
                          }));
                        },
                        child: Row(
                          children: <Widget>[
                            Hero(
                              tag: restaurant.imageUrls,
                              child: Container(
                                height: 78,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage(restaurant.imageAsset),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 11,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  restaurant.name,
                                  style: relewayBlack.copyWith(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        width: 10,
                                        height: 15,
                                        child: Icon(Icons.location_on,
                                            color: greyColor)),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width -
                                          50 -
                                          10 -
                                          15 -
                                          100 -
                                          11,
                                      child: Text(
                                        restaurant.location,
                                        style: relewayGrey.copyWith(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16),
                                        maxLines: 1,
                                        overflow: TextOverflow.clip,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.star, color: yellowColor),
                                    Icon(Icons.star, color: yellowColor),
                                    Icon(Icons.star, color: yellowColor),
                                    Icon(Icons.star, color: yellowColor),
                                    Icon(Icons.star, color: yellowColor),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      restaurant.numStar,
                                      style: numberBlack.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList()),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
