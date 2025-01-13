namespace WPF_GUI.Models.Entities;

public partial class Customer
{
    public int Id { get; set; }

    public string? Firstname { get; set; }

    public string? Lastname { get; set; }

    public DateOnly? Birthdate { get; set; }

    public DateOnly? Joined { get; set; }

    public bool? PremiumMember { get; set; }

    public string? Phonenumber { get; set; }

    public string? Email { get; set; }

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();
}
