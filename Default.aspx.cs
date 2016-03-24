using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    static float a, b, c, d, t, f, g;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
        btn_clear_Click(sender ,e);
        
    }
    protected void btn_pallu_Click(object sender, EventArgs e)
    {
        try
        {
            double a = Convert.ToDouble(this.txt_pallu_qty.Text);

            double b = Convert.ToDouble(this.txt_pallu_head.Text);

            double f = Convert.ToDouble(this.txt_pallu_rate.Text);

            double ans = Calculate.Calculatesari(a, b, f);

           lbl_pallu_total.Text = Convert.ToString(ans);
           SetFocus(txt_Saqat_qty);
        }
        catch (Exception)
        {
            
        }
    }
    protected void btn_Lase_Click(object sender, EventArgs e)
    {
        try
        {
            double a = Convert.ToDouble(this.txt_Lase_qty.Text);

            double b = Convert.ToDouble(this.txt_Lase_head.Text);

            double f = Convert.ToDouble(this.txt_Lase_rate.Text);

            double ans = Calculate.Calculatesari(a, b, f);

            lbl_Lase_total.Text = Convert.ToString(ans);
            SetFocus(txt_C_qty);
        }
        catch (Exception)
        {
            
           
        }
    }
    protected void btn_Saqat_Click(object sender, EventArgs e)
    {
        try
        {
            double a = Convert.ToDouble(this.txt_Saqat_qty.Text);

            double b = Convert.ToDouble(this.txt_Saqat_head.Text);

            double f = Convert.ToDouble(this.txt_Saqat_rate.Text);

            double ans = Calculate.Calculatesari(a, b, f);

            lbl_Saqat_total.Text = Convert.ToString(ans);
            SetFocus(txt_BL_qty);
        }
        catch (Exception)
        {
            
           
        }
    }
    protected void btn_BL_Click(object sender, EventArgs e)
    {
        try
        {
            double a = Convert.ToDouble(this.txt_BL_qty.Text);

            double b = Convert.ToDouble(this.txt_BL_head.Text);

            double f = Convert.ToDouble(this.txt_BL_rate.Text);

            double ans = Calculate.Calculatesari(a, b, f);

            lbl_BL_total.Text = Convert.ToString(ans);
            SetFocus(txt_Lase_qty);
        }
        catch (Exception)
        {


        }
    }
    protected void btn_C_Click(object sender, EventArgs e)
    {
        try
        {
            double a = Convert.ToDouble(this.txt_C_qty.Text);

            double b = Convert.ToDouble(this.txt_C_head.Text);

            double f = Convert.ToDouble(this.txt_C_rate.Text);

            double ans = Calculate.Calculatesari(a, b, f);

            lbl_C_total.Text = Convert.ToString(ans);
            SetFocus(btn_Lase);
        }
        catch (Exception)
        {


        }
    }
    protected void btn_total_Click(object sender, EventArgs e)
    {
        try
        {
            btn_pallu_Click(sender, e);
            btn_Lase_Click(sender, e);
            btn_Saqat_Click(sender, e);
            btn_BL_Click(sender, e);
            btn_C_Click(sender, e);
            double g = Convert.ToDouble(this.lbl_pallu_total.Text) + Convert.ToDouble(this.lbl_Lase_total.Text) + Convert.ToDouble(this.lbl_Saqat_total.Text) + Convert.ToDouble(this.lbl_BL_total.Text);
            lbl_all_total.Text = Convert.ToString(g);
        }
        catch (Exception)
        {
            
           
        }
    }
    protected void btn_clear_Click(object sender, EventArgs e)
    {
        try
        {
            txt_pallu_qty.Text = "0";
            txt_pallu_head.Text = "0";
            txt_pallu_rate.Text = "0";

            txt_Lase_qty.Text = "0";
            txt_Lase_head.Text = "0";
            txt_Lase_rate.Text = "0";

            txt_Saqat_qty.Text = "0";
            txt_Saqat_head.Text = "0";
            txt_Saqat_rate.Text = "0";

            txt_BL_qty.Text = "0";
            txt_BL_head.Text = "0";
            txt_BL_rate.Text = "0";

            txt_C_qty.Text = "0";
            txt_C_head.Text = "0";
            txt_C_rate.Text = "0";

            lbl_pallu_total.Text = "0";
            lbl_Lase_total.Text = "0";
            lbl_Saqat_total.Text = "0";
            lbl_BL_total.Text = "0";
            lbl_C_total.Text = "0";

            lbl_all_total.Text = "0";
        }
        catch (Exception)
        {
        }
    }

   
}