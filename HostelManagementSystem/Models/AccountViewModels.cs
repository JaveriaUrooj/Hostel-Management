using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace HostelManagementSystem.Models
{
    public class ExternalLoginConfirmationViewModel
    {
        [Required]
        [Display(Name = "Email")]
        public string Email { get; set; }
    }

    public class ExternalLoginListViewModel
    {
        public string ReturnUrl { get; set; }
    }

    public class SendCodeViewModel
    {
        public string SelectedProvider { get; set; }
        public ICollection<System.Web.Mvc.SelectListItem> Providers { get; set; }
        public string ReturnUrl { get; set; }
        public bool RememberMe { get; set; }
    }

    public class VerifyCodeViewModel
    {
        [Required]
        public string Provider { get; set; }

        [Required]
        [Display(Name = "Code")]
        public string Code { get; set; }
        public string ReturnUrl { get; set; }

        [Display(Name = "Remember this browser?")]
        public bool RememberBrowser { get; set; }

        public bool RememberMe { get; set; }
    }

    public class ForgotViewModel
    {
        [Required]
        [Display(Name = "Email")]
        public string Email { get; set; }
    }

    public class LoginViewModel
    {


        [Required]
        [Display(Name = "Email")]
        public string Email { get; set; }
        

        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }
        [Required]
        [Display(Name = "Type")]
        public bool Type { get; set; }
    }

    public class RegisterViewModel
    {
        [Required]
        [EmailAddress]
        [Display(Name = "Email")]
        public string Email { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Name")]
        public string Name { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Campus")]
        public int CampusID{ get; set; }

        [Required]
        [DataType(DataType.DateTime)]
        [Display(Name = "Date Of Birth")]
        public string DateOfBirth{ get; set; }

        [Required]
        [DataType(DataType.Text)]
        [MaxLength(13)]
        [Display(Name = "CNIC")]
        public string CNIC { get; set; }

        [Required]
        [DataType(DataType.PhoneNumber)]
        [Display(Name = "Contact No.")]
        [Phone]
        public string contact_no { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Blood Group")]
        public int? BloodGroupID{ get; set; }

        [Required]
        [Display(Name = "City Name")]
        public int CityID { get; set; }

        [Required]
        public bool type { get; set; }


        

        [DataType(DataType.Text)]
        [Display(Name = "Registeration No.")]
        public string Registeration_No { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [MaxLength(4)]
        [Display(Name = "CGPA")]
        public string CGPA { get; set; }

        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Department")]
        public int DepartmentID { get; set; }

        [DataType(DataType.Password)]
        [Required]
        [Display(Name = "Confirm password")]
        [Compare("Password", ErrorMessage = "The password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }
    }

    public class ResetPasswordViewModel
    {
        [Required]
        [EmailAddress]
        [Display(Name = "Email")]
        public string Email { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Confirm password")]
        [Compare("Password", ErrorMessage = "The password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }

        public string Code { get; set; }
    }

    public class ForgotPasswordViewModel
    {
        [Required]
        [EmailAddress]
        [Display(Name = "Email")]
        public string Email { get; set; }
    }
}
