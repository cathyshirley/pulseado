import 'package:pulseado/application/ui/inbox/inbox_bloc.dart';
import 'package:pulseado/presentation/inbox/widgets/inbox_page.dart';
import 'package:pulseado/presentation/inbox/widgets/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Inbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InboxBloc, InboxState>(
      builder: (context, state) {
        context.read<InboxBloc>().add(const InboxEvent.started());
        return state.isFetchingData
            ? LoadingScreen()
            : state.repositoryResponse.fold(
                () => Container(),
                (a) => a.fold((l) => Container(),
                    (r) => InboxPage(name: r.fullName.getOrCrash())));
      },
    );
  }
}
