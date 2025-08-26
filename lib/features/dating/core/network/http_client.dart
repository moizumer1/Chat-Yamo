
class DummyHttpClient {
  Future<Map<String, dynamic>> get(String url) async {
    await Future.delayed(const Duration(seconds: 1));

    return {
      'data': [
        {
          'id': '1',
          'name': 'Priya Sharma',
          'age': 25,
          'interests': ['Travel', 'Music', 'Dancing'],
          'bio': 'Love to explore new places and make memories',
          'imageUrl': 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=400',
          'distance': 2.5,
        },
        {
          'id': '2',
          'name': 'Rahul Verma',
          'age': 28,
          'interests': ['Cooking', 'Photography', 'Movies'],
          'bio': 'Food enthusiast and amateur photographer',
          'imageUrl': 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400',
          'distance': 5.3,
        }
      ]
    };
  }
}