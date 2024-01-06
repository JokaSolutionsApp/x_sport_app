import 'package:rxdart/rxdart.dart';

class UserSearchBloc {
  final _userController = BehaviorSubject<List<UserSearch>>();
  Stream<List<UserSearch>> get userStream => _userController.stream;
  List<UserSearch> _users = [
    UserSearch(name: 'Raied Shehadeh', username: 'Raied')
  ];

  void searchUsers(String query) {
    // Filter users based on the search query
    List<UserSearch> searchResults = _users
        .where((user) =>
            user.name.toLowerCase().contains(query.toLowerCase()) ||
            user.username.toLowerCase().contains(query.toLowerCase()))
        .toList();
    _userController.add(searchResults);
  }

  void dispose() {
    _userController.close();
  }
}

class UserSearch {
  final String name;
  final String username;

  UserSearch({required this.name, required this.username});
}
