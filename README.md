Análise Inteligente de Dados

Um agente inteligente desenvolvido em Python para automação de tarefas em arquivos Excel, incluindo análise de dados, aplicação de fórmulas e geração de relatórios.

## 🚀 Funcionalidades Principais

### 📊 Manipulação de Dados
- **Carregar arquivos Excel** (suporte a múltiplas planilhas)
- **Informações detalhadas** sobre estrutura dos dados
- **Limpeza automática** de dados (remoção de nulos, duplicados)
- **Aplicação de fórmulas personalizadas**
- **Análise de padrões e tendências**

### 📈 Análise Estatística
- **Estatísticas descritivas** completas
- **Análise de correlação** entre variáveis
- **Detecção de outliers**
- **Distribuição de dados**
- **Sugestões inteligentes** de análise

### 📊 Visualização de Dados
- **Gráficos interativos** com Plotly
- **Múltiplos tipos**: barras, linhas, dispersão, pizza, histograma
- **Exportação** para HTML

## 🛠️ Instalação

1. Clone o repositório ou baixe os arquivos
2. Instale as dependências:

```bash
pip install -r requirements.txt
```

## 📖 Como Usar

### Interface de Linha de Comando

```bash
python main.py --file "seu_arquivo.xlsx" [opções]
```

### Exemplos de Uso

#### 1. Informações básicas do arquivo
```bash
python main.py --file "dados.xlsx" --info
```

#### 2. Análise estatística completa
```bash
python main.py --file "dados.xlsx" --stats --suggestions
```

#### 3. Limpeza de dados
```bash
python main.py --file "dados.xlsx" --clean remover_nulos remover_duplicados --output "dados_limpos.xlsx"
```

#### 4. Aplicar fórmula personalizada
```bash
python main.py --file "vendas.xlsx" --formula "([preco] * [quantidade]) * 0.9" --target "valor_liquido"
```

#### 5. Criar gráfico de vendas
```bash
python main.py --file "vendas.xlsx" --chart bar --x "mes" --y "total_vendas" --title "Vendas Mensais"
```

#### 6. Análise de padrões
```bash
python main.py --file "dados.xlsx" --analyze "coluna_alvo"
```

### Uso Programático (Python)

```python
from excel_agent import ExcelAgent

# Inicializa o agente
agent = ExcelAgent()

# Carrega arquivo Excel
dataframes = agent.load_excel("seu_arquivo.xlsx")

# Obtém informações da planilha
info = agent.get_sheet_info("Planilha1")
print(info)

# Aplica fórmula
agent.apply_formula("Planilha1", "nova_coluna", "([col1] + [col2]) / 2")

# Análise estatística
stats = agent.basic_statistics("Planilha1")

# Cria gráfico
fig = agent.create_chart("Planilha1", "bar", "categoria", "valor")

# Salva resultados
agent.save_excel("resultado_final.xlsx")
```

## 📋 Parâmetros da Linha de Comando

| Parâmetro | Descrição | Exemplo |
|-----------|-----------|---------|
| `--file, -f` | Caminho do arquivo Excel (obrigatório) | `--file "dados.xlsx"` |
| `--sheet, -s` | Planilha específica | `--sheet "Vendas"` |
| `--info, -i` | Mostrar informações da planilha | `--info` |
| `--stats` | Calcular estatísticas básicas | `--stats` |
| `--clean` | Operações de limpeza | `--clean remover_nulos` |
| `--formula` | Fórmula personalizada | `--formula "([A] + [B]) * 2"` |
| `--target` | Coluna de destino | `--target "resultado"` |
| `--chart` | Tipo de gráfico | `--chart bar` |
| `--x, --y` | Colunas para gráfico | `--x "mes" --y "valor"` |
| `--title` | Título do gráfico | `--title "Vendas 2024"` |
| `--output, -o` | Arquivo de saída | `--output "resultado.xlsx"` |
| `--analyze` | Analisar coluna específica | `--analyze "vendas"` |
| `--suggestions` | Mostrar sugestões | `--suggestions` |

## 🧹 Operações de Limpeza Disponíveis

- `remover_nulos`: Remove linhas com valores nulos
- `remover_duplicados`: Remove linhas duplicadas
- `preencher_nulos_media`: Preenche nulos com média
- `preencher_nulos_mediana`: Preenche nulos com mediana
- `preencher_nulos_moda`: Preenche nulos com moda
- `preencher_nulos_zero`: Preenche nulos com zero

## 📊 Tipos de Gráficos

- `bar`: Gráfico de barras
- `line`: Gráfico de linhas
- `scatter`: Gráfico de dispersão
- `pie`: Gráfico de pizza
- `histogram`: Histograma

## 💡 Dicas de Uso

1. **Fórmulas**: Use colchetes `[nome_coluna]` para referenciar colunas nas fórmulas
2. **Múltiplas operações**: Combine várias operações em um comando
3. **Análise automática**: Use `--suggestions` para obter insights dos dados
4. **Exportação**: Gráficos são salvos automaticamente como HTML

## 🔧 Estrutura do Projeto

```
Agente_BOT/
├── excel_agent.py      # Classe principal do agente
├── main.py            # Interface de linha de comando
├── requirements.txt   # Dependências Python
└── README.md         # Documentação
```

## 📝 Exemplo de Workflow Completo

```bash
# 1. Analisar arquivo original
python main.py --file "vendas_2024.xlsx" --info --stats --suggestions

# 2. Limpar dados
python main.py --file "vendas_2024.xlsx" --clean remover_nulos preencher_nulos_media --output "vendas_limpo.xlsx"

# 3. Aplicar fórmulas
python main.py --file "vendas_limpo.xlsx" --formula "([preco] * [quantidade])" --target "total_venda" --output "vendas_calculado.xlsx"

# 4. Criar visualizações
python main.py --file "vendas_calculado.xlsx" --chart bar --x "mes" --y "total_venda" --title "Vendas Mensais 2024"

# 5. Análise final
python main.py --file "vendas_calculado.xlsx" --analyze "total_venda" --stats
```

## 🚀 Próximos Passos

- [ ] Interface web com Streamlit
- [ ] Suporte a arquivos CSV
- [ ] Machine Learning integrado
- [ ] Relatórios automáticos em PDF
- [ ] Integração com APIs externas

## 📄 Licença

Este projeto está sob licença MIT. Sinta-se livre para usar, modificar e distribuir.
