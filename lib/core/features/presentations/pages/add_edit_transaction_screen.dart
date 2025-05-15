

import 'package:intl/intl.dart';

import '../../../path/file_path.dart';

class AddEditTransactionScreen extends StatefulWidget {
  final TransactionModel? transaction;
  // Removed transactionIndex as we will use the Hive key for updates

  const AddEditTransactionScreen({super.key, this.transaction});

  @override
  State<AddEditTransactionScreen> createState() => _AddEditTransactionScreenState();
}

class _AddEditTransactionScreenState extends State<AddEditTransactionScreen> {
  final _formKey = GlobalKey<FormState>(); // Added form key for validation
  final _descriptionController = TextEditingController(); // Changed from title to description
  final _amountController = TextEditingController();
  TransactionType _selectedType = TransactionType.income;
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    if (widget.transaction != null) {
      _descriptionController.text = widget.transaction!.description; // Use description
      _amountController.text = widget.transaction!.amount.toString();
      _selectedType = widget.transaction!.type;
      _selectedDate = widget.transaction!.date;
    } else {
      _selectedDate = DateTime.now(); // Default to today for new transactions
    }
  }

  void _saveTransaction() {
    // Validate the form first
    if (_formKey.currentState!.validate()) {
      final description = _descriptionController.text.trim(); // Use description
      final amountText = _amountController.text.trim();
      final date = _selectedDate;

      // Check if date is selected (validator handles empty text fields)
      if (date == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select a date')),
        );
        return;
      }

      // Amount validation is handled by the TextFormField validator now,
      // but we still need to parse and ensure it's not null after validation.
      final amount = double.tryParse(amountText);
      if (amount == null || amount < 0) {
        // This case should ideally be caught by the validator, but this is a safeguard
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Internal Error: Invalid amount after validation.')),
        );
        return;
      }


      // Create a new TransactionModel instance with the updated data
      final updatedTransactionData = TransactionModel(
        description: description, // Use description
        amount: amount,
        type: _selectedType,
        date: date,
      );

      if (widget.transaction != null) {
        // If editing an existing transaction, get the original key
        final originalKey = widget.transaction!.key;
        if (originalKey != null) {
          // Dispatch the update event with the original key and the new data
          // Assuming your TransactionEvent uses 'originalTransactionKey' and 'updatedTransactionData'
          context.read<TransactionBloc>().add(
            TransactionEvent.updateTransactionEvent(originalTransactionKey: originalKey, updatedTransactionData: updatedTransactionData),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Error: Original transaction key not found.')),
          );
          return;
        }

      } else {
        // If adding a new transaction, dispatch the add event
        // Assuming your TransactionEvent uses 'transaction'
        context.read<TransactionBloc>().add(TransactionEvent.addTransactionEvent(transaction: updatedTransactionData));
      }

      // The BlocListener will handle navigation and feedback based on state changes
    }
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? now,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() => _selectedDate = picked);
    }
  }

  @override
  void dispose() {
    _descriptionController.dispose(); // Dispose description controller
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.transaction != null ? 'Edit Transaction' : 'Add Transaction'),
      ),
      // Use BlocListener for side effects like showing Snackbars and navigation
      body: BlocListener<TransactionBloc, TransactionState>(
        listener: (context, state) {
          if (state.status == TransactionStatus.success) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(widget.transaction != null
                    ? 'Transaction updated successfully!'
                    : 'Transaction added successfully!'),
              ),
            );
            Navigator.pop(context); // Pop on success
          } else if (state.status == TransactionStatus.failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error saving transaction: ${state.errorMessage}'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        // Use BlocBuilder to react to state changes for UI elements (like button loading state)
        child: BlocBuilder<TransactionBloc, TransactionState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form( // Wrap with Form for validation
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch button
                  children: [
                    TextFormField( // Use TextFormField for validation
                      controller: _descriptionController, // Use description controller
                      decoration: const InputDecoration(labelText: 'Description'), // Label
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a description'; // Validator message
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16), // Increased spacing
                    TextFormField( // Use TextFormField for validation
                      controller: _amountController,
                      decoration: const InputDecoration(labelText: 'Amount'),
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an amount';
                        }
                        final amount = double.tryParse(value);
                        if (amount == null || amount < 0) {
                          return 'Please enter a valid positive amount';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<TransactionType>(
                      value: _selectedType,
                      decoration: const InputDecoration(labelText: 'Type'),
                      items: TransactionType.values.map((type) {
                        return DropdownMenuItem(
                          value: type,
                          child: Text(type.toString().split('.').last.toUpperCase()),
                        );
                      }).toList(),
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            _selectedType = value;
                          });
                        }
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'Please select a type';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded( // Allow text to take available space
                          child: Text(
                            _selectedDate != null
                                ? 'Date: ${DateFormat('yyyy-MM-dd').format(_selectedDate!)}'
                                : 'No date selected',
                            style: Theme.of(context).textTheme.titleMedium, // Consistent text style
                          ),
                        ),
                        const SizedBox(width: 8), // Spacing
                        ElevatedButton(
                          onPressed: _pickDate,
                          child: const Text('Pick Date'),
                        ),
                      ],
                    ),
                    // No separate validator for date field here,
                    // as we handle the null check before saving.
                    const Spacer(),
                    ElevatedButton(
                      onPressed: state.status == TransactionStatus.loading ? null : _saveTransaction, // Disable button while loading
                      child: state.status == TransactionStatus.loading
                          ? const SizedBox( // Sized box for loader
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 3,
                        ),
                      )
                          : Text(
                        widget.transaction != null ? 'Update Transaction' : 'Save Transaction',
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
