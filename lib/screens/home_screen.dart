import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_ticket/screens/ticket_view.dart';
import 'package:go_ticket/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headlingStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headlingStyle,
                        )
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image:
                              const DecorationImage(image: AssetImage("assets/images/img_1.png"), fit: BoxFit.cover)),
                    ),
                  ],
                ),
                const Gap(25),
                // SearchBar
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFFF4F6FD)),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text("Search", style: Styles.headlingStyle4)
                    ],
                  ),
                ),
                const Gap(40),
                // Upcoming
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: Styles.headlingStyle2,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text("View All", style: Styles.textStyle.copyWith(color: Styles.primaryColor)))
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          const TicketView()
        ],
      ),
    );
  }
}
