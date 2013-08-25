
Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        CurrentTime.Text = "Welcome to my site, it is now " & DateTime.Now



    End Sub

    

   
End Class
