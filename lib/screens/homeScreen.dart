
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/const/colors.dart';
import 'package:food_delivery/widgets/customNavBar.dart';
import 'package:food_delivery/utils/helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = "/homeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Good morning David",
                          style: Helper
                              .getTheme(context)
                              .headline5,
                        ),
                        Image.asset(Helper.getAssetName("cart.png", "virtual"))
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text("Deilivering to "),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20
                    ),
                    child: DropdownButtonHideUnderline(
                      child: SizedBox(
                        width: 250,
                        child: DropdownButton(
                          value: "current location",
                          items: [
                            const DropdownMenuItem(
                              child: Text("Current Location"),
                              value: "current location",
                            ),
                          ],
                          icon: Image.asset(
                            Helper.getAssetName(
                              "dropdown_filled.png", "virtual",
                            ),
                          ),
                          style: Helper
                              .getTheme(context)
                              .headline4,
                          onChanged: (String? value) {},
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: const ShapeDecoration(
                        shape: StadiumBorder(
                          side: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        color: AppColor.placeholderBg,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Image.asset(
                            Helper.getAssetName("search_filled.png", "virtual"),
                          ),
                          hintText: "Search food",
                          hintStyle: const TextStyle(
                            color: AppColor.placeholder,
                            fontSize: 18,
                          ),
                          contentPadding: const EdgeInsets.only(
                            top: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    height: 140,
                    padding: const EdgeInsets.only(left: 20,),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [

                          CategoryCard(image: Image.asset(
                              Helper.getAssetName(
                                  "hamburger2.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                            name: "Offers",
                          ),
                          const SizedBox(width: 10,),

                          CategoryCard(image: Image.asset(
                            Helper.getAssetName(
                                "rice2.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                            name: "Sri Lankan",
                          ),
                          const SizedBox(width: 10,),

                          CategoryCard(image: Image.asset(
                            Helper.getAssetName(
                                "fruit.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                            name: "Italian",
                          ),
                          const SizedBox(width: 10,),

                          CategoryCard(image: Image.asset(
                            Helper.getAssetName(
                                "rice.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                            name: "Indian",
                          ),
                          const SizedBox(width: 10,),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Restaurants",
                          style: Helper.getTheme(context).headline5,
                        ),
                        TextButton(onPressed: () {}, child: const Text("View All"))
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  RestaurantCard(
                    image:Image.asset(
                      Helper.getAssetName("pizza2.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "Minute by tuk tuk",

                  ),
                  RestaurantCard(image:Image.asset(
                    Helper.getAssetName("breakfast.jpg", "real"),
                    fit: BoxFit.cover,
                  ),
                    name: "Cafe de Noir",
                  ),
                  RestaurantCard(
                    image:Image.asset(
                      Helper.getAssetName("bakery.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "Bakes by Tella",
                  ),

                  const SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Most Popular",
                          style: Helper.getTheme(context).headline5,
                        ),
                        TextButton(onPressed: () {},
                            child: const Text("View All"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 250,
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MostPopularCard(

                            image: Image.asset(
                              Helper.getAssetName("pizza4.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Cafe De Bambaa",
                          ),

                          const SizedBox(width: 30,),
                          MostPopularCard(
                            image: Image.asset(
                              Helper.getAssetName("dessert3.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Burger by Bella",
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent items",
                          style: Helper.getTheme(context).headline5,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("View all"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        RecentItemsCard(
                          image: Image.asset(
                            Helper.getAssetName("pizza3.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                          name: "Mulberry Pizza by Josh",
                        ),
                        RecentItemsCard(image: Image.asset(
                          Helper.getAssetName("coffee.jpg", "real"),
                          fit: BoxFit.cover,
                        ),
                          name: "Barita",
                        ),
                        RecentItemsCard(image: Image.asset(
                          Helper.getAssetName("pizza.jpg", "real"),
                          fit: BoxFit.cover,
                        ),
                          name: "Pizza Rush Hour",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
              left: 0,
              child: CustomNavBar(
                home: true,
              )),
        ],
      ),
    );
  }
}

class RecentItemsCard extends StatelessWidget {
  const RecentItemsCard({
    super.key,

    required String name,
    required Image image,
  }): _name = name,
      _image = image;

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 80,
            height: 80,
            child: _image,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    _name,
                  style: Helper.getTheme(context).headline4!
                  .copyWith(color: AppColor.primary),
                ),
                const Row(
                  children: [
                    Text("Cafe"),
                    SizedBox(width: 5,),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text("Western Food"),
                    SizedBox(width: 20,),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      Helper.getAssetName("star_filled.png", "virtual"),
                    ),
                    const SizedBox(width: 5,),
                    const Text(
                      "4.9",
                      style: TextStyle(
                        color: AppColor.orange,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    const Text("(124) Ratings"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


class MostPopularCard extends StatelessWidget {
  const MostPopularCard({
    super.key,
    required Image image,
    required name,
  }) : _image = image,
        _name = name;

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 285,
            height: 190,
            child: _image,
          ),
        ),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    _name,
                    style: Helper.getTheme(context).headline3,
                  ),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                children: [
                  const Text("Cafe"),
                  const SizedBox(width: 5,),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      ".",
                      style: TextStyle(
                        color: AppColor.orange,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5,),
                  const Text("Western Food"),
                  const SizedBox(width: 10,),
                  Image.asset(
                    Helper.getAssetName("star_filled.png", "virtual"),
                  ),
                  const SizedBox(width: 5,),
                  const Text(
                    "4.9",
                    style: TextStyle(
                      color: AppColor.orange,
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



class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    super.key,
    required Image image,
    required name,
  }): _image = image,
        _name = name;

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 200,
              width: double.infinity,
              child: _image,
              ),
          const SizedBox(height: 10,),
          Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20,
              ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      _name,
                      style: Helper.getTheme(context).headline3,
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Image.asset(
                        Helper.getAssetName("star_filled.png", "virtual"),
                    ),
                    const SizedBox(width: 5,),
                    const Text(
                      "4.9",
                      style: TextStyle(
                          color: AppColor.orange,
                      ),
                    ),
                    const SizedBox(width: 5,),
                    const Text("(124 ratings)"),
                    const SizedBox(width: 5,),
                    const Text("Cafe"),
                    const SizedBox(width: 5,),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5,),
                    const Text("Western Food"),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required Image image,
    required name,
  }) : _image = image,
        _name = name;

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 100,
            height: 100,
            child: _image,
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          _name,
          style: Helper.getTheme(context)
              .headline4!
              .copyWith(color: AppColor.primary, fontSize: 16),
        ),
      ],
    );
  }
}

