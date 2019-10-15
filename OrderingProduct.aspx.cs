using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel.DataAnnotations;

namespace Prog2.Prog2
{
    public partial class OrderingProduct : System.Web.UI.Page
    {
        public new string ID;
        public double Price;
        public int Quantity;
        public double SubTotal;
        public double Tax;
        public double GrandTotal;
        public double TaxRate = 0.055;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCompute_Click(object sender, EventArgs e)
        {
            ID = txtID.Text;
            Price = double.Parse(txtPrice.Text);
            Quantity = int.Parse(txtQuantity.Text);
            SubTotal = Price * Quantity;
            txtSubTotal.Text = SubTotal.ToString();
            Tax = TaxRate * SubTotal;
            txtTax.Text = Tax.ToString();
            GrandTotal = SubTotal + Tax;
            txtGrandTotal.Text = GrandTotal.ToString();
            txtID.ReadOnly = true;
            txtPrice.ReadOnly = true;
            txtQuantity.ReadOnly = true;
            btnReset.Focus();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtID.Text = "";
            txtPrice.Text = "";
            txtQuantity.Text = "";
            txtSubTotal.Text = "";
            txtTax.Text = "";
            txtGrandTotal.Text = "";
            txtID.ReadOnly = false;
            txtPrice.ReadOnly = false;
            txtQuantity.ReadOnly = false;
            txtID.Focus();
        }
    }
}