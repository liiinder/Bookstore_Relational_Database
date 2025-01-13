namespace WPF_GUI
{
    internal static class DbConfigTemplate
    {
        internal static string Connection = "connection string";
        internal static string Provider = "Microsoft.EntityFrameworkCore.SqlServer";
        internal static string Scaffold_DbContext_Url = $"Scaffold-DbContext -connection \"{Connection}\" -provider \"{Provider}\"";
    }
}