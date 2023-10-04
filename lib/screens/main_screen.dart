import 'package:flutter/material.dart';
import 'package:food_court/models/restaurants.dart';
import 'package:food_court/screens/detail_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Food Court'),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const RestaurantsList();
          } else if (constraints.maxWidth <= 900) {
            return const RestaurantsGrid(gridCount: 2);
          } else if (constraints.maxWidth <= 1200) {
            return const RestaurantsGrid(gridCount: 3);
          } else {
            return const RestaurantsGrid(gridCount: 4);
          }
        }));
  }
}

class RestaurantsList extends StatelessWidget {
  const RestaurantsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        itemCount: restaurantsList.length,
        itemBuilder: (context, index) {
          final Restaurants restaurants = restaurantsList[index];

          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(restaurants: restaurants);
              }));
            },
            child: Card(
              margin: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: AspectRatio(
                          aspectRatio: 1,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4),
                                bottomLeft: Radius.circular(4)),
                            child: Image.asset(
                              restaurants.imageAssets,
                              fit: BoxFit.cover,
                            ),
                          ))),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    restaurants.name,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.left,
                                  ),
                                  Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow[700],
                                        size: 18,
                                      ),
                                      Text(
                                        restaurants.rating,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 16),
                              Text(restaurants.address,
                                  maxLines: 3, overflow: TextOverflow.ellipsis)
                            ]),
                      ))
                ],
              ),
            ),
          );
        });
  }
}

class RestaurantsGrid extends StatelessWidget {
  final int gridCount;

  const RestaurantsGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: restaurantsList.map((restaurants) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(restaurants: restaurants);
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: Image.asset(
                    restaurants.imageAssets,
                    fit: BoxFit.cover,
                  )),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      restaurants.name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          restaurants.rating,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, bottom: 8),
                    child: Text(restaurants.address),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
