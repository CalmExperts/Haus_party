class User {
  String? id;
  String? username;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? email;
  String? dateOfBirth;
  String? profilePicture;
  String? imageId;
  String? role;
  String? defaultCard;
  String? status;
  String? currentSubscription;
  String? subscriptionDateStarted;
  String? subscriptionDateEnded;
  bool? hasActiveSubscription;
  bool? isDeleted;
  String? facebook;
  String? instagram;
  String? twitter;
  String? passwordResetToken;
  String? passwordResetExpires;

  User(
      {this.id,
      this.username,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.email,
      this.dateOfBirth,
      this.profilePicture,
      this.imageId,
      this.role,
      this.defaultCard,
      this.status,
      this.currentSubscription,
      this.subscriptionDateStarted,
      this.subscriptionDateEnded,
      this.hasActiveSubscription,
      this.isDeleted,
      this.facebook,
      this.instagram,
      this.twitter,
      this.passwordResetToken,
      this.passwordResetExpires});

  User.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    username = json['username'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    dateOfBirth = json['dateOfBirth'];
    profilePicture = json['profilePicture'];
    imageId = json['imageId'];
    role = json['role'];
    defaultCard = json['defaultCard'];
    status = json['status'];
    currentSubscription = json['currentSubscription'];
    subscriptionDateStarted = json['subscriptionDateStarted'];
    subscriptionDateEnded = json['subscriptionDateEnded'];
    hasActiveSubscription = json['hasActiveSubscription'];
    isDeleted = json['isDeleted'];
    facebook = json['facebook'];
    instagram = json['instagram'];
    twitter = json['twitter'];
    passwordResetToken = json['passwordResetToken'];
    passwordResetExpires = json['passwordResetExpires'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['phoneNumber'] = this.phoneNumber;
    data['email'] = this.email;
    data['dateOfBirth'] = this.dateOfBirth;
    data['profilePicture'] = this.profilePicture;
    data['imageId'] = this.imageId;
    data['role'] = this.role;
    data['defaultCard'] = this.defaultCard;
    data['status'] = this.status;
    data['currentSubscription'] = this.currentSubscription;
    data['subscriptionDateStarted'] = this.subscriptionDateStarted;
    data['subscriptionDateEnded'] = this.subscriptionDateEnded;
    data['hasActiveSubscription'] = this.hasActiveSubscription;
    data['isDeleted'] = this.isDeleted;
    data['facebook'] = this.facebook;
    data['instagram'] = this.instagram;
    data['twitter'] = this.twitter;
    data['passwordResetToken'] = this.passwordResetToken;
    data['passwordResetExpires'] = this.passwordResetExpires;
    return data;
  }
}

class Auth {
  String? token;

  Auth({this.token});
  factory Auth.fromJson(Map<String, dynamic> responseData) {
    return Auth(token: responseData['token']);
  }
}
