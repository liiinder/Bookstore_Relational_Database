namespace WPF_GUI.Models.Entities;

public partial class TitlesByAuthor
{
    public string Namn { get; set; } = null!;

    public string? Ålder { get; set; }

    public int? Titlar { get; set; }

    public decimal? Lagervärde { get; set; }
}
