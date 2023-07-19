using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data; // Importa o banco de dados
using System.Data.SqlClient;


    public class ClasseConexao
    {
        SqlConnection conexao = new SqlConnection(); // Classe responsável pela conexão

        public SqlConnection conectar(){
            try{
            String strConexao = "Data Source=LAPTOP-Q53I0SRO;Initial Catalog=Bd_cuidador;Integrated Security=True"; //Parâmetros para a conexão do banco
            //String strConexao = "Password=etesp; Persist Security Info=True; User ID=sa; Initial Catalog=Teste; Data Source=" + Environment.MachineName + "\\SQLEXPRESS"; //Parâmetros para a conexão do banco
                conexao.ConnectionString = strConexao; //Pega a strConexao e joga dentro da conexao
                conexao.Open(); //abre a conexao
                return conexao;
            }catch (Exception){
                desconectar();
                return null;
                // se tiver algo de errado no strConexao ele desconecta e retorna null
            }
        }

        public void desconectar(){
            try{
                if ((conexao.State == ConnectionState.Open)){
                    conexao.Close();
                    conexao.Dispose();
                    conexao = null;
                }
            }catch (Exception) { }
        }

        public DataTable executarSQL(String comando_sql){
            try{
                conectar(); //Conecta com o banco
                SqlDataAdapter adaptador = new SqlDataAdapter(comando_sql, conexao); //Preparo que necessita de um comando_sql (select) e dps conexao
                DataSet ds = new DataSet(); //Área em branco
                adaptador.Fill(ds); //Manda preencher o dataset
                return ds.Tables[0]; //Retorna uma tabela (Matriz com classe)
            }catch (Exception){
                return null;
            }finally{
                desconectar();
            }
        }

        public bool manutencaoDB(String comando_sql) //incluir, alterar, excluir
        {
            try
            {
                conectar();
                SqlCommand comando = new SqlCommand();
                comando.CommandText = comando_sql;
                comando.Connection = conexao;
                comando.ExecuteScalar();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
            finally
            {
                desconectar();
            }
        }//fim do método manutençãoDB

        public int manutencaoDB_Parametros(SqlCommand comando) //incluir, alterar, excluir com parâmetros
        {
            int retorno = 0;
            try
            {
                comando.Connection = conectar();  //adiciona a conexão ao SQLCommand
                retorno = comando.ExecuteNonQuery(); //devolve o número de linhas afetadas no banco
            }
            catch (Exception) { }
            desconectar();
            return retorno;
        }//fim do método manutençãoDB com parâmetros

    }//fim da classeConexao

