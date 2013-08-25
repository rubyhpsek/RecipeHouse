Imports System.Data.OleDb

Partial Class VB
    Inherits System.Web.UI.Page
    <System.Web.Script.Services.ScriptMethod(), System.Web.Services.WebMethod()>
    Public Shared Function SearchCustomers(ByVal prefixText As String, ByVal count As Integer) As List(Of String)
        Dim conn As OleDbConnection = New OleDbConnection
        conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=|DataDirectory|ProjectDatabaseNew.mdb;"
        Dim cmd As OleDbCommand = New OleDbCommand
        cmd.CommandText = "select Firstname from Customers where" & _
        " Firstname like @SearchText + '%'"
        cmd.Parameters.AddWithValue("@SearchText", prefixText)
        cmd.Connection = conn
        conn.Open()
        Dim customers As List(Of String) = New List(Of String)
        Dim sdr As OleDbDataReader = cmd.ExecuteReader
        While sdr.Read
            customers.Add(sdr("Firstname").ToString)
        End While
        conn.Close()
        Return customers
    End Function
End Class
