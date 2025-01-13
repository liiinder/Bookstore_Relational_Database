namespace WPF_GUI.Models.Entities;

public partial class Order
{
    public int Id { get; set; }

    public int StoreId { get; set; }

    public int EmployeeId { get; set; }

    public int? CustomerId { get; set; }

    public DateTime CreatedAt { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public DateTime? DeletedAt { get; set; }

    public virtual Customer? Customer { get; set; }

    public virtual EmployeeStore EmployeeStore { get; set; } = null!;

    public virtual ICollection<OrderDetail> OrderDetails { get; set; } = new List<OrderDetail>();
}
