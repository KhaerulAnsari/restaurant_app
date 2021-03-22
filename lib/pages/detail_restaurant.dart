import 'package:flutter/material.dart';
import 'package:restaurant_app/model/model_restaurant.dart';
import 'package:restaurant_app/theme.dart';

class DetailRestaurant extends StatelessWidget {
  final RestaurantModel restaurant;

  DetailRestaurant({@required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(color: Color(0xFFD1BDBA)),
        SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                color: whiteColor,
              ),
              Stack(
                children: <Widget>[
                  Hero(
                    tag: restaurant.imageUrls,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 318,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(restaurant.imageAsset),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                                                  child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(0.6)),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  size: 15,
                                ),
                              )),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        // Icon(Icons.favorite)
                      ],
                    ),
                  ),
                ],
              ),
              ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 240),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 20, 25, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Text(
                                restaurant.name,
                                style: relewayBlack.copyWith(
                                    fontSize: 20,
                                    decoration: TextDecoration.none),
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "Senin - Jumat",
                                    style: relewayBlack.copyWith(
                                        fontSize: 14,
                                        decoration: TextDecoration.none),
                                  ),
                                  Text("11.00 - 22.00", style: relewayGrey.copyWith(fontSize: 12, decoration: TextDecoration.none),)
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: greyColor,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                restaurant.location,
                                style: relewayGrey.copyWith(
                                    fontSize: 16,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Information",
                            style: relewayBlack.copyWith(
                                fontSize: 18, decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            restaurant.information,
                            style: relewayGrey.copyWith(
                                fontSize: 14,
                                decoration: TextDecoration.none,
                                height: 1.5),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Menu",
                            style: relewayBlack.copyWith(
                                fontSize: 18, decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 80,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: restaurant.imageUrls.map((url) {
                                return Padding(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Container(
                                    width: 120,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                        image: NetworkImage(url),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color:
                                                Colors.black.withOpacity(0.3),
                                          ),
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: 5, bottom: 5, right: 5),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: <Widget>[
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      10,
                                                  child: Text(
                                                    restaurant.nameFood,
                                                    style: relewayGrey.copyWith(
                                                        fontSize: 16,
                                                        color: whiteColor,
                                                        decoration:
                                                            TextDecoration
                                                                .none),
                                                    maxLines: 1,
                                                    overflow: TextOverflow.clip,
                                                  ),
                                                ),
                                                Text(
                                                  restaurant.priceFood,
                                                  style: numberBlack.copyWith(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 9,
                                                      color: Color(0xFFF0BF3F),
                                                      decoration:
                                                          TextDecoration.none),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FaforiteButton extends StatefulWidget {
  @override
  _FaforiteButtonState createState() => _FaforiteButtonState();
}

class _FaforiteButtonState extends State<FaforiteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
          size: 25,
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        });
  }
}
