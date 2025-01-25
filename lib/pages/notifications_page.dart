import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  // Mock notification data grouped by date
  final Map<String, List<NotificationItem>> notifications = {
    'Today': [
      NotificationItem(
        image: 'assets/images/shoe11.png',
        text: 'We have a new offer!',
        oldPrice: '\$200',
        newPrice: '\$150',
        timeAgo: '7 min ago',
      ),
      NotificationItem(
        image: 'assets/images/shoe9.png',
        text: 'Don’t miss out on this sale!',
        oldPrice: '\$180',
        newPrice: '\$120',
        timeAgo: '1 hr ago',
      ),
    ],
    'Yesterday': [
      NotificationItem(
        image: 'assets/images/shoe8.png',
        text: 'Limited-time discount just for you.',
        oldPrice: '\$220',
        newPrice: '\$170',
        timeAgo: '18 hrs ago',
      ),
      NotificationItem(
        image: 'assets/images/shoe9.png',
        text: 'Limited-time discount just for you.',
        oldPrice: '\$220',
        newPrice: '\$170',
        timeAgo: '18 hrs ago',
      ),
    ],
  };

  // Track selected notifications
  final Set<int> selectedNotifications = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Notifications',
          style: GoogleFonts.raleway(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: notifications.entries.map((entry) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    entry.key, // "Today", "Yesterday", etc.
                    style: GoogleFonts.raleway(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade900,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ...entry.value.map((notification) {
                    int index = notifications.values
                        .expand((list) => list)
                        .toList()
                        .indexOf(notification);

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (selectedNotifications.contains(index)) {
                            selectedNotifications.remove(index);
                          } else {
                            selectedNotifications.add(index);
                          }
                        });
                      },
                      child: NotificationTile(
                        notification: notification,
                        isSelected: selectedNotifications.contains(index),
                      ),
                    );
                  }).toList(),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

// Notification Data Model
class NotificationItem {
  final String image;
  final String text;
  final String oldPrice;
  final String newPrice;
  final String timeAgo;

  NotificationItem({
    required this.image,
    required this.text,
    required this.oldPrice,
    required this.newPrice,
    required this.timeAgo,
  });
}

// Reusable Notification Tile
class NotificationTile extends StatelessWidget {
  final NotificationItem notification;
  final bool isSelected;

  const NotificationTile({
    super.key,
    required this.notification,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 80,
        height: 100,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey[300] : Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Image.asset(
          notification.image,
        ),
      ),
      title: Text(
        notification.text,
        style: GoogleFonts.raleway(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Row(
        children: [
          Text(
            notification.oldPrice,
            style: GoogleFonts.raleway(
              fontSize: 14,
              color: Colors.grey,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            notification.newPrice,
            style: GoogleFonts.raleway(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      trailing: Text(
        notification.timeAgo,
        style: GoogleFonts.raleway(
          fontSize: 14,
          color: Colors.grey.shade600,
        ),
      ),
      tileColor: isSelected ? Colors.white : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
    );
  }
}
