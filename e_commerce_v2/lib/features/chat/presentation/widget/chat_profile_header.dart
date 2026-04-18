import 'package:flutter/material.dart';
import 'package:test_project/core/constants/app_color.dart';

class ChatProfileHeader extends StatelessWidget {
  const ChatProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
              "https://randomuser.me/api/portraits/men/1.jpg",
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Cameron Williamson",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 6),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 16),
                  SizedBox(width: 5),
                  Text(
                    "5.0  86 Reviews",
                    style: TextStyle(color: AppColor.textColor),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: AppColor.grey,
                    size: 16,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Switzerland",
                    style: TextStyle(color: AppColor.grey, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(height: 6),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "View Profile",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid,
                    decorationColor: AppColor.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
