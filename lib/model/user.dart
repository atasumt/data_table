class User {
  final String firstName;
  final String lastName;
  final int age;

  User({required this.firstName, required this.lastName, required this.age});
}

final allUsers = <User>[
  User(firstName: 'Ali', lastName: 'Demir', age: 37),
  User(firstName: 'Ata', lastName: 'Ataş', age: 27),
  User(firstName: 'Baki', lastName: 'Ataş', age: 20),
  User(firstName: 'Emel', lastName: 'Kaya', age: 21),
  User(firstName: 'Evrim', lastName: 'Gül', age: 18),
  User(firstName: 'Cansu', lastName: 'Kobal', age: 32),
  User(firstName: 'Saliha', lastName: 'Erkan', age: 24),
  User(firstName: 'Betül', lastName: 'Ünlü', age: 42),
  User(firstName: 'Umut', lastName: 'Demir', age: 47),
  User(firstName: 'Zeynep', lastName: 'Eymen', age: 18),
  User(firstName: 'Yusuf', lastName: 'Aydemir', age: 33),
  User(firstName: 'Bera', lastName: 'Ayan', age: 19),
  User(firstName: 'Sinem', lastName: 'Çiçek', age: 27),
  User(firstName: 'Ufuk', lastName: 'Şov', age: 25),
  User(firstName: 'Serhat', lastName: 'Kırımızı', age: 53),
  User(firstName: 'Haydar', lastName: 'Ataş', age: 58),
  User(firstName: 'Ümit', lastName: 'Ertem', age: 44),
  User(firstName: 'Yunus', lastName: 'Ekmen', age: 41),
];
