import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guestlistvk/features/GuestList/bloc/guestlists_cubit.dart';
import '../../bloc/guestlists_state.dart';

class GuestListshow extends StatefulWidget {
  const GuestListshow({super.key});

  @override
  State<GuestListshow> createState() => _GuestListshowState();
}

class _GuestListshowState extends State<GuestListshow> {
  @override
  void initState() {
    context.read<GuestListsCubit>().getlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GuestListsCubit, GuestListsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const CircularProgressIndicator();
        } else if (state.errorMessage.isNotEmpty) {
          return Text(state.errorMessage);
        } else {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.guestLists.length,
            itemBuilder: (context, index) {
              return Container(
                color: index.isEven
                    ? const Color.fromRGBO(241, 243, 245, 1)
                    : const Color.fromRGBO(255, 255, 255, 1),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 48, top: 12, right: 151, bottom: 12),
                      child: Text(
                        state.guestLists[index].guestName,
                        // guestList[index].guestName,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(73, 80, 87, 1)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, right: 128, bottom: 12),
                      child: Text(
                        state.guestLists[index].bookedBy,
                        // guestList[index].bookedBy,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(73, 80, 87, 1)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, right: 104, bottom: 12),
                      child: Text(
                        state.guestLists[index].status,
                        // guestList[index].status,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(73, 80, 87, 1)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, right: 104, bottom: 12),
                      child: Text(
                        state.guestLists[index].note,
                        // guestList[index].note,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(73, 80, 87, 1)),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }
      },
    );
  }
}
