class UserStatus {
  final String name;

  final String imageUrl;
  final String time;

  UserStatus({required this.name, required this.imageUrl, required this.time});
}

List<UserStatus> userData = <UserStatus>[
  UserStatus(
    name: 'Ayush',
    imageUrl:
        'https://images.pexels.com/photos/1024311/pexels-photo-1024311.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    time: '6:30',
  ),
  UserStatus(
    name: 'Vikash',
    imageUrl:
        'https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    time: '8:10',
  ),
  UserStatus(
    name: 'Ajeet',
    imageUrl:
        'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    time: '6:3',
  ),
  UserStatus(
    name: 'Chintu',
    imageUrl:
        'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    time: '4:30',
  ),
];
