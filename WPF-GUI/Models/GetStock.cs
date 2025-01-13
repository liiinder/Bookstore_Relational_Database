namespace WPF_GUI.Models
{
    internal class GetStock
    {
        public GetStock()
        {
        }

        public string Isbn13 { get; set; } = null!;
        public string Title { get; set; }
        public int Stock { get; set; }
        public decimal Price { get; set; }
    }
}
