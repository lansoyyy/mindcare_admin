import 'package:flutter/material.dart';
import 'package:medzone/widgets/button_widget.dart';
import 'package:medzone/widgets/text_widget.dart';

class AppointmentsTab extends StatelessWidget {
  const AppointmentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: 'Appointments',
                      fontSize: 24,
                      fontFamily: 'Bold',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const TabBar(
                  tabs: [
                    Tab(
                      text: 'Upcoming',
                    ),
                    Tab(
                      text: 'Completed',
                    ),
                    Tab(
                      text: 'Cancelled',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 500,
                  child: TabBarView(
                    children: [
                      for (int i = 0; i < 3; i++)
                        ListView.builder(
                          itemBuilder: (context, index) {
                            return Card(
                              child: SizedBox(
                                height: 150,
                                width: 400,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/doc1.png',
                                      height: 100,
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextWidget(
                                          text: 'John Doe',
                                          fontSize: 14,
                                          fontFamily: 'Bold',
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        TextWidget(
                                          text: '"I need help please"',
                                          fontSize: 12,
                                          fontFamily: 'Regular',
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        TextWidget(
                                          text: 'October 25, 2023 at 5:30pm',
                                          fontSize: 12,
                                          fontFamily: 'Medium',
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        i == 0
                                            ? Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  ButtonWidget(
                                                    radius: 100,
                                                    width: 75,
                                                    height: 30,
                                                    fontSize: 12,
                                                    label: 'Accept',
                                                    onPressed: () {},
                                                  ),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  ButtonWidget(
                                                    color: Colors.red,
                                                    radius: 100,
                                                    width: 75,
                                                    height: 30,
                                                    fontSize: 12,
                                                    label: 'Reject',
                                                    onPressed: () {},
                                                  ),
                                                ],
                                              )
                                            : const SizedBox(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
