import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../data/models/address_model.dart';

class AddressItemTile extends StatelessWidget {
  final AddressModel address;
  final bool isSelected;
  final VoidCallback onTap;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const AddressItemTile({
    super.key,
    required this.address,
    required this.isSelected,
    required this.onTap,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    IconData icon = Icons.location_on_outlined;
    if (address.label.toLowerCase() == 'home') icon = Icons.home_rounded;
    if (address.label.toLowerCase() == 'work') icon = Icons.work_rounded;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ? AppColors.primary : const Color(0xFFF3F4F6),
          width: isSelected ? 1.5 : 1,
        ),
        boxShadow: [
          if (isSelected) BoxShadow(color: AppColors.primary.withAlpha(5), blurRadius: 10, offset: const Offset(0, 4)),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(color: (isSelected ? AppColors.primary : Colors.grey[400]!).withAlpha(15), shape: BoxShape.circle),
                      child: Icon(icon, color: isSelected ? AppColors.primary : Colors.grey[600], size: 20),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(address.label, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
                              if (address.isDefault) ...[
                                const SizedBox(width: 8),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                  decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(4)),
                                  child: const Text('DEFAULT', style: TextStyle(fontSize: 9, fontWeight: FontWeight.w900, color: Colors.grey)),
                                ),
                              ],
                            ],
                          ),
                          const SizedBox(height: 2),
                          Text(
                            address.fullAddress, 
                            style: TextStyle(color: Colors.grey[600], fontSize: 13, height: 1.3, fontWeight: FontWeight.w500),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Phone: ${address.phoneNumber}', 
                            style: TextStyle(color: Colors.grey[500], fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    if (isSelected)
                      const Icon(Icons.check_circle_rounded, color: Colors.green, size: 22),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Divider(height: 1, color: Color(0xFFF3F4F6)),
                ),
                Row(
                  children: [
                    _buildActionButton(Icons.edit_outlined, 'EDIT', onEdit),
                    const SizedBox(width: 24),
                    _buildActionButton(Icons.delete_outline_rounded, 'DELETE', onDelete, color: Colors.red),
                    const Spacer(),
                    if (!isSelected)
                      TextButton(
                        onPressed: onTap, 
                        style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
                        child: const Text('SELECT', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 12, color: AppColors.primary)),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label, VoidCallback onTap, {Color? color}) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: color ?? Colors.black87),
          const SizedBox(width: 4),
          Text(label, style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900, color: color ?? Colors.black87)),
        ],
      ),
    );
  }
}
