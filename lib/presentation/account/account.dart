import 'package:pulseado/application/ui/account/account_bloc.dart';
import 'package:pulseado/presentation/account/widgets.dart/account_page.dart';
import 'package:pulseado/presentation/account/widgets.dart/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        context.read<AccountBloc>().add(const AccountEvent.started());
        return state.isFetchingData
            ? LoadingScreen()
            : state.repositoryResponse.fold(() => Container(),
                (a) => a.fold((l) => Container(), (r) => AccountPage(user: r)));
      },
    );
  }
}
