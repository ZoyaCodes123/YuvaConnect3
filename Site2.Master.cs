using System;

namespace YuvaConnect
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetSidebarVisibility();
            }
        }

        private void SetSidebarVisibility()
        {
            // Get the user role from session
            string userRole = Session["UserRole"] as string;

            if (string.IsNullOrEmpty(userRole))
            {
                Response.Redirect("~/LOGIN.aspx");
                return;
            }

            // Default: Hide all items
            liProfileStud.Visible = false;
            liProfileAlum.Visible = false;
            liProfileAdm.Visible = false;
            liAlumni.Visible = false;
            liAlumniList.Visible = false;
            liStudentList.Visible = false;
            liStudent.Visible = false;
            liEvents.Visible = false;
            liDiscussion.Visible = false;
            liStudentRequests.Visible = false;
            liAlumniRequests.Visible = false;
            liEventRequests.Visible = false;
            liVote.Visible = false;
            liLogout.Visible = false;

            // Role-specific visibility
            if (userRole.Equals("student", StringComparison.OrdinalIgnoreCase))
            {
                liProfileStud.Visible = true;
                liAlumni.Visible = true;
                liEvents.Visible = true;
                liDiscussion.Visible = false;
                liLogout.Visible = true;
            }
            else if (userRole.Equals("alumni", StringComparison.OrdinalIgnoreCase))
            {
                liProfileAlum.Visible = true;
                liAlumni.Visible = true;
                liStudent.Visible = true;
                liEvents.Visible = true;
                liDiscussion.Visible = false;
                liVote.Visible = false;
                liLogout.Visible = true;
            }
            else if (userRole.Equals("admin", StringComparison.OrdinalIgnoreCase))
            {
                liProfileAdm.Visible = true;
                liStudentList.Visible = true;
                liAlumniList.Visible = true;
                liEvents.Visible = true;
                liStudentRequests.Visible = true;
                liAlumniRequests.Visible = true;
                liEventRequests.Visible = true;
                liVote.Visible = false;
                liLogout.Visible = true;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear the session
            Session.Clear();
            Session.Abandon();

            // Remove authentication cookies if any
            if (Request.Cookies["ASP.NET_SessionId"] != null)
            {
                Response.Cookies["ASP.NET_SessionId"].Expires = DateTime.Now.AddDays(-1);
            }
            if (Request.Cookies["AuthCookie"] != null)
            {
                Response.Cookies["AuthCookie"].Expires = DateTime.Now.AddDays(-1);
            }

            // Redirect to the login page
            Response.Redirect("~/LOGIN.aspx");
        }
    }
}
