abstract class DataSourceBase {
  
  Future<void> incluir(Map<String, dynamic> usuario);

  Future<void> excluir(Map<String, dynamic> usuario);

  Future<void> alterar(Map<String, dynamic> usuario);

  Future<Map<String, dynamic>> slecionar(String email);

  Future<List<Map<String, dynamic>>> selecionarTodos(Map<String, dynamic> usuario);
}