final List<Map<String, dynamic>> placeDetails = [
  {
    "name": "Eiffel Tower",
    "rating": 4.8,
    "image":
        "https://imgs.search.brave.com/iEWKfjdeIV44g234UcL4XkBaLcexQl31cThObKHtFiQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/cGxhbmV0d2FyZS5j/b20vd3BpbWFnZXMv/MjAyMi8wMi91bml0/ZWQtc3RhdGVzLWJl/c3QtcGxhY2VzLXRv/LXZpc2l0LXNhbnRh/LWZlLmpwZw",
    "favorite": true,
    "description":
        "The Eiffel Tower is an iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.",
  },
  {
    "name": "Great Wall of China",
    "rating": 4.7,
    "image":
        "https://imgs.search.brave.com/jp2v-qt2XbHbUDk255zgC6FBbyTIdyrjYY03n2uw6H8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/cGxhbmV0d2FyZS5j/b20vcGhvdG9zLWxh/cmdlL1VTTlkvdXNh/LWJlc3QtcGxhY2Vz/LXBob2VuaXguanBn",
    "favorite": false,
    "description":
        "The Great Wall of China is a series of fortifications that stretch across northern China, built to protect against invasions and raids. It is one of the most iconic structures in the world.",
  },
  {
    "name": "Taj Mahal",
    "rating": 4.9,
    "image":
        "https://imgs.search.brave.com/dkwEdFiOZkNAUuavkegjlgape6i1OjaL04chhAGbxzM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/cGxhbmV0d2FyZS5j/b20vd3BpbWFnZXMv/MjAyMi8wMi91bml0/ZWQtc3RhdGVzLWJl/c3QtcGxhY2VzLXRv/LXZpc2l0LXNhbi1h/bnRvbmlvLmpwZw",
    "favorite": true,
    "description":
        "The Taj Mahal is an Islamic ivory-white marble mausoleum on the right bank of the river Yamuna in the Indian city of Agra. It was commissioned in 1632 by Mughal emperor Shah Jahan to house the tomb of his favorite wife, Mumtaz Mahal.",
  },
  {
    "name": "Statue of Liberty",
    "rating": 4.6,
    "image":
        "https://imgs.search.brave.com/X6OxKsn3t45Gfiy1RctOIIazAVgBSayrSGsco1dmqCE/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy9h/L2EzL09kYWliYV9T/dGF0dWVfb2ZfTGli/ZXJ0eS5qcGc",
    "favorite": false,
    "description":
        "The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York City, in the United States. It was a gift from the people of France to the United States and is a symbol of freedom and democracy.",
  },
  {
    "name": "Machu Picchu",
    "rating": 4.8,
    "image":
        "https://imgs.search.brave.com/a17sRDJC29UwszkkFQ9zAmwh7Zpr4T-hGtlreh91dFc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA0LzMxLzg0LzU1/LzM2MF9GXzQzMTg0/NTUyN19sU2RsN01m/SGU5QUh3dU5lZHFo/SDEzNHJnZldLV2NW/Ny5qcGc",
    "favorite": true,
    "description":
        "Machu Picchu is a 15th-century Inca citadel located in the Eastern Cordillera of southern Peru on a 2,430-meter (7,970 ft) peak. It is one of the most famous archaeological sites in the world.",
  },
];
final List<Map<String, dynamic>> recommendedPlaces = [
  {
    "name": "Santorini",
    "rating": 4.9,
    "image":
        "https://upload.wikimedia.org/wikipedia/commons/3/3c/Santorini_sunset_in_Oia.jpg",
    "favorite": true,
    "description":
        "Santorini is a stunning island in the Aegean Sea, famous for its whitewashed buildings, blue-domed churches, and spectacular sunsets over the caldera.",
  },
  {
    "name": "Kyoto",
    "rating": 4.7,
    "image":
        "https://upload.wikimedia.org/wikipedia/commons/e/e4/Kiyomizu-dera_in_Kyoto_03-2016_img3.jpg",
    "favorite": false,
    "description":
        "Kyoto is a city on the island of Honshu, Japan, known for its classical Buddhist temples, gardens, imperial palaces, and traditional wooden houses.",
  },
  {
    "name": "Banff National Park",
    "rating": 4.8,
    "image":
        "https://upload.wikimedia.org/wikipedia/commons/7/7c/Banff_National_Park_08-2010_img17.jpg",
    "favorite": true,
    "description":
        "Banff National Park is Canada’s oldest national park, located in the Rocky Mountains. It’s famous for its turquoise lakes, majestic mountains, and outdoor adventures.",
  },
  {
    "name": "Venice",
    "rating": 4.6,
    "image":
        "https://upload.wikimedia.org/wikipedia/commons/d/d2/Venice_Rialto_Bridge_and_Canal.jpg",
    "favorite": false,
    "description":
        "Venice is a city in northeastern Italy famous for its canals, gondola rides, Renaissance architecture, and rich history.",
  },
  {
    "name": "Great Barrier Reef",
    "rating": 4.9,
    "image":
        "https://upload.wikimedia.org/wikipedia/commons/1/1d/Great_Barrier_Reef_-_NASA.jpg",
    "favorite": true,
    "description":
        "The Great Barrier Reef is the world's largest coral reef system, located in Australia. It’s renowned for its diverse marine life and stunning underwater landscapes.",
  },
];

class PlaceDetailsModel {
  final String name;
  final double rating;
  final String image;
  final bool favorite;
  final String description;

  PlaceDetailsModel({
    required this.name,
    required this.rating,
    required this.image,
    required this.favorite,
    this.description = '',
  });

  factory PlaceDetailsModel.fromMap(Map<String, dynamic> map) {
    return PlaceDetailsModel(
      name: map['name'] ?? 'Unknown',
      rating: map['rating']?.toDouble() ?? 0.0,
      image: map['image'] ?? '',
      favorite: map['favorite'] ?? false,
      description: map['description'] ?? '',
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'rating': rating,
      'image': image,
      'favorite': favorite,
      'description': description,
    };
  }
}
