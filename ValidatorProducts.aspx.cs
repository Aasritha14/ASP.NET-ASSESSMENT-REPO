using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_2
{
    public partial class ValidatorProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DDLproducts.Items.Add("Laptop");
                DDLproducts.Items.Add("Iphone");
                DDLproducts.Items.Add("FaceWash");
            }
        }

        protected void DDLproducts_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DDLproducts.SelectedValue == "Laptop")
                ImageProduct.ImageUrl = "https://tse2.mm.bing.net/th/id/OIP.Icxy0CXMf8q-atjlr5p4VgHaFj?w=221&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7";
            else if (DDLproducts.SelectedValue == "Iphone")
                ImageProduct.ImageUrl = "https://tse4.mm.bing.net/th/id/OIP.bZ9VL25C1aIQNswoo8SqyQHaHa?rs=1&pid=ImgDetMain&o=7&rm=3";

            else if (DDLproducts.SelectedValue == "FaceWash")
                ImageProduct.ImageUrl = "https://tse1.mm.bing.net/th/id/OIP.xAKbsms8KG3StZQDs3yD_gHaEO?o=7rm=3&rs=1&pid=ImgDetMain&o=7&rm=3";

        }

        protected void btnPrice_Click(object sender, EventArgs e)
        {
            if (DDLproducts.SelectedValue == "Laptop")
                lblPrice.Text = "Price: ₹80,000";

            else if (DDLproducts.SelectedValue == "Iphone")
                lblPrice.Text = "Price : ₹1,20,000";

            else if (DDLproducts.SelectedValue == "FaceWash")
                lblPrice.Text = "Price : ₹200";
        }
    }
}