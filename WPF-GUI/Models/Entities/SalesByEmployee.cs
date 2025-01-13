namespace WPF_GUI.Models.Entities;

public partial class SalesByEmployee
{
    public int Butiksnummer { get; set; }

    public int Anställningsnummer { get; set; }

    public string? Anställd { get; set; }

    public decimal? TotalSäljsumma { get; set; }

    public int? UnikaSäljtillfällen { get; set; }

    public int? AntalSåldaBöcker { get; set; }
}
