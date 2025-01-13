namespace WPF_GUI.Models.Entities;

public partial class Author
{
    public int Id { get; set; }

    public string Firstname { get; set; } = null!;

    public string Lastname { get; set; } = null!;

    public DateOnly? Birthdate { get; set; }

    public DateOnly? Deathdate { get; set; }

    public virtual ICollection<Book> Isbn13s { get; set; } = new List<Book>();
}
