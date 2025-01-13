using Microsoft.EntityFrameworkCore;
using WPF_GUI.Models.Entities;

namespace WPF_GUI.Models;

public partial class BookstoreManagerContext : DbContext
{
    public BookstoreManagerContext()
    {
    }

    public BookstoreManagerContext(DbContextOptions<BookstoreManagerContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Author> Authors { get; set; }

    public virtual DbSet<Book> Books { get; set; }

    public virtual DbSet<Customer> Customers { get; set; }

    public virtual DbSet<Employee> Employees { get; set; }

    public virtual DbSet<EmployeeStore> EmployeeStores { get; set; }

    public virtual DbSet<Inventory> Inventories { get; set; }

    public virtual DbSet<Order> Orders { get; set; }

    public virtual DbSet<OrderDetail> OrderDetails { get; set; }

    public virtual DbSet<SalesByEmployee> SalesByEmployees { get; set; }

    public virtual DbSet<Store> Stores { get; set; }

    public virtual DbSet<TitlesByAuthor> TitlesByAuthors { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        => optionsBuilder.UseSqlServer(DbConfig.Connection).EnableSensitiveDataLogging();


    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Author>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__author__3213E83F751186A2");

            entity.ToTable("author");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Birthdate).HasColumnName("birthdate");
            entity.Property(e => e.Deathdate)
                .HasDefaultValueSql("(NULL)")
                .HasColumnName("deathdate");
            entity.Property(e => e.Firstname)
                .HasMaxLength(100)
                .HasColumnName("firstname");
            entity.Property(e => e.Lastname)
                .HasMaxLength(100)
                .HasColumnName("lastname");

            entity.HasMany(d => d.Isbn13s).WithMany(p => p.Authors)
                .UsingEntity<Dictionary<string, object>>(
                    "AuthorBook",
                    r => r.HasOne<Book>().WithMany()
                        .HasForeignKey("Isbn13")
                        .HasConstraintName("FK__author_bo__isbn1__13A7DD28"),
                    l => l.HasOne<Author>().WithMany()
                        .HasForeignKey("AuthorId")
                        .HasConstraintName("FK__author_bo__autho__12B3B8EF"),
                    j =>
                    {
                        j.HasKey("AuthorId", "Isbn13").HasName("PK__author_b__4CF16DA92F7729FC");
                        j.ToTable("author_book");
                        j.IndexerProperty<int>("AuthorId").HasColumnName("author_id");
                        j.IndexerProperty<string>("Isbn13")
                            .HasMaxLength(20)
                            .IsUnicode(false)
                            .HasColumnName("isbn13");
                    });
        });

        modelBuilder.Entity<Book>(entity =>
        {
            entity.HasKey(e => e.Isbn13).HasName("PK__book__AA00666D8E184A8A");

            entity.ToTable("book", tb => tb.HasTrigger("force_format_isbn13"));

            entity.Property(e => e.Isbn13)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("isbn13");
            entity.Property(e => e.Language)
                .HasMaxLength(100)
                .HasColumnName("language");
            entity.Property(e => e.Price)
                .HasColumnType("money")
                .HasColumnName("price");
            entity.Property(e => e.Title)
                .HasMaxLength(100)
                .HasColumnName("title");
        });

        modelBuilder.Entity<Customer>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__customer__3213E83FCE89BBFF");

            entity.ToTable("customer");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Birthdate).HasColumnName("birthdate");
            entity.Property(e => e.Email)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("email");
            entity.Property(e => e.Firstname)
                .HasMaxLength(100)
                .HasColumnName("firstname");
            entity.Property(e => e.Joined).HasColumnName("joined");
            entity.Property(e => e.Lastname)
                .HasMaxLength(100)
                .HasColumnName("lastname");
            entity.Property(e => e.Phonenumber)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("phonenumber");
            entity.Property(e => e.PremiumMember)
                .HasDefaultValue(false)
                .HasColumnName("premium_member");
        });

        modelBuilder.Entity<Employee>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__employee__3213E83FE3E71892");

            entity.ToTable("employee");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Birthdate).HasColumnName("birthdate");
            entity.Property(e => e.Email)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("email");
            entity.Property(e => e.Firstname)
                .HasMaxLength(100)
                .HasColumnName("firstname");
            entity.Property(e => e.Lastname)
                .HasMaxLength(100)
                .HasColumnName("lastname");
            entity.Property(e => e.Phonenumber)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("phonenumber");
        });

        modelBuilder.Entity<EmployeeStore>(entity =>
        {
            entity.HasKey(e => new { e.EmployeeId, e.StoreId }).HasName("PK__employee__1F012198105752D6");

            entity.ToTable("employee_store");

            entity.Property(e => e.EmployeeId).HasColumnName("employee_id");
            entity.Property(e => e.StoreId).HasColumnName("store_id");
            entity.Property(e => e.Hiredate).HasColumnName("hiredate");

            entity.HasOne(d => d.Employee).WithMany(p => p.EmployeeStores)
                .HasForeignKey(d => d.EmployeeId)
                .HasConstraintName("FK__employee___emplo__200DB40D");

            entity.HasOne(d => d.Store).WithMany(p => p.EmployeeStores)
                .HasForeignKey(d => d.StoreId)
                .HasConstraintName("FK__employee___store__1F198FD4");
        });

        modelBuilder.Entity<Inventory>(entity =>
        {
            entity.HasKey(e => new { e.StoreId, e.Isbn13 }).HasName("PK__inventor__6852A56AFF8170D4");

            entity.ToTable("inventory");

            entity.Property(e => e.StoreId).HasColumnName("store_id");
            entity.Property(e => e.Isbn13)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("isbn13");
            entity.Property(e => e.Stock)
                .HasDefaultValue(1)
                .HasColumnName("stock");

            entity.HasOne(d => d.Isbn13Navigation).WithMany(p => p.Inventories)
                .HasForeignKey(d => d.Isbn13)
                .HasConstraintName("FK__inventory__isbn1__1A54DAB7");

            entity.HasOne(d => d.Store).WithMany(p => p.Inventories)
                .HasForeignKey(d => d.StoreId)
                .HasConstraintName("FK__inventory__store__1960B67E");
        });

        modelBuilder.Entity<Order>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__orders__3213E83FDD53E3AB");

            entity.ToTable("orders");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.CreatedAt)
                .HasPrecision(3)
                .HasColumnName("created_at");
            entity.Property(e => e.CustomerId).HasColumnName("customer_id");
            entity.Property(e => e.DeletedAt)
                .HasPrecision(3)
                .HasColumnName("deleted_at");
            entity.Property(e => e.EmployeeId).HasColumnName("employee_id");
            entity.Property(e => e.StoreId).HasColumnName("store_id");
            entity.Property(e => e.UpdatedAt)
                .HasPrecision(3)
                .HasColumnName("updated_at");

            entity.HasOne(d => d.Customer).WithMany(p => p.Orders)
                .HasForeignKey(d => d.CustomerId)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("FK__orders__customer__26BAB19C");

            entity.HasOne(d => d.EmployeeStore).WithMany(p => p.Orders)
                .HasForeignKey(d => new { d.EmployeeId, d.StoreId })
                .HasConstraintName("FK__orders__25C68D63");
        });

        modelBuilder.Entity<OrderDetail>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__order_de__3213E83F15498B92");

            entity.ToTable("order_details");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Discount).HasColumnName("discount");
            entity.Property(e => e.Isbn13)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("isbn13");
            entity.Property(e => e.OrderId).HasColumnName("order_id");
            entity.Property(e => e.Price)
                .HasColumnType("money")
                .HasColumnName("price");
            entity.Property(e => e.Quantity).HasColumnName("quantity");

            entity.HasOne(d => d.Isbn13Navigation).WithMany(p => p.OrderDetails)
                .HasForeignKey(d => d.Isbn13)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("FK__order_det__isbn1__2A8B4280");

            entity.HasOne(d => d.Order).WithMany(p => p.OrderDetails)
                .HasForeignKey(d => d.OrderId)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("FK__order_det__order__29971E47");
        });

        modelBuilder.Entity<SalesByEmployee>(entity =>
        {
            entity
                .HasNoKey()
                .ToView("sales_by_employee");

            entity.Property(e => e.Anställd).HasMaxLength(201);
            entity.Property(e => e.AntalSåldaBöcker).HasColumnName("Antal sålda böcker");
            entity.Property(e => e.TotalSäljsumma)
                .HasColumnType("money")
                .HasColumnName("Total säljsumma");
            entity.Property(e => e.UnikaSäljtillfällen).HasColumnName("Unika säljtillfällen");
        });

        modelBuilder.Entity<Store>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__store__3213E83F8E1D4148");

            entity.ToTable("store");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Address)
                .HasMaxLength(100)
                .HasColumnName("address");
            entity.Property(e => e.City)
                .HasMaxLength(100)
                .HasColumnName("city");
            entity.Property(e => e.Country)
                .HasMaxLength(100)
                .HasColumnName("country");
            entity.Property(e => e.Email)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("email");
            entity.Property(e => e.Name)
                .HasMaxLength(100)
                .HasColumnName("name");
            entity.Property(e => e.Phonenumber)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("phonenumber");
            entity.Property(e => e.PostalCode)
                .HasMaxLength(10)
                .IsUnicode(false)
                .HasColumnName("postal_code");
        });

        modelBuilder.Entity<TitlesByAuthor>(entity =>
        {
            entity
                .HasNoKey()
                .ToView("titles_by_author");

            entity.Property(e => e.Lagervärde).HasColumnType("money");
            entity.Property(e => e.Namn).HasMaxLength(201);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
