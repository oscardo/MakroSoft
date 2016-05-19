using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebMakroSoft.Codigo
{
    public static class Nulo
    {
        /// <summary>
        /// Flotante convierte de un valor a 0 o null
        /// </summary>
        /// <param name="Valor">Valor</param>
        /// <returns></returns>
        public static string Flotante(string Valor){
            string Respuesta = string.Empty;
            try
            {
                if (Valor == "") Respuesta = "0";
                else Respuesta = Valor;
            }
            catch (Exception e)
            {
                Respuesta = "0";
                BD.Auditoria(e.Data.ToString(), e.Message.ToString(), e.InnerException.ToString(), "Flotante");
            }
            return Respuesta;
        }

        /// <summary>
        /// Cadena convierte de un valor 0 o null
        /// </summary>
        /// <param name="Valor">cadena</param>
        /// <returns></returns>
        public static string Cadena(string Valor)
        {
            string Respuesta = string.Empty;
            try
            {
                if (Valor == "") Respuesta = string.Empty;
                else Respuesta = Valor;
            }
            catch (Exception e)
            {
                Respuesta = string.Empty;
                BD.Auditoria(e.Data.ToString(), e.Message.ToString(), e.InnerException.ToString(), "Cadena");
            }
            return Respuesta;
        }

        /// <summary>
        /// Cadena convierte de un valor 0 o null
        /// </summary>
        /// <param name="Valor">cadena</param>
        /// <returns></returns>
        public static bool Boleano(bool Valor)
        {
            bool Respuesta = false;
            try
            {
                if (Valor == true)
                {
                    Respuesta = true;
                }
                if (Valor == false)
                {
                    Respuesta = false;
                }
            }
            catch (Exception e)
            {
                BD.Auditoria(e.Data.ToString(), e.Message.ToString(), e.InnerException.ToString(), "Flotante");
            }
            return Respuesta;
        }

        /// <summary>
        /// Cadena convierte de un valor 0 o null
        /// </summary>
        /// <param name="Valor">cadena</param>
        /// <returns></returns>
        public static string Entero(string Valor)
        {
            string Respuesta = string.Empty;
            int Val = 0;
            try
            {
                if (int.TryParse(Valor, out Val) == false)
                {
                    Respuesta = Val.ToString();
                }
                if (int.TryParse(Valor, out Val) == true)
                {
                    Respuesta = Valor;
                }
            }
            catch (Exception e)
            {
                BD.Auditoria(e.Data.ToString(), e.Message.ToString(), e.InnerException.ToString(), "Entero");
            }
            return Respuesta;
        }

        /// <summary>
        /// Cadena convierte de un valor 0 o null
        /// </summary>
        /// <param name="Valor">cadena</param>
        /// <returns></returns>
        public static string Entero_positivo(string Valor)
        {
            string Respuesta = string.Empty;
            int Val = 0;
            try
            {
                if (int.TryParse(Valor, out Val) == false)
                {
                    Respuesta = Val.ToString();
                }
                if (int.TryParse(Valor, out Val) == true)
                {
                    Val = Math.Abs(int.Parse(Valor));
                    Respuesta = Val.ToString();
                }
            }
            catch (Exception e)
            {
                BD.Auditoria(e.Data.ToString(), e.Message.ToString(), e.InnerException.ToString(), "Entero");
            }
            return Respuesta;
        }


    }
}