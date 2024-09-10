import 'package:caed/core/helpers/colors_helpers.dart';
import 'package:caed/core/models/packages_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataTab extends StatelessWidget {
  const DataTab({super.key, this.package});

  final PackagesModel? package;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Dados da caixa",
                  style: GoogleFonts.sora(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              _buildDataRow("CÓDIGO", package?.cod ?? ""),
              const Divider(),
              _buildDataRow("PONTO DE ENTREGA", package?.pontoDeEntrega ?? ""),
              const Divider(),
              _buildDataRow("MUNICIPIO", package?.municipio ?? ""),
              const Divider(),
              _buildDataRow("ESCOLA", package?.escola ?? ""),
              const Divider(),
              _buildDataRow("ANO ESCOLAR/ETAPA", package?.anoEscolar ?? ""),
              const Divider(),
              _buildDataRow("COMPONENTE \nCURRICULAR", package?.componenteEscolar ?? ""),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDataRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              label,
              style: GoogleFonts.sora(
                fontSize: 14,
                color: ColorHelper.hexToColor("#757575"),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              overflow: TextOverflow.ellipsis,
              maxLines: 3, 
              style: GoogleFonts.sora(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
