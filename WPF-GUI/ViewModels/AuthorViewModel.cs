using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;
using WPF_GUI.Commands;
using WPF_GUI.Models;
using WPF_GUI.Models.Entities;
using WPF_GUI.Services;

namespace WPF_GUI.ViewModels
{
    internal class AuthorViewModel : ViewModelBase
    {
        public IDialogService DialogService { get; }
        public DelegateCommand ShowDialogCommand { get; }
        public DelegateCommand AddBookToAuthorCommand { get; }
        public DelegateCommand RemoveBookFromAuthorCommand { get; }

        public List<Book> Books { get; set; }
        public List<Author> Authors { get; set; }
        public ObservableCollection<Book> AuthorBooks { get; set; }
        public Author? SelectedAuthor
        {
            get;
            set
            {
                field = value;
                RaisePropertyChanged();
            }
        }
        public Book? SelectedBookToAdd { get; set; }

        public AuthorViewModel(IDialogService dialogService)
        {
            DialogService = dialogService;
            ShowDialogCommand = new DelegateCommand(ExecuteShowDialog);
            AddBookToAuthorCommand = new DelegateCommand(AddBookToAuthor);
            RemoveBookFromAuthorCommand = new DelegateCommand(RemoveBookFromAuthor);

            SelectedAuthor = null;
            AuthorBooks = new ObservableCollection<Book>();

            Authors = GetAuthors();
            Books = GetAll<Book>();
        }

        void ExecuteShowDialog(object obj)
        {
            bool newAuthor = true;
            if (SelectedAuthor is null)
            {
                SelectedAuthor = new Author();
                AuthorBooks.Clear();
            }
            else
            {
                newAuthor = false;
                AuthorBooks = new ObservableCollection<Book>(SelectedAuthor.Isbn13s);
            }

            if (obj is string name)
            {
                DialogService.ShowDialog(name, this, result =>
                {
                    if (result == "True")
                    {
                        using var db = new BookstoreManagerContext();

                        db.Attach(SelectedAuthor);

                        if (newAuthor) db.Authors.Add(SelectedAuthor);

                        SelectedAuthor.Isbn13s.Clear();
                        AuthorBooks.ToList().ForEach(b => SelectedAuthor.Isbn13s.Add(b));

                        db.Update(SelectedAuthor);

                        try
                        {
                            db.SaveChanges();
                        }
                        catch (Exception e)
                        {

                        }
                    }
                    Authors = GetAuthors();
                    RaisePropertyChanged("Authors");
                });
            }
        }

        private void AddBookToAuthor(object obj)
        {
            if (SelectedBookToAdd is not null)
            {
                if (AuthorBooks.FirstOrDefault(x => x.Isbn13 == SelectedBookToAdd.Isbn13) is null)
                {
                    AuthorBooks.Add(SelectedBookToAdd);
                }
            }
        }
        private void RemoveBookFromAuthor(object obj)
        {
            if (obj is Book toRemove) AuthorBooks.Remove(toRemove);
        }

        public List<Author> GetAuthors()
        {
            using var context = new BookstoreManagerContext();

            return context.Authors.Include(x => x.Isbn13s).ToList();
            //return context.Authors.Include(x => x.Isbn13s).AsNoTracking().ToList();
        }
    }
}