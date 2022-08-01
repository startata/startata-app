import 'package:flutter/material.dart';
import 'package:startata/features/domain/domain.dart';
import 'package:intl/intl.dart';
import 'package:startata/core/utils/string_extension.dart';

class ReportFormDialog extends StatefulWidget {
  final ReportEntity? report;
  final ReportDescriptionEntity? description;

  const ReportFormDialog({Key? key, this.report, this.description})
      : super(key: key);

  @override
  State<ReportFormDialog> createState() => _ReportFormDialogState();
}

class _ReportFormDialogState extends State<ReportFormDialog>
    with SingleTickerProviderStateMixin {
  late DateTime selectedDate;
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    selectedDate = widget.description?.date ?? DateTime.now();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 550));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.decelerate);

    controller.forward();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return ScaleTransition(
      scale: scaleAnimation,
      child: Builder(builder: (context) {
        return Dialog(
          child: Container(
            padding: EdgeInsets.all(32),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
            ),
            constraints: BoxConstraints(
              minWidth: size.width * 0.2,
              maxWidth: size.width * 0.5,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Relatório de Atividades',
                      style: theme.textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Tooltip(
                      message: "dicas",
                      child: IconButton(
                        onPressed: () => _onHelpPressed(context),
                        icon: Icon(Icons.help),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Adicione aqui o relatório de quais tarefas foram ou serão executadas, de acordo com o dia em destaque.',
                    style: theme.textTheme.bodyText1,
                  ),
                ),
                // Spacer(),
                SizedBox(height: 32),
                Text(
                  'data',
                  style: theme.textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: <Widget>[
                //     Padding(
                //       padding: const EdgeInsets.only(left: 8),
                //       child: Text(DateFormat.MMMMEEEEd()
                //           .format(selectedDate)
                //           .capitalize()),
                //     ),
                //     IconButton(
                //       onPressed: () => _selectDate(context),
                //       icon: Icon(Icons.edit),
                //     ),
                //   ],
                // ),
                SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey.shade100,
                  ),
                  child: ListTile(
                    tileColor: Colors.blueGrey,
                    title: Text(DateFormat.MMMMEEEEd()
                        .format(selectedDate)
                        .capitalize()),
                    trailing: Icon(Icons.edit),
                    onTap: () => _selectDate(context),
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  'relatório',
                  style: theme.textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: TextFormField(
                    autofocus: true,
                    initialValue: widget.description?.description ?? '',
                    keyboardType: TextInputType.multiline,
                    minLines: 3,
                    maxLines: 8,
                    maxLength: 560,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      suffixStyle: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ),

                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'cancelar',
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        'confirmar',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  _onHelpPressed(BuildContext context) {
    final theme = Theme.of(context);
    return showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 32.0,
            left: 32.0,
            bottom: 32.0,
            top: 16.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Dicas',
                style: theme.textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                  'Para tarefas de dias anteriores utilize sempre o pretérito perfeito, por exemplo:\n\n - corrigiu alguns bugs no chat;\n\n\nPara tarefas no dia de hoje utilize o presente ou futuro do presente:\n\n - implementa novas features;\n - irá realizar a implantação em um novo condomínio;'),
            ],
          ),
        ),
      ),
    );
  }
}
