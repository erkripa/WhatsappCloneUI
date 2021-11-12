import 'package:flutter/material.dart';
import 'package:whatsappclone/src/app.dart';

class Calls {
  final String name;
  final String imageUrl;
  final String time;
  final Icon callType;
  final Icon calledIcon;

  Calls({
    required this.name,
    required this.imageUrl,
    required this.time,
    required this.callType,
    required this.calledIcon,
  });

  static const misedCall = Icon(
    Icons.call_missed,
    size: 16.0,
    color: Colors.red,
  );
  static const recivedCall = Icon(
    Icons.call_received,
    color: Colors.green,
    size: 16.0,
  );

  static const audioCall = Icon(
    Icons.call,
    size: 24.0,
    color: primaryColor,
  );
  static const videoCall = Icon(
    Icons.videocam,
    size: 24.0,
    color: primaryColor,
  );
}

List<Calls> callData = <Calls>[
  Calls(
    name: 'Ayush',
    imageUrl:
        'https://images.pexels.com/photos/1024311/pexels-photo-1024311.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    time: '6:30',
    callType: Calls.recivedCall,
    calledIcon: Calls.audioCall,
  ),
  Calls(
    name: 'Vikash',
    imageUrl:
        'https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    time: '8:10',
    callType: Calls.misedCall,
    calledIcon: Calls.videoCall,
  ),
  Calls(
    name: 'Ajeet',
    imageUrl:
        'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    time: '6:3',
    callType: Calls.recivedCall,
    calledIcon: Calls.audioCall,
  ),
  Calls(
    name: 'Chintu',
    imageUrl:
        'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    time: '4:30',
    callType: Calls.misedCall,
    calledIcon: Calls.videoCall,
  ),
];
