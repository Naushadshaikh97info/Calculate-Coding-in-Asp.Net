using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Calculate
/// </summary>
public class Calculate
{
	public static double Calculatesari(double qty, double head, double rate )
	{
        double c = (qty * head);
        double d = (c / 1000);
        double t = (d * rate);
        return t;
	}
}