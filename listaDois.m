let
    lista = {10, 20, 30, 40, 50},
    
    // Contar elementos
    contagem = List.Count(lista),
    
    // Somar valores
    soma = List.Sum(lista),
    
    // Filtrar (valores > 25)
    filtrada = List.Select(lista, each _ > 25),
    
    // Transformar (multiplicar por 2)
    transformada = List.Transform(lista, each _ * 2)
in
    transformada