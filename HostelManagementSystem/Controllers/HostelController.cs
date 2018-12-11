using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HostelManagementSystem.Controllers
{
    public class HostelController : Controller
    {
        // GET: Hostel
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult AddHostel()
        {
            return View();
        }
        public ActionResult Alottment()
        {
            return View();
        }
        public ActionResult GoToAlottment()
        {
            return View();
        }
    }
}