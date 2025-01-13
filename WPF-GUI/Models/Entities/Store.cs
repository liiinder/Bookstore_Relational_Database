namespace WPF_GUI.Models.Entities;

public partial class Store
{
    public int Id { get; set; }

    public string? Name { get; set; }

    public string? Country { get; set; }

    public string? City { get; set; }

    public string? PostalCode { get; set; }

    public string? Address { get; set; }

    public string? Phonenumber { get; set; }

    public string? Email { get; set; }

    public virtual ICollection<EmployeeStore> EmployeeStores { get; set; } = new List<EmployeeStore>();

    public virtual ICollection<Inventory> Inventories { get; set; } = new List<Inventory>();
}
