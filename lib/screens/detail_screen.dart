import 'package:flutter/material.dart';
import 'package:food_court/models/restaurants.dart';

class DetailScreen extends StatelessWidget {
  final Restaurants restaurants;

  const DetailScreen({Key? key, required this.restaurants}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return DetailWebPage(restaurants: restaurants);
      } else {
        return DetailMobilePage(restaurants: restaurants);
      }
    });
  }
}

class DetailMobilePage extends StatelessWidget {
  final Restaurants restaurants;

  const DetailMobilePage({Key? key, required this.restaurants})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
          Stack(children: [
            AspectRatio(
              aspectRatio: 1.5,
              child: Image.asset(
                restaurants.imageAssets,
                fit: BoxFit.cover,
              ),
            ),
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
            )),
          ]),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            restaurants.name,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const FavButton(),
                        ]),
                    const SizedBox(height: 8),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 20,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          restaurants.rating,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Divider(
                      color: Colors.grey,
                      height: 2,
                    ),
                    const SizedBox(height: 16),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red[600],
                            size: 18,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              restaurants.address,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ]),
                    const SizedBox(height: 16),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.access_time,
                            color: Colors.black,
                            size: 18,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              restaurants.timeOperation,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ]),
                    const SizedBox(height: 16),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.local_phone,
                            color: Colors.black,
                            size: 18,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              restaurants.phone,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ]),
                    const SizedBox(height: 24),
                    const Text(
                      "Foto",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: restaurants.imageUrl.map((url) {
                          return Padding(
                            padding: const EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(url),
                            ),
                          );
                        }).toList(),
                      ),
                    )
                  ])),
        ])));
  }
}

class DetailWebPage extends StatefulWidget {
  final Restaurants restaurants;

  const DetailWebPage({Key? key, required this.restaurants}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: Center(
          child: SizedBox(
            width: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Food Court',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.close,
                            color: Colors.black,
                          )),
                    ]),
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                          children: [
                            AspectRatio(
                              aspectRatio: 2.1,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  widget.restaurants.imageAssets,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Scrollbar(
                              controller: _scrollController,
                              child: AspectRatio(
                                aspectRatio: 6,
                                child: ListView(
                                  controller: _scrollController,
                                  scrollDirection: Axis.horizontal,
                                  children:
                                      widget.restaurants.imageUrl.map((url) {
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                        child: Image.network(
                                          url,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              )
                            )
                          ]
                        )
                      ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              widget.restaurants.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow[700],
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow[700],
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow[700],
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow[700],
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow[700],
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        widget.restaurants.rating,
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  const FavButton()
                                ]),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Colors.red[600],
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                    child: Text(
                                  widget.restaurants.address,
                                  textAlign: TextAlign.justify,
                                ))
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: <Widget>[
                                const Icon(
                                  Icons.access_time_outlined,
                                  color: Colors.black,
                                ),
                                const SizedBox(width: 8),
                                Text(widget.restaurants.timeOperation)
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: <Widget>[
                                const Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                ),
                                const SizedBox(width: 8),
                                Text(widget.restaurants.phone)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class FavButton extends StatefulWidget {
  const FavButton({super.key});

  @override
  State<StatefulWidget> createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ));
  }
}
