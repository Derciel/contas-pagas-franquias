@echo off
echo ========================================
echo    🚀 SISTEMA UNIFICADO FINAL
echo ========================================
echo.
echo Iniciando Sistema Unificado Final...
echo.
echo 📊 Dashboard: http://localhost:8526
echo 🎯 Funcionalidades: 
echo    - Relatorio 1: Franquias ATIVAS/INATIVAS
echo    - Relatorio 2: Contas a Receber + Clientes
echo 📁 Arquivos necessarios: 
echo    - FATURAMENTO FRANQUIAS.xlsx (Relatorio 1)
echo    - recebimentos_corrigidos_completo.xlsx (Relatorio 2)
echo    - clientes DGA.xlsx (opcional)
echo.
echo Aguarde...
echo.

python -m streamlit run sistema_unificado_final.py --server.port 8526

echo.
echo ========================================
echo Sistema encerrado
echo ========================================
pause
