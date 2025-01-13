namespace WPF_GUI.Models.Entities;

public partial class Employee
{
    public int Id { get; set; }

    public string? Firstname { get; set; }

    public string? Lastname { get; set; }

    public DateOnly? Birthdate { get; set; }

    public string? Phonenumber { get; set; }

    public string? Email { get; set; }

    public virtual ICollection<EmployeeStore> EmployeeStores { get; set; } = new List<EmployeeStore>();
}
