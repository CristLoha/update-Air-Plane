import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/interest_item.dart';
import 'package:airplane/ui/widgets/photo_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/image_destination1.png',
            ),
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 236,
        ),
        height: 214,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget content() {
      Widget emblem() {
        return Container(
          margin: const EdgeInsets.only(top: 30),
          width: 108,
          height: 24,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/icon_emblem.png',
              ),
            ),
          ),
        );
      }

      Widget title() {
        Widget rating() {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_star.png'),
                  ),
                ),
              ),
              const SizedBox(width: 1),
              Text(
                '4.5',
                style: whiteTextStyle.copyWith(fontWeight: medium),
              ),
            ],
          );
        }

        return Container(
          margin: const EdgeInsets.only(
            top: 256,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lake Ciliwung',
                      style: whiteTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'Tangerang',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
              rating(),
            ],
          ),
        );
      }

      Widget description() {
        Widget about() {
          return Text(
            'About',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          );
        }

        Widget desc() {
          return Text(
            'Berada di jalur jalan provinsi yang menghubungkan Denpasar\nSingaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
            style: blackTextStyle.copyWith(
              height: 2,
            ),
          );
        }

        Widget titlePhotos() {
          return Text(
            'Photos',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          );
        }

        Widget photos() {
          return Row(
            children: const [
              PhotoItem(imageUrl: 'assets/image_photo1.png'),
              PhotoItem(imageUrl: 'assets/image_photo2.png'),
              PhotoItem(imageUrl: 'assets/image_photo3.png'),
            ],
          );
        }

        Widget titleInterest() {
          return Text(
            'Interests',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          );
        }

        Widget interest() {
          return Row(
            children: const [
              InterestItem(
                text: 'Kids Park',
              ),
              InterestItem(
                text: 'Honor Bridge',
              ),
            ],
          );
        }

        Widget interest2() {
          return Row(
            children: const [
              InterestItem(
                text: 'City Museum',
              ),
              InterestItem(
                text: 'Centra Mall',
              ),
            ],
          );
        }

        Widget priceButton() {
          Widget button() {
            return CustomButton(
              title: 'Book Now',
              onPressed: () {},
              widht: 170,
            );
          }

          return Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 2.500.000',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'per orang',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      ),
                    ],
                  ),
                ),
                button(),
              ],
            ),
          );
        }

        return Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              about(),
              const SizedBox(height: 6),
              desc(),
              const SizedBox(height: 20),
              titlePhotos(),
              const SizedBox(height: 6),
              photos(),
              const SizedBox(height: 20),
              titleInterest(),
              const SizedBox(height: 6),
              interest(),
              const SizedBox(height: 10),
              interest2(),
              priceButton(),
            ],
          ),
        );
      }

      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        width: double.infinity,
        child: Column(
          children: [
            emblem(),
            title(),
            description(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backroundImage(),
            customShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}
