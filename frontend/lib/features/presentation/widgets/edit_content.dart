import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:startata/core/utils/date_time_extension.dart';
import 'package:startata/core/utils/string_extension.dart';

import 'package:startata/features/domain/domain.dart';

import 'report_form_dialog.dart';

class EditContent extends StatelessWidget {
  final ReportEntity? report;
  final VoidCallback onFinishTap;
  const EditContent({
    Key? key,
    required this.report,
    required this.onFinishTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Container(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDateOfDescription(context, report?.descriptions[0]),
          SizedBox(height: 8),
          _builClicableText(context, report?.descriptions[0]),
          SizedBox(height: 4),
          _buildEditButton(context, report?.descriptions[0]),
          SizedBox(height: 32),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(
          //       'Hoje:',
          //       style: theme.textTheme.bodyText1?.copyWith(
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //     Text(
          //       date1,
          //       style: theme.textTheme.caption,
          //     ),
          //   ],
          // ),
          _buildDateOfDescription(context, report?.descriptions[1]),
          SizedBox(height: 8),

          _builClicableText(context, report?.descriptions[1]),
          SizedBox(height: 4),
          _buildEditButton(context, report?.descriptions[1]),
          // Spacer(),
          // TextField(
          //   keyboardType: TextInputType.multiline,
          //   minLines: 1,
          //   maxLines: 8,
          //   maxLength: 560,
          //   decoration: InputDecoration(
          //     border: OutlineInputBorder(
          //       borderSide: BorderSide(color: Colors.black),
          //     ),
          //     suffixStyle: const TextStyle(color: Colors.grey),
          //   ),
          // ),
          // SizedBox(height: 8),
          Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              minimumSize: const Size.fromHeight(50),
            ),
            onPressed: onFinishTap,
            child: const Text(
              'finalizar',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateOfDescription(
    BuildContext context,
    ReportDescriptionEntity? descript,
  ) {
    final theme = Theme.of(context);
    if (descript?.date == null) return Container();

    String formattedDate = DateFormat.yMd().format(
      descript!.date,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildDateTitle(context, descript.date),
        Text(
          formattedDate,
          style: theme.textTheme.caption,
        ),
      ],
    );
  }

  Widget _buildDateTitle(BuildContext context, DateTime date) {
    final theme = Theme.of(context);
    if (date.isYesterday || date.isToday) {
      if (date.isYesterday)
        return Text(
          'ontem:'.capitalize(),
          style: theme.textTheme.bodyText1?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        );
      if (date.isToday)
        return Text(
          'hoje:'.capitalize(),
          style: theme.textTheme.bodyText1?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        );
    }
    return Text(
      '${DateFormat.EEEE().format(date).capitalize()}:',
      style: theme.textTheme.bodyText1?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _builClicableText(
    BuildContext context,
    ReportDescriptionEntity? descript,
  ) {
    return InkWell(
      onTap: () => _buildDialog(context, descript),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blueGrey.shade100,
        ),
        child: Text(descript?.description ?? 'editar'),
      ),
    );
  }

  Future<dynamic> _buildDialog(
      BuildContext context, ReportDescriptionEntity? descript) {
    return showDialog(
      barrierColor: Colors.blueGrey.withOpacity(0.3),
      context: context,
      builder: (context) => ReportFormDialog(
        report: report,
        description: descript,
      ),
    );
  }

  Widget _buildEditButton(
    BuildContext context,
    ReportDescriptionEntity? descript,
  ) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        TextButton(
          onPressed: () => _buildDialog(context, descript),
          child: Text(
            'Clique para editar',
            style: theme.textTheme.bodyText1
                ?.copyWith(fontWeight: FontWeight.w200, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
