using System.ComponentModel;
using System.Runtime.CompilerServices;
using WPF_GUI.Models;

namespace WPF_GUI.ViewModels
{
    public class ViewModelBase : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler? PropertyChanged;

        public void RaisePropertyChanged([CallerMemberName] string? PropertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(PropertyName));
        }

        public List<TModel> GetAll<TModel>() where TModel : class
        {
            using var context = new BookstoreManagerContext();

            return context.Set<TModel>().ToList();
        }
    }
}