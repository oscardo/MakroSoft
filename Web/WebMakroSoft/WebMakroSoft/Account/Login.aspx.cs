using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using WebMakroSoft.Models;

namespace WebMakroSoft.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";
            // Enable this once you have account confirmation enabled for password reset functionality
            //ForgotPasswordHyperLink.NavigateUrl = "Forgot";
            OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Validate the user password
                //U.NombreUsuario = Email.Text.ToString().ToLower();
                //U.Password = Password.Text.ToString().ToLower();
                CUsuarios CU = new CUsuarios();
                var VUsuario = CU.ObtenerUnUsuario(Email.Text.ToLower().ToString(), Password.Text.ToString().ToLower());
                if (VUsuario != null) {
                    switch (VUsuario.FKRol)
                    {
                        case 1:
                            Response.Redirect(String.Format("/Administracion/Default.aspx"));
                            //Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
                            //                                Request.QueryString["ReturnUrl"],
                            //                                RememberMe.Checked),
                            //                  true);
                            break;
                        default:
                            FailureText.Text = "Error al ingresar";
                            ErrorMessage.Visible = true;
                            break;
                    }
                }
                else
                {
                    FailureText.Text = "Error al ingresar";
                    ErrorMessage.Visible = true;
                }


                //U.Usuario<DatosUsuario>(p => (p.NombreUsuario == User) && (p.Password == Clave));
                //var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                //var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();

                // This doen't count login failures towards account lockout
                // To enable password failures to trigger lockout, change to shouldLockout: true
                //var result = signinManager.PasswordSignIn(Email.Text, Password.Text, RememberMe.Checked, shouldLockout: false);

                //switch (result)
                //{
                //    case SignInStatus.Success:
                //        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                //        break;
                //    case SignInStatus.LockedOut:
                //        Response.Redirect("/Account/Lockout");
                //        break;
                //    case SignInStatus.RequiresVerification:
                //        Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}", 
                //                                        Request.QueryString["ReturnUrl"],
                //                                        RememberMe.Checked),
                //                          true);
                //        break;
                //    case SignInStatus.Failure:
                //    default:
                //        FailureText.Text = "Error al ingresar";
                //        ErrorMessage.Visible = true;
                //        break;
                //}
            }
        }
    }
}