import 'package:caed/core/models/timeline_model.dart';
import 'package:flutter/material.dart';

class TimelineWidget extends StatelessWidget {
  final List<TimelineEvent> events;

  const TimelineWidget({Key? key, required this.events}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: events.length,
            itemBuilder: (context, index) {
              final event = events[index];
              bool isLastItem = index == events.length - 1;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Text(
                            "${event.date.day.toString().padLeft(2, '0')}/${event.date.month.toString().padLeft(2, '0')}/${event.date.year} ${event.date.hour.toString().padLeft(2, '0')}:${event.date.minute.toString().padLeft(2, '0')}",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                          //const SizedBox(height: 40),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 20,
                          width: 1,
                          color: Colors.grey,
                        ),
                        CircleAvatar(
                          radius: 5,
                          backgroundColor:
                              index % 2 == 0 ? Colors.lightBlue : Colors.blue,
                        ),
                        if (!isLastItem)
                          Container(
                            height: 20,
                            width: 1,
                            color: Colors.grey,
                          ),
                        Container(
                          height: 20,
                          width: 1,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12, left: 10),
                        child: Text(
                          event.description,
                          textAlign: TextAlign.left,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
