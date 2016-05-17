using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebMakroSoft.Codigo
{
    public static class CookieMacrosoft
    {
        public static HttpCookie CookieSession = new HttpCookie("Usuario");

        public static HttpCookie CrearCookie(Usuario Datos)
        {
            DateTime now = DateTime.Now;
            string tiempo = Utils.Consulta_Parametros("MinutosCookie");
            CookieSession.Value = Datos.ToString();
            CookieSession.Secure = true;
            CookieSession.Expires = now.AddMinutes(10);
            return CookieSession;
        }
        public static HttpCookie LeerCookie()
        {
            return CookieSession;
        }
        public static bool ValidarCookie(HttpCookie Cookie) {
            bool valor = false;
            if (Cookie.Secure == CookieSession.Secure)
            {
                if (CookieSession.Secure == true)
                    valor = true;
                else
                    valor = false;
            }
            else {
                valor = false;
            }
            return valor;
        }
    }
}