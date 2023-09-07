import 'dart:convert';

Hotel hotelFromJson(String str) => Hotel.fromJson(json.decode(str));
String hotelToJson(Hotel data) => json.encode(data.toJson());

class Hotel {
   int id;
   String name;
   String adress;
   int minimalPrice;
   String priceForIt;
   int rating;
   String ratingName;
   List<String> imageUrls;
   String description;
   List<String> peculiarities;

  Hotel({
    required this.id,
    required this.name,
    required this.adress,
    required this.minimalPrice,
    required this.priceForIt,
    required this.rating,
    required this.ratingName,
    required this.imageUrls,
    required this.description,
    required this.peculiarities,
  });

  factory Hotel.fromJson(Map<String, dynamic> json) => Hotel(
    id: json["id"],
    name: json["name"],
    adress: json["adress"],
    minimalPrice: json["minimal_price"],
    priceForIt: json["price_for_it"],
    rating: json["rating"],
    ratingName: json["rating_name"],
    imageUrls: List<String>.from(json["image_urls"].map((x) => x)),
    description: json["about_the_hotel"]["description"],
    peculiarities: List<String>.from(json["about_the_hotel"]["peculiarities"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "adress": adress,
    "minimal_price": minimalPrice,
    "price_for_it": priceForIt,
    "rating": rating,
    "rating_name": ratingName,
    "image_urls": List<dynamic>.from(imageUrls.map((x) => x)),
    "description": description,
    "peculiarities": List<dynamic>.from(peculiarities.map((x) => x)),
  };
}





// class Hotel {
//   final String id;
//   final String adress;
//   final String minimal_price;
//   final String price_for_it;
//   final String rating;
//   final String rating_name;
//   final String image_urls;
//   final String about_the_hotel;
//   final String description;
//   final String peculiarities;
//
//   Hotel({
//     required this.id,
//     required this.adress,
//     required this.minimal_price,
//     required this.price_for_it,
//     required this.rating,
//     required this.rating_name,
//     required this.image_urls,
//     required this.about_the_hotel,
//     required this.description,
//     required this.peculiarities,
//   });
//
//   factory Hotel.fromJson(Map<String, dynamic> json) => Hotel(
//         id: json['id'],
//         adress: json['adress'],
//         minimal_price: json['minimal_price'],
//         price_for_it: json['price_for_it'],
//         rating: json['rating'],
//         rating_name: json['rating_name'],
//         image_urls: json['image_urls'],
//         about_the_hotel: json['about_the_hotel'],
//         description: json['description'],
//         peculiarities: json['peculiarities'],
//       );
// }
