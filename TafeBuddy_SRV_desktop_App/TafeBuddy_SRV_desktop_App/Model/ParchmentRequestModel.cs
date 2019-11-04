using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TafeBuddy_SRV_desktop_App.Model
{
    public class ParchmentRequestModel
    {
        public string RequestID;
        public string StudentID;
        public string GivenName;
        public string LastName;
        public string RequestedQual;
        public string DateApplied;
        public string Status;

        public ParchmentRequestModel(string requestID, string studentId, string givenName, string lastName, string reqQual, string dateApplied, string status)
        {
            this.RequestID = requestID;
            this.StudentID = studentId;
            this.GivenName = givenName;
            this.LastName = lastName;
            this.RequestedQual = reqQual;
            this.DateApplied = dateApplied;
            this.Status = status;
        }
    }
}
