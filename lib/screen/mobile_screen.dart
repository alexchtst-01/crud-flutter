import 'package:flutter/material.dart';
import 'package:loglife/color.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: appBarColor,
          centerTitle: true,
          title: const Text(
            'Track Your Activities',
            style:
                TextStyle(fontFamily: 'poppins', fontWeight: FontWeight.w400),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.account_circle_rounded)),
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: tabColor,
            indicatorWeight: 2,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: const TextStyle(fontFamily: 'poppins'),
            tabs: const <Widget> [
              Tab(
                child: Text(
                  'List',
                  style: TextStyle(
                      fontFamily: 'poopins',
                      fontSize: 17.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Tab(
                child: Text(
                  'Done',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w400),
                ),
              ),
              Tab(
                child: Text(
                  'Condition',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 17.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const <Widget> [
            Text('List'),
            Text('Done'),
            Text('Condition'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'add actions',
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}

// MobileScreen
