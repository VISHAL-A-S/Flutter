class user{
  int userID;
  String firstName;
  String lastName;
  user({this.userID=0,this.firstName="",this.lastName=""});
  static List<user> getUser()
  {
    return [
      user(userID: 1,firstName: "Jhon",lastName: "Wick"),
      user(userID: 2,firstName: "Jhon",lastName: "Wick"),
      user(userID: 3,firstName: "Jhon",lastName: "Wick"),
    ];
  }
}