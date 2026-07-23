import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:villishop_customer/features/orders/data/models/order_model.dart';

class PdfService {
  static Future<void> generateAndDownloadInvoice(OrderModel order) async {
    final pdf = pw.Document();
    final ByteData logoData = await rootBundle.load('assets/images/logo.png');
    final Uint8List logoBytes = logoData.buffer.asUint8List();
    final logoImage = pw.MemoryImage(logoBytes);

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Image(logoImage, height: 60, width: 60),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                    children: [
                      pw.Text('VILLISHOP INVOICE',
                          style: pw.TextStyle(
                              fontSize: 20,
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColor.fromHex('#0B5D1E'))),
                      pw.Text('HAR GAON, HAR GHAR',
                          style: const pw.TextStyle(fontSize: 10)),
                      pw.Text(
                          'Date: ${DateTime.now().toString().split(' ')[0]}'),
                    ],
                  ),
                ],
              ),
              pw.Divider(thickness: 2, color: PdfColor.fromHex('#0B5D1E')),
              pw.SizedBox(height: 20),
              pw.Text('Order ID: ${order.orderId}',
                  style: const pw.TextStyle(fontWeight: pw.FontWeight.bold)),
              pw.Text('Customer: Sahil Kumar'),
              pw.Text(
                  'Delivery Address: ${order.deliveryAddressSnapshot.fullAddress}'),
              pw.SizedBox(height: 30),
              pw.TableHelper.fromTextArray(
                context: context,
                headerStyle: const pw.TextStyle(
                    fontWeight: pw.FontWeight.bold, color: PdfColors.white),
                headerDecoration:
                    const pw.BoxDecoration(color: PdfColor.fromInt(0xFF0B5D1E)),
                data: <List<String>>[
                  const <String>['Item', 'Qty', 'Price', 'Total'],
                  ...order.shopOrders.expand((shop) => shop.items).map(
                        (item) => [
                          item.product.name,
                          item.quantity.toString(),
                          'Rs. ${item.product.pricing.sellingPrice.toStringAsFixed(2)}',
                          'Rs. ${(item.product.pricing.sellingPrice * item.quantity).toStringAsFixed(2)}',
                        ],
                      ),
                ],
              ),
              pw.SizedBox(height: 20),
              pw.Align(
                alignment: pw.Alignment.centerRight,
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                  children: [
                    pw.Text(
                        'Subtotal: Rs. ${order.invoiceSnapshot.sellingPrice.toStringAsFixed(2)}'),
                    pw.Text(
                        'Delivery: Rs. ${order.invoiceSnapshot.deliveryCharge.toStringAsFixed(2)}'),
                    pw.Text(
                        'Tax: Rs. ${order.invoiceSnapshot.gstAmount.toStringAsFixed(2)}'),
                    pw.Divider(),
                    pw.Text(
                        'Total: Rs. ${order.invoiceSnapshot.grandTotal.toStringAsFixed(2)}',
                        style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 18,
                            color: PdfColor.fromHex('#0B5D1E'))),
                  ],
                ),
              ),
              pw.SizedBox(height: 50),
              pw.Center(
                child: pw.Column(
                  children: [
                    pw.Text('Thank you for shopping with VilliShop!',
                        style: pw.TextStyle(
                            fontStyle: pw.FontStyle.italic,
                            color: PdfColor.fromHex('#7CB518'))),
                    pw.SizedBox(height: 10),
                    pw.Text('Powered by YoungXCode Private Limited',
                        style: const pw.TextStyle(
                            fontSize: 8, color: PdfColors.grey)),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );

    // Share or Print directly
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => pdf.save());

    // Save to Downloads if on Android
    if (Platform.isAndroid) {
      try {
        final directory = await getExternalStorageDirectory();
        if (directory != null) {
          final file =
              File("${directory.path}/VilliShop_Invoice_${order.orderId}.pdf");
          await file.writeAsBytes(await pdf.save());
        }
      } catch (e) {
        debugPrint('Error saving PDF: $e');
      }
    }
  }
}
