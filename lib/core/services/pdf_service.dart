import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:villishop_customer/features/orders/data/models/order_model.dart';

class PdfService {
  static Future<void> generateAndDownloadInvoice(OrderModel order) async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Header(
                level: 0,
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Text('VILLISHOP INVOICE',
                        style: const pw.TextStyle(
                            fontSize: 24, fontWeight: pw.FontWeight.bold)),
                    pw.Text('Date: ${DateTime.now().toString().split(' ')[0]}'),
                  ],
                ),
              ),
              pw.SizedBox(height: 20),
              pw.Text('Order ID: ${order.orderId}',
                  style: const pw.TextStyle(fontWeight: pw.FontWeight.bold)),
              pw.Text('Customer: Sahil Kumar'),
              pw.Text(
                  'Delivery Address: ${order.deliveryAddressSnapshot.fullAddress}'),
              pw.SizedBox(height: 30),
              pw.TableHelper.fromTextArray(
                context: context,
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
                        style: const pw.TextStyle(
                            fontWeight: pw.FontWeight.bold, fontSize: 18)),
                  ],
                ),
              ),
              pw.SizedBox(height: 50),
              pw.Center(
                  child: pw.Text('Thank you for shopping with VilliShop!',
                      style:
                          const pw.TextStyle(fontStyle: pw.FontStyle.italic))),
            ],
          );
        },
      ),
    );

    // Share or Print directly (modern production approach)
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => pdf.save());

    // Save to Downloads if on Android (Optional, layoutPdf handles most cases)
    if (Platform.isAndroid) {
      final directory = await getExternalStorageDirectory();
      if (directory != null) {
        final file =
            File("${directory.path}/VilliShop_Invoice_${order.orderId}.pdf");
        await file.writeAsBytes(await pdf.save());
      }
    }
  }
}
