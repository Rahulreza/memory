
import 'package:intl/intl.dart';

import '../../../../path/file_path.dart';

class AddEditAgeProfileScreen extends StatefulWidget {
  final AgeProfileModel? profile;

  const AddEditAgeProfileScreen({super.key, this.profile});

  @override
  State<AddEditAgeProfileScreen> createState() =>
      _AddEditAgeProfileScreenState();
}

class _AddEditAgeProfileScreenState extends State<AddEditAgeProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  DateTime? _selectedBirthDate;

  @override
  void initState() {
    super.initState();
    if (widget.profile != null) {
      _nameController.text = widget.profile!.name;
      _selectedBirthDate = widget.profile!.birthDate;
    }
  }

  void _saveProfile() {
    if (_formKey.currentState!.validate()) {
      final name = _nameController.text.trim();
      final birthDate = _selectedBirthDate;

      if (birthDate == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select birth date')),
        );
        return;
      }

      final updatedProfileData = AgeProfileModel(
        name: name,
        birthDate: birthDate,
      );

      if (widget.profile != null) {
        final originalKey = widget.profile!.key;
        if (originalKey != null) {
          context.read<AgeProfileBloc>().add(
            AgeProfileEvent.updateProfileEvent(
              originalProfileKey: originalKey,
              updatedProfileData: updatedProfileData,
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Error: Original profile key not found.'),
            ),
          );
          return;
        }
      } else {
        context.read<AgeProfileBloc>().add(
          AgeProfileEvent.addProfileEvent(profile: updatedProfileData),
        );
      }
    }
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedBirthDate ?? now,
      firstDate: DateTime(1900),
      lastDate: now,
    );

    if (picked != null) {
      setState(() => _selectedBirthDate = picked);
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.profile != null ? 'Edit Profile' : 'Add Profile'),
      ),
      body: BlocListener<AgeProfileBloc, AgeProfileState>(
        listener: (context, state) {
          if (state.status == AgeProfileStatus.success) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  widget.profile != null
                      ? 'Profile updated successfully!'
                      : 'Profile added successfully!',
                ),
              ),
            );
            Navigator.pop(context);
          } else if (state.status == AgeProfileStatus.failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error saving profile: ${state.errorMessage}'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: BlocBuilder<AgeProfileBloc, AgeProfileState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(labelText: 'Name'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            _selectedBirthDate != null
                                ? 'Birth Date: ${DateFormat('yyyy-MM-dd').format(_selectedBirthDate!)}'
                                : 'No birth date selected',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: _pickDate,
                          child: const Text('Pick Date'),
                        ),
                      ],
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed:
                      state.status == AgeProfileStatus.loading
                          ? null
                          : _saveProfile,
                      child:
                      state.status == AgeProfileStatus.loading
                          ? const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 3,
                        ),
                      )
                          : Text(
                        widget.profile != null
                            ? 'Update Profile'
                            : 'Save Profile',
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}