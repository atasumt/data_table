import 'package:data_table/model/user.dart';
import 'package:data_table/widget/scrollable_widget.dart';
import 'package:flutter/material.dart';

class SortTablePage extends StatefulWidget {
  SortTablePage({Key? key}) : super(key: key);

  @override
  State<SortTablePage> createState() => _SortTablePageState();
}

class _SortTablePageState extends State<SortTablePage> {
  late List<User> users;
  int? sortColumnIndex;
  bool isAscedding = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    users = List.of(allUsers);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollableWidget(
        child: buildDataTable(),
      ),
    );
  }

  Widget buildDataTable() {
    final columns = ['Adı', 'Soyadı', 'Yaşı'];
    return DataTable(
      sortAscending: isAscedding,
      sortColumnIndex: sortColumnIndex,
      columns: getColums(columns),
      rows: geRows(users),
    );
  }

  List<DataColumn> getColums(List<String> columns) => columns
      .map(
        (String column) => DataColumn(
            label: Text(
              column,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            onSort: onSort),
      )
      .toList();

  List<DataRow> geRows(List<User> users) => users.map((User user) {
        final cells = [user.firstName, user.lastName, user.age];
        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();

  void onSort(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      users.sort((user1, user2) =>
          compareString(ascending, user1.firstName, user2.firstName));
    } else if (columnIndex == 1) {
      users.sort((user1, user2) =>
          compareString(ascending, user1.lastName, user2.lastName));
    } else if (columnIndex == 2) {
      users.sort((user1, user2) =>
          compareString(ascending, '${user1.age}', '${user2.age}'));
    }

    setState(() {
      sortColumnIndex = columnIndex;
      isAscedding = ascending;
    });
  }

  int compareString(bool ascending, String firstName, String firstName2) =>
      ascending
          ? firstName.compareTo(firstName2)
          : firstName2.compareTo(firstName);
}
