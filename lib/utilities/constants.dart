import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';

const kAbhiUrl =
    'https://digitalmultiplyapis.adityabirlahealth.com/multiply-wellness/wServices_V2/api';
const xabhiapikey1 = 'ZMsJVnVxxjL';
const xabhiapikey2 = '4CYxDBRBH';
const xabhitoken1 = 'V2kpIQwOsP';
const xabhitoken2 = '2mroTNZhRk';
const usertoken = '';
const p1 = '';
const p2 = 'android';
const p3 = '7.5';
const p5 = '';
const kApiKey = 'AIzaSyAXdY56La8YHXRl7SVE30UlUup_nqXJ0uU';
const kYoutubeUrl = 'https://www.youtube.com/watch?v=';
final kSpinkit = SpinKitFadingCircle(
  itemBuilder: (BuildContext context, int index) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: index.isEven ? Colors.red : Colors.green,
      ),
    );
  },
);

const kSpinkitCircle = SpinKitRotatingCircle(
  color: Colors.white,
  size: 50.0,
);

const kSpinkitDoubleBounce = SpinKitDoubleBounce(
  color: Colors.white,
  size: 50.0,
);

final kHomeScreenButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: Colors.red, // background
  foregroundColor: Colors.white,
  minimumSize: const Size.fromHeight(50), // foreground
);

const FOOD_DATA = [
  {"name": "Burger", "brand": "Hawkers", "price": 2.99, "image": "burger.png"},
  {
    "name": "Cheese Dip",
    "brand": "Hawkers",
    "price": 4.99,
    "image": "cheese_dip.png"
  },
  {"name": "Cola", "brand": "Mcdonald", "price": 1.49, "image": "cola.png"},
  {"name": "Fries", "brand": "Mcdonald", "price": 2.99, "image": "fries.png"},
  {
    "name": "Ice Cream",
    "brand": "Ben & Jerry's",
    "price": 9.49,
    "image": "ice_cream.png"
  },
  {
    "name": "Noodles",
    "brand": "Hawkers",
    "price": 4.49,
    "image": "noodles.png"
  },
  {"name": "Pizza", "brand": "Dominos", "price": 17.99, "image": "pizza.png"},
  {
    "name": "Sandwich",
    "brand": "Hawkers",
    "price": 2.99,
    "image": "sandwich.png"
  },
  {"name": "Wrap", "brand": "Subway", "price": 6.99, "image": "wrap.png"}
];
