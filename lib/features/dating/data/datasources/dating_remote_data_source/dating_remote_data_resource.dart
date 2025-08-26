import '../../models/user_model/user_model.dart';

abstract class DatingRemoteDataSource {
  Future<List<UserModel>> getPotentialMatches();
  Future<void> swipeRight(String userId);
  Future<void> swipeLeft(String userId);
  Future<List<UserModel>> getMatches();
}

// Dummy Implementation
class DatingRemoteDataSourceImpl implements DatingRemoteDataSource {
  // Dummy data
  final List<UserModel> _dummyUsers = [
    UserModel(
      id: '1',
      name: 'Priya Sharma',
      age: 25,
      interests: ['Travel', 'Music', 'Dancing'],
      bio: 'Love to explore new places and make memories',
      imageUrl: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=400',
      distance: 2.5,
    ),
    UserModel(
      id: '2',
      name: 'Rahul Verma',
      age: 28,
      interests: ['Cooking', 'Photography', 'Movies'],
      bio: 'Food enthusiast and amateur photographer',
      imageUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400',
      distance: 5.3,
    ),
    UserModel(
      id: '3',
      name: 'Aisha Khan',
      age: 24,
      interests: ['Reading', 'Yoga', 'Coffee'],
      bio: 'Book lover and yoga practitioner',
      imageUrl: 'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?w=400',
      distance: 1.8,
    ),
    UserModel(
      id: '4',
      name: 'Vikram Singh',
      age: 27,
      interests: ['Gym', 'Technology', 'Cars'],
      bio: 'Fitness freak and tech geek',
      imageUrl: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=400',
      distance: 3.7,
    ),
  ];

  @override
  Future<List<UserModel>> getPotentialMatches() async {
    return _dummyUsers;
  }

  @override
  Future<void> swipeRight(String userId) async {
    print('Swiped right on user: $userId');
    await Future.delayed(const Duration(milliseconds: 300));
  }

  @override
  Future<void> swipeLeft(String userId) async {
    print('Swiped left on user: $userId');
    await Future.delayed(const Duration(milliseconds: 300));
  }

  @override
  Future<List<UserModel>> getMatches() async {
    return _dummyUsers.take(2).toList();
  }
}