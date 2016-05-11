using System.Linq;

namespace WebMakroSoft
{
    public partial class CUsuarios
    {
        private MakroSoftDB2Entities DatosUsuario = new MakroSoftDB2Entities();
        public Usuario ObtenerUnUsuario(string User, string Clave) {
            return DatosUsuario.Usuario.SingleOrDefault<Usuario>(p => (p.NombreUsuario == User) && (p.Password == Clave));
        }
    }
}