using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YC.Model
{
    public class ProjectInfoModel
    {
        public ProjectInfoModel()
        {
            ProjectNum = string.Empty;
            ProjectName = string.Empty;
            Operator = string.Empty;
            Status = string.Empty;
            SubProNum = string.Empty;
            SubProName = string.Empty;
            SubPurchaser = string.Empty;
            SubDpt = string.Empty;
            Applicant = string.Empty;
            Remark = string.Empty;
            SubStatus = string.Empty;
        }

        public Guid ProjectId
        {
            get;
            set;
        }

        public Guid SubProId
        {
            get;
            set;
        }

        public DateTime OperatDate
        {
            get;
            set;
        }

        public DateTime ApplicantDate
        {
            get;
            set;
        }

        public decimal SubAmount
        {
            get;
            set;
        }

        public string ProjectNum
        {
            get;
            set;
        }
        public string ProjectName
        {
            get;
            set;
        }
        public string Operator
        {
            get;
            set;
        }
        public string Status
        {
            get;
            set;
        }
        public string SubProNum
        {
            get;
            set;
        }
        public string SubProName
        {
            get;
            set;
        }
        public string SubPurchaser
        {
            get;
            set;
        }
        public string SubDpt
        {
            get;
            set;
        }
        public string Applicant
        {
            get;
            set;
        }
        public string Remark
        {
            get;
            set;
        }
        public string SubStatus
        {
            get;
            set;
        }
    }

}

