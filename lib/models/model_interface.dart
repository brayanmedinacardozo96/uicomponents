abstract class JsonSerializable<T> {
  // Método para crear un objeto a partir de un JSON
  T fromJson(Map<String, dynamic> json);
  // Método para convertir el objeto a un JSON
  Map<String, dynamic> toJson();
}
