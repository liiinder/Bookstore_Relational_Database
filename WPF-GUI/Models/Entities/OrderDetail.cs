namespace WPF_GUI.Models.Entities;

public partial class OrderDetail
{
    public int Id { get; set; }

    public int? OrderId { get; set; }

    public string? Isbn13 { get; set; }

    public decimal? Price { get; set; }

    public int? Quantity { get; set; }

    public double? Discount { get; set; }

    public virtual Book? Isbn13Navigation { get; set; }

    public virtual Order? Order { get; set; }
}
