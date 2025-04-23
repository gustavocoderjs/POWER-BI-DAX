// Exemplo integrando todos os conceitos
let
    // Lista de registros
    funcionarios = {
        [ID=1, Nome="Ana", Habilidades={"Excel", "Power BI", "SQL"}],
        [ID=2, Nome="Pedro", Habilidades={"Python", "DAX", "SQL"}],
        [ID=3, Nome="Carla", Habilidades={"Power BI", "R", "Estatística"}]
    },
    
    // Converter para tabela
    tabelaFunc = Table.FromRecords(funcionarios),
    
    // Expandir lista de habilidades
    habilidadesExpandidas = Table.ExpandListColumn(tabelaFunc, "Habilidades"),
    
    // Contar habilidades por pessoa
    contagemHabilidades = Table.Group(habilidadesExpandidas, {"Nome"}, {
        {"Total Habilidades", each Table.RowCount(_), type number}
    })
in
    contagemHabilidades