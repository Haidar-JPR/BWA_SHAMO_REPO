import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      body: ListView(
        children: const [
          HeaderHomePage(),
          CategoriesHome(),
          PopularProductsHome(),
          CardProductsHome(),
          NewArrivalHome(),
          NewArrivalSection(),
        ],
      ),
    );
  }
}

class NewArrivalSection extends StatelessWidget {
  const NewArrivalSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 14,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Wrap(
        children: const [
          NewArrivalItems(
            img: 'assets/img_shoes.png',
            category: 'FootBall',
            name: 'Predator 20.3 Firm Ground',
            price: '\$68,47',
          ),
          NewArrivalItems(
            img: 'assets/img_shoes.png',
            category: 'FootBall',
            name: 'Predator 20.3 Firm Ground',
            price: '\$68,47',
          ),
          NewArrivalItems(
            img: 'assets/img_shoes.png',
            category: 'FootBall',
            name: 'Predator 20.3 Firm Ground',
            price: '\$68,47',
          ),
          NewArrivalItems(
            img: 'assets/img_shoes.png',
            category: 'FootBall',
            name: 'Predator 20.3 Firm Ground',
            price: '\$68,47',
          ),
        ],
      ),
    );
  }
}

class NewArrivalItems extends StatelessWidget {
  const NewArrivalItems({
    Key? key,
    required this.img,
    required this.category,
    required this.name,
    required this.price,
  }) : super(key: key);

  final String img;
  final String category;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/products');
      },
      child: Container(
        margin: EdgeInsets.only(bottom: defaultMargin),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                img,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category,
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    name,
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    price,
                    style: priceTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewArrivalHome extends StatelessWidget {
  const NewArrivalHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        bottom: 14,
      ),
      child: Text(
        'New Arrivals',
        style: primaryTextStyle.copyWith(
          fontSize: 22,
          fontWeight: semiBold,
        ),
      ),
    );
  }
}

class CardProductsHome extends StatelessWidget {
  const CardProductsHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: defaultMargin,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            ProductItems(
              img: 'assets/img_shoes.png',
              category: 'Hiking',
              name: 'COURT VISION 2.0',
              price: '\$58,67',
            ),
            ProductItems(
              img: 'assets/img_shoes.png',
              category: 'Hiking',
              name: 'COURT VISION 2.0',
              price: '\$58,67',
            ),
            ProductItems(
              img: 'assets/img_shoes.png',
              category: 'Hiking',
              name: 'COURT VISION 2.0',
              price: '\$58,67',
            ),
          ],
        ),
      ),
    );
  }
}

class ProductItems extends StatelessWidget {
  const ProductItems({
    Key? key,
    required this.img,
    required this.category,
    required this.name,
    required this.price,
  }) : super(key: key);

  final String img;
  final String category;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/products');
      },
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
        ),
        width: 215,
        height: 278,
        decoration: BoxDecoration(
          color: const Color(0XFFECEDEF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: defaultMargin,
            ),
            Image.asset(
              img,
              width: 215,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category,
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    name,
                    style: subtitleTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    price,
                    style: priceTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PopularProductsHome extends StatelessWidget {
  const PopularProductsHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        bottom: 14,
      ),
      child: Text(
        'Popular Products',
        style: primaryTextStyle.copyWith(
          fontSize: 22,
          fontWeight: semiBold,
        ),
      ),
    );
  }
}

class CategoriesHome extends StatelessWidget {
  const CategoriesHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin - 1,
        bottom: defaultMargin,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CategorieItemsHome(
              name: 'All Shoes',
              containerColor: primaryColor,
              borderColor: primaryColor,
              style: primaryTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium,
              ),
            ),
            CategorieItemsHome(
              name: 'Running',
              containerColor: transparantColor,
              borderColor: subtitleTextColor,
              style: subtitleTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium,
              ),
            ),
            CategorieItemsHome(
              name: 'Training',
              containerColor: transparantColor,
              borderColor: subtitleTextColor,
              style: subtitleTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium,
              ),
            ),
            CategorieItemsHome(
              name: 'Basketball',
              containerColor: transparantColor,
              borderColor: subtitleTextColor,
              style: subtitleTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium,
              ),
            ),
            CategorieItemsHome(
              name: 'Hiking',
              containerColor: transparantColor,
              borderColor: subtitleTextColor,
              style: subtitleTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategorieItemsHome extends StatelessWidget {
  const CategorieItemsHome({
    Key? key,
    required this.name,
    required this.style,
    required this.containerColor,
    required this.borderColor,
  }) : super(key: key);

  final String name;
  final Color containerColor;
  final TextStyle style;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      margin: const EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: borderColor,
        ),
      ),
      child: Text(
        name,
        style: style,
      ),
    );
  }
}

class HeaderHomePage extends StatelessWidget {
  const HeaderHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        defaultMargin,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hallo, Subhan Ikraam Haidar',
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
                Text(
                  'haidar.dod@gmail.com',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 16,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
          ),
          // SizedBox(width: 100),
          Image.asset(
            'assets/icon_default_wall.png',
            width: 54,
            height: 54,
          ),
        ],
      ),
    );
  }
}
