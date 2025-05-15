import 'package:intl/intl.dart';

import '../../../path/file_path.dart';

class AgeProfileOverviewScreen extends StatelessWidget {
  const AgeProfileOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AgeProfileBloc, AgeProfileState>(
        builder: (context, state) {
          if (state.status == AgeProfileStatus.loading &&
              state.profiles.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.status == AgeProfileStatus.failure &&
              state.profiles.isEmpty) {
            return Center(
              child: Text('Failed to load profiles: ${state.errorMessage}'),
            );
          } else if (state.profiles.isEmpty) {
            return const Center(child: Text('No profiles yet. Add one!'));
          }

          return ListView.builder(
            itemCount: state.profiles.length,
            itemBuilder: (context, index) {
              final profile = state.profiles[index];
              return Dismissible(
                key: Key(profile.key.toString()),
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                confirmDismiss: (direction) async {
                  return await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Confirm Delete"),
                        content: const Text(
                          "Are you sure you want to delete this profile?",
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: const Text("Cancel"),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            child: const Text("Delete"),
                          ),
                        ],
                      );
                    },
                  );
                },
                onDismissed: (direction) {
                  context.read<AgeProfileBloc>().add(
                    AgeProfileEvent.deleteProfileEvent(profileKey: profile.key),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${profile.name} dismissed'),
                      action: SnackBarAction(label: 'Undo', onPressed: () {}),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(profile.name),
                  subtitle: Text(
                    'Born: ${DateFormat('yyyy-MM-dd').format(profile.birthDate)} (Age: ${profile.age})',
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (_) => AddEditAgeProfileScreen(profile: profile),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddEditAgeProfileScreen()),
          );
        },
        tooltip: 'Add Profile',
        child: const Icon(Icons.add),
      ),
    );
  }
}
