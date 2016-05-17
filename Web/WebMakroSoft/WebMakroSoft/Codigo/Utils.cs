using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebMakroSoft.Codigo
{
    public static class Utils
    {
        public static string Consulta_Parametros(string Parametro)
        {
            string returno = string.Empty;
            System.Configuration.Configuration rootWebConfig1 = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration(null);
            if (0 < rootWebConfig1.AppSettings.Settings.Count)
            {
                System.Configuration.KeyValueConfigurationElement customSetting = rootWebConfig1.AppSettings.Settings[Parametro];
                if (null != customSetting)
                    returno = (string)customSetting.Value;
                else
                    returno = null;
            }
            return returno;
        }
    }
}