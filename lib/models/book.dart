
import 'package:flutter/material.dart';

class Book{
late String imageUrl;
late String title;
late String overview;
late String genre;
late String rating;

Book({required this.imageUrl,
  required this.genre,
  required this.overview,
  required this.title,
  required this.rating

});

}
List<Book> books =[
  Book(
    imageUrl:'assets/images/mockingbird.jpg',
    genre: 'crime',
    overview: 'hello its me Binod Khanal. lorem lorem loremlorem lorem lorem lorem lorem lorem lorem lorem lore lorem lore lorem lorem lorem I''m currently working on Bridge tech as a fluuterintern',
    title: 'To kill the mocking Bird',
    rating:'⭐⭐⭐⭐'
     ),
  Book(
      imageUrl:'assets/images/mockingbird.jpg',
      genre: 'crime',
      overview: 'To Kill a Mockingbird is a novel by the American author Harper Lee. It was published in 1960 and was instantly successful. In the United States, it is widely read in high schools and middle schools. To Kill a Mockingbird has become a classic of modern American literature, winning the Pulitzer Prize',
      title: 'the Great GatsBy',
      rating:'⭐⭐⭐⭐'
  ),
  Book(
      imageUrl:'assets/images/mockingbird.jpg',
      genre: 'crime',
      overview: 'To Kill a Mockingbird is a novel by the American author Harper Lee. It was published in 1960 and was instantly successful. In the United States, it is widely read in high schools and middle schools. To Kill a Mockingbird has become a classic of modern American literature, winning the Pulitzer Prize',
      title: 'the Great GatsBy',
      rating:'⭐⭐⭐⭐'
  ),
  Book(
      imageUrl:'assets/images/mockingbird.jpg',
      genre: 'crime',
      overview: 'To Kill a Mockingbird is a novel by the American author Harper Lee. It was published in 1960 and was instantly successful. In the United States, it is widely read in high schools and middle schools. To Kill a Mockingbird has become a classic of modern American literature, winning the Pulitzer Prize',
      title: 'the Great GatsBy',
      rating:'⭐⭐⭐⭐'
   ),
 ];

