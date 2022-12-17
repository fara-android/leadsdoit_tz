import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:leadsdoit_tz/app/presentation/screens/events/components/event_card.dart';
import 'package:leadsdoit_tz/app/presentation/widgets/custom_loading.dart';
import 'package:leadsdoit_tz/service_locator.dart';

import '../../cubits/get_events_cubit/get_events_cubit.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: const Color(0xFF242424),
            expandedHeight: 100,
            toolbarHeight: 0,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              title: SizedBox(
                height: 47,
                width: 47,
                child: SvgPicture.asset(
                  'assets/images/ball.svg',
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: BlocProvider(
              create: (context) => sl<GetEventsCubit>(),
              child: BlocBuilder<GetEventsCubit, GetEventsState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox(),
                    loading: () => SizedBox(
                      height: MediaQuery.of(context).size.height / 1.5,
                      child: const Center(
                        child: CustomLoading(),
                      ),
                    ),
                    success: (events) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        events.length,
                        (index) => Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 16,
                          ),
                          child: EventCard(
                            legaueName: events[index].legaueName ?? '',
                            date: events[index].date ?? DateTime.now(),
                            status: events[index].status ?? '',
                            homeTeam: events[index].homeTeam ?? '',
                            awayTeam: events[index].awayTeam ?? '',
                            homeScore: events[index].homeScore,
                            awayScore: events[index].awayScore,
                          ),
                        ),
                      ),
                    ),
                    failed: (message) => SizedBox(
                      height: MediaQuery.of(context).size.height / 1.5,
                      child: Center(
                        child: Text(
                          message,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
