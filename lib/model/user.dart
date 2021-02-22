class User {
  String id;
  String firstName;
  String lastName;
  String username;
  String phoneNumber;
  String email;
  String dateOfBirth;
  String profilePicture;


  User({this.id, this.firstName, this.lastName, this.email, this.dateOfBirth, this.phoneNumber, this.profilePicture, this.username});


  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
      id: responseData['_id'],
      firstName: responseData['firstName'],
      lastName: responseData['lastName'],
      email: responseData['email'],
      phoneNumber: responseData['phoneNumber'],
      username: responseData['username'],
      dateOfBirth: responseData['dateOfBirth'],
      profilePicture: responseData['profilePicture']
    );
  }

}  


class Auth {
  String token;

  Auth({ this.token });
  factory Auth.fromJson(Map<String, dynamic> responseData) {
    return Auth(
      token: responseData['token']
    );
  }
}