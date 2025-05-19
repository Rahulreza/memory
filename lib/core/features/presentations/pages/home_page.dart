
import '../../../path/file_path.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Memory'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Notes', icon: Icon(Icons.note)),
              Tab(text: 'Ages', icon: Icon(Icons.person)),
              Tab(text: 'Transactions', icon: Icon(Icons.attach_money)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            NoteOverviewScreen(),
            AgeProfileOverviewScreen(),
            TransactionOverviewScreen(),
          ],
        ),
      ),
    );
  }
}
