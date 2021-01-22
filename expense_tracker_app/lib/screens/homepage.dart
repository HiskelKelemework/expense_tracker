import 'package:expense_tracker_app/constants/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(T.appBarTitle),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(child: Text(T.recent)),
                Tab(child: Text(T.groups)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              _buildRecentTabView(),
              _buildExpenseGroupsTabView(),
            ],
          ),
          floatingActionButton: _buildFloatingActionBtn(),
        ),
      ),
    );
  }

  Widget _buildRecentTabView() {
    return Center(
      child: Text('Recent expenses tab'),
    );
  }

  Widget _buildExpenseGroupsTabView() {
    return Center(
      child: Text('Expense groups tab'),
    );
  }

  Widget _buildFloatingActionBtn() {
    return FloatingActionButton.extended(
      onPressed: _onFloatingActionBtnPressed,
      backgroundColor: Colors.blue,
      label: Text(T.addExpense),
    );
  }

  _onFloatingActionBtnPressed() {
    print('clicked');
  }
}
