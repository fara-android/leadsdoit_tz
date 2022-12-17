import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class EventCard extends StatelessWidget {
  final String legaueName;
  final DateTime date;
  final String status;
  final String homeTeam;
  final String awayTeam;
  final int? homeScore;
  final int? awayScore;

  const EventCard({
    super.key,
    required this.legaueName,
    required this.date,
    required this.status,
    required this.homeTeam,
    required this.awayTeam,
    this.homeScore,
    this.awayScore,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xFF383838),
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF242424),
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/cup.svg'),
                      const SizedBox(width: 12),
                      Text(
                        legaueName,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  formattedDate(date),
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            status,
            style: TextStyle(
              fontSize: 16,
              color: getStatusTextColor(status),
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Text(
                  homeTeam,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                height: 60,
                width: 2,
                color: const Color(0xFF535353),
              ),
              Expanded(
                child: Text(
                  awayTeam,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF242424),
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    '${homeScore ?? '-'}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: getScoresTextColor(status),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '${awayScore ?? '-'}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: getScoresTextColor(status),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String formattedDate(DateTime date) {
    final formatedDate = DateFormat('dd.MM').format(date);

    return formatedDate;
  }

  Color getStatusTextColor(String status) {
    if (status.toLowerCase().contains('live')) {
      return const Color(0xFFFF7B31);
    }

    return const Color(0xFFB9B9B9);
  }

  Color getScoresTextColor(String status) {
    if (status.toLowerCase().contains('live')) {
      return const Color(0xFFFF7B31);
    }

    return Colors.white;
  }
}
