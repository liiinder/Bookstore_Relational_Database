namespace WPF_GUI.Models.Entities;

public partial class EmployeeStore
{
    public int EmployeeId { get; set; }

    public int StoreId { get; set; }

    public DateOnly? Hiredate { get; set; }

    public virtual Employee Employee { get; set; } = null!;

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();

    public virtual Store Store { get; set; } = null!;
}
