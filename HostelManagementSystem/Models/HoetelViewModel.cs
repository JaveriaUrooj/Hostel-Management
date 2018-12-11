using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HostelManagementSystem.Models
{
    public class HoetelViewModel
    {
        public int HostelID { get; set; }
        public string Name { get; set; }

       public string residentboy { get; set; }
        public string residentgirl { get; set; }
        public string residentfaculity { get; set; }
        public string residentstudent { get; set; }
        public string residentguests { get; set; }
        
        public bool featureTvhall { get; set; }
        public bool featureMess { get; set; }
        public bool featureAttachBath { get; set; }
        public bool featureWifi { get; set; }
        public int totalcubical { get; set; }
        public int totalBiseater { get; set; }
        public int totalTriseater { get; set; }
        public int totalFourseater { get; set; }
        public int totalFiveseater { get; set; }
        public int totalsixseater { get; set; }
        public int totalmultiseater { get; set; }
       
    }
}