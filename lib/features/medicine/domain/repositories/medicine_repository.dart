import '../entities/medicine.dart';

abstract interface class MedicineRepository {
  Future<List<Medicine>> getMedicines();

  Future<void> addMedicine(Medicine medicine);

  Future<void> updateMedicine(Medicine medicine);

  Future<void> deleteMedicine(String id);
}
