using HostelManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HostelManagementSystem.Controllers
{
    public class HostelSystemController : Controller
    {
        // GET: HostelSystem
        public ActionResult Index()
        {
            return View();
        }

        // GET: HostelSystem/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }
        [HttpGet]
        public ActionResult calculate()
        {
            HostelSystemEntities db = new HostelSystemEntities();
            List<Hostel> h = db.Hostels.ToList();
            ViewBag.hostel = h;
            return View();
        }
        [HttpPost]
        public ActionResult calculate(AllotmentViewModel collection)
        {
            try
            {
                string[] session = { };
                bool ty = true;
                int sum = 0;
                int cubical = 0;
                int biseater = 0;
                int triseater = 0;
                int fourseater = 0;
                int fiveseater = 0;
                int sixseater = 0;
                int multiseater = 0;
                HostelSystemEntities db = new HostelSystemEntities();
               // var Hostels = db.Hostels.Where(x => x.HostelID == collection.hostelId);
                var rooms = db.Rooms.Where(x => x.Hostelid == collection.hostelId);
                List<Room> room = new List<Room>();
                List<int> f = new List<int>();
                foreach(var i in rooms)
                {
                    Room r = new Room();
                    r.RoomID = i.RoomID;
                    r.RoomTypeid = i.RoomTypeid;
                    r.Hostelid = i.Hostelid;
                    room.Add(r);
                }
                foreach(Room r in room)
                {
                    var rt = db.RoomTypes.Where(x => x.RoomTypeID == r.RoomTypeid);
                      
                        foreach(RoomType t in rt)
                        {
                            if(t.RoomType1 == "Cubical")
                            {
                                cubical = r.TotalRooms;
                                f.Add(cubical);
                            }
                            if(t.RoomType1 == "Biseater")
                            {
                                biseater = r.TotalRooms;
                                f.Add(biseater);
                            }
                            if (t.RoomType1 == "Triseater")
                            {
                                triseater = r.TotalRooms;
                                f.Add(triseater);
                            }
                            if (t.RoomType1 == "Fourseater")
                            {
                                fourseater = r.TotalRooms;
                                f.Add(fourseater);
                            }
                            if (t.RoomType1 == "Five-seater")
                            {
                                fiveseater = r.TotalRooms;
                                f.Add(fiveseater);
                            }
                            if (t.RoomType1 == "Six-seater")
                            {
                                sixseater = r.TotalRooms;
                                f.Add(sixseater);
                            }
                            if (t.RoomType1 == "Multi-seater")
                            {
                                multiseater = r.TotalRooms;
                                f.Add(multiseater);
                            }
                        }
                    var users = db.AspNetUsers;
                    foreach(var u in users)
                    {
                        if(u.type == true )
                        {
                            string reg = u.Registeration_No;
                            string[] words = reg.Split('-');
                            if (collection.session14 == true)
                            {
                                session[0] = "2";
                                session[1] = "0";
                                session[2] = "1";
                                session[3] = "4";
                                for (int i = 0; i <= 3; i++)
                                {
                                    if (words[i] == session[i])
                                    {

                                    }
                                    else
                                    {
                                        ty = false;
                                    }
                                }
                                if(ty == true)
                                {
                                    
                                }

                            }

                        }
                    }
           
                }
                ViewBag.List = f;
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        [HttpGet]
        // GET: HostelSystem/Create

        public ActionResult Create()
        {
            return View();
        }

        // POST: HostelSystem/Create
        [HttpPost]
        public ActionResult Create(HoetelViewModel collection)
        {
            try
            {
               
                HostelSystemEntities db = new HostelSystemEntities();
                Hostel h = new Hostel();
                HostelResident hr = new HostelResident();
                HostelFeature hf = new HostelFeature();
                Room room = new Room();
                h.Name = collection.Name;
                db.Hostels.Add(h);
                db.SaveChanges();
                if (collection.residentboy == "boy")
                {
                    hr.Hid = h.HostelID;
                    hr.Rid = 1;
                    db.HostelResidents.Add(hr);
                    db.SaveChanges();
                }
                if (collection.residentgirl == "girl")
                {
                    hr.Hid = h.HostelID;
                    hr.Rid = 2;
                    db.HostelResidents.Add(hr);
                    db.SaveChanges();
                }
                if (collection.residentfaculity == "faculity")
                {
                    hr.Hid = h.HostelID;
                    hr.Rid = 3;
                    db.HostelResidents.Add(hr);
                    db.SaveChanges();
                }
                if (collection.residentstudent == "student")
                {
                    hr.Hid = h.HostelID;
                    hr.Rid = 4;
                    db.HostelResidents.Add(hr);
                    db.SaveChanges();
                }
                if (collection.residentguests == "guests")
                {
                    hr.Hid = h.HostelID;
                    hr.Rid = 5;
                    db.HostelResidents.Add(hr);
                    db.SaveChanges();
                }
                List<Feature> features = db.Features.ToList();
                foreach(Feature i in features)
                {
                    if(i.Name == "TV Room")
                    {
                        if(collection.featureTvhall == true)
                        {
                            hf.Hid = h.HostelID;
                            hf.Fid = i.FeaturesID;
                            db.HostelFeatures.Add(hf);
                            db.SaveChanges();
                        }
                    }
                    if(i.Name== "Mess" && collection.featureMess == true)
                    {
                        hf.Hid = h.HostelID;
                        hf.Fid = i.FeaturesID;
                        db.HostelFeatures.Add(hf);
                        db.SaveChanges();
                    }
                    if(i.Name == "Attach Bath" && collection.featureAttachBath == true)
                    {
                        hf.Hid = h.HostelID;
                        hf.Fid = i.FeaturesID;
                        db.HostelFeatures.Add(hf);
                        db.SaveChanges();
                    }
                    if(i.Name == "WIFI" && collection.featureWifi == true)
                    {
                        hf.Hid = h.HostelID;
                        hf.Fid = i.FeaturesID;
                        db.HostelFeatures.Add(hf);
                        db.SaveChanges();
                    }
                }

                /*  if (collection.totalcubical != 0)
                  {
                      RoomType rt = new RoomType();
                      rt.RoomType1 = "Cubical";
                      rt.TotalRooms = collection.totalcubical;
                      db.RoomTypes.Add(rt);
                      db.SaveChanges();
                      room.Hostelid = h.HostelID;
                      room.RoomTypeid = rt.RoomTypeID;
                      db.Rooms.Add(room);
                      db.SaveChanges();
                  }
                  if (collection.totalBiseater != 0)
                  {
                      RoomType rt = new RoomType();
                      rt.RoomType1 = "Biseater";
                      rt.TotalRooms = collection.totalBiseater;
                      db.RoomTypes.Add(rt);
                      db.SaveChanges();
                      room.Hostelid = h.HostelID;
                      room.RoomTypeid = rt.RoomTypeID;
                      db.Rooms.Add(room);
                      db.SaveChanges();
                  }
                  if (collection.totalTriseater != 0)
                  {
                      RoomType rt = new RoomType();
                      rt.RoomType1 = "Triseater";
                      rt.TotalRooms = collection.totalTriseater;
                      db.RoomTypes.Add(rt);
                      db.SaveChanges();
                      room.Hostelid = h.HostelID;
                      room.RoomTypeid = rt.RoomTypeID;
                      db.Rooms.Add(room);
                      db.SaveChanges();
                  }
                  if (collection.totalFourseater != 0)
                  {
                      RoomType rt = new RoomType();
                      rt.RoomType1 = "Four-seater";
                      rt.TotalRooms = collection.totalFourseater;
                      db.RoomTypes.Add(rt);
                      db.SaveChanges();
                      room.Hostelid = h.HostelID;
                      room.RoomTypeid = rt.RoomTypeID;
                      db.Rooms.Add(room);
                      db.SaveChanges();
                  }
                  if (collection.totalFiveseater != 0)
                  {
                      RoomType rt = new RoomType();
                      rt.RoomType1 = "Five-seater";
                      rt.TotalRooms = collection.totalFiveseater;
                      db.RoomTypes.Add(rt);
                      db.SaveChanges();
                      room.Hostelid = h.HostelID;
                      room.RoomTypeid = rt.RoomTypeID;
                      db.Rooms.Add(room);
                      db.SaveChanges();
                  }
                  if (collection.totalsixseater != 0)
                  {
                      RoomType rt = new RoomType();
                      rt.RoomType1 = "Six-seater";
                      rt.TotalRooms = collection.totalsixseater;
                      db.RoomTypes.Add(rt);
                      db.SaveChanges();
                      room.Hostelid = h.HostelID;
                      room.RoomTypeid = rt.RoomTypeID;
                      db.Rooms.Add(room);
                      db.SaveChanges();
                  }
                  if (collection.totalmultiseater != 0)
                  {
                      RoomType rt = new RoomType();
                      rt.RoomType1 = "Multiseater";
                      rt.TotalRooms = collection.totalmultiseater;
                      db.RoomTypes.Add(rt);
                      db.SaveChanges();
                      room.Hostelid = h.HostelID;
                      room.RoomTypeid = rt.RoomTypeID;
                      db.Rooms.Add(room);
                      db.SaveChanges();
                  }*/
                List<RoomType> rt = db.RoomTypes.ToList();
                foreach (RoomType t in rt)
                {
                    if (collection.totalcubical != 0)
                    {
                        if (t.RoomType1 == "Cubical")
                        {
                            room.RoomTypeid = t.RoomTypeID;
                            room.Hostelid = h.HostelID;
                            room.TotalRooms = collection.totalcubical;
                            db.Rooms.Add(room);
                            db.SaveChanges();
                        }

                    }
                    if (collection.totalBiseater != 0)
                    {
                        if (t.RoomType1 == "Biseater")
                        {
                            room.RoomTypeid = t.RoomTypeID;
                            room.Hostelid = h.HostelID;
                            room.TotalRooms = collection.totalBiseater;
                            db.Rooms.Add(room);
                            db.SaveChanges();
                        }

                    }
                    if (collection.totalTriseater != 0)
                    {
                        if (t.RoomType1 == "Triseater")
                        {
                            room.RoomTypeid = t.RoomTypeID;
                            room.Hostelid = h.HostelID;
                            room.TotalRooms = collection.totalTriseater;
                            db.Rooms.Add(room);
                            db.SaveChanges();
                        }

                    }
                    if (collection.totalFourseater != 0)
                    {
                        if (t.RoomType1 == "Fourseater")
                        {
                            room.RoomTypeid = t.RoomTypeID;
                            room.Hostelid = h.HostelID;
                            room.TotalRooms = collection.totalFourseater;
                            db.Rooms.Add(room);
                            db.SaveChanges();
                        }

                    }
                    if (collection.totalFiveseater != 0)
                    {
                        if (t.RoomType1 == "Five-seater")
                        {
                            room.RoomTypeid = t.RoomTypeID;
                            room.Hostelid = h.HostelID;
                            room.TotalRooms = collection.totalFiveseater;
                            db.Rooms.Add(room);
                            db.SaveChanges();
                        }

                    }
                    if (collection.totalsixseater != 0)
                    {
                        if (t.RoomType1 == "Six-seater")
                        {
                            room.RoomTypeid = t.RoomTypeID;
                            room.Hostelid = h.HostelID;
                            room.TotalRooms = collection.totalsixseater;
                            db.Rooms.Add(room);
                            db.SaveChanges();
                        }

                    }
                    if (collection.totalmultiseater != 0)
                    {
                        if (t.RoomType1 == "Multi-seater")
                        {
                            room.RoomTypeid = t.RoomTypeID;
                            room.Hostelid = h.HostelID;
                            room.TotalRooms = collection.totalmultiseater;
                            db.Rooms.Add(room);
                            db.SaveChanges();
                        }

                    }
                }
                    return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: HostelSystem/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: HostelSystem/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: HostelSystem/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: HostelSystem/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
