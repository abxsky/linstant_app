import 'package:linstant_app/models/event.dart';
import 'package:linstant_app/models/picture.dart';

List<Event> dummyData = [
  Event(
    title: "Le marriage de Simona et Dani",
    pictureList: [
      Picture(
        id: 'a01',
        imageUrl:
            'https://img.freepik.com/free-photo/couple-having-their-wedding-woods_52683-92448.jpg',
        likes: 0,
        comments: ['Magnfiques tous les deux !'],
      ),
      Picture(
        id: 'a02',
        imageUrl:
            'https://www.brides.com/thmb/iZEOaYoI1llq057qDtdppFfxdvM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1177485677-76fb4bc6853e4797a441c03b2ba2353a.jpg',
        likes: 0,
        comments: [],
      )
    ],
    attendants: 0,
    description: "Un evenement à couper le souffle",
    duration: const Duration(hours: 72),
  ),
  Event(
    title: "Le gender reveal de la famille Danielov",
    pictureList: [
      Picture(
        id: 'b01',
        imageUrl:
            'https://genderrevealcelebrations.com/cdn/shop/articles/Unique-Gender-Reveal-Ideas-2022_1200x.jpg?v=1657045843',
        likes: 0,
        comments: ['<3'],
      ),
      Picture(
          id: 'b02',
          imageUrl:
              'https://mylittleday.fr/cdn/shop/collections/gender-reveal-landing-bd.jpg?v=1650976227',
          likes: 0,
          comments: []),
      Picture(
          id: 'b03',
          imageUrl:
              'https://www.laetiboop.fr/wp-content/uploads/2022/03/decoration-gender-reveal.jpg',
          likes: 0,
          comments: [])
    ],
    attendants: 0,
    description: "On va avoir un bébé, venez découvrir les détailles !",
    duration: const Duration(hours: 72),
  )
];
