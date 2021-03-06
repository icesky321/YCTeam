﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

public partial class Generate_dbml : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RunCmd(0);
        Response.Write("dbml 生成成功!");
    }

    private string RunCmd(int milliseconds)
    {

        Process p = new Process();
        string res = string.Empty;

        p.StartInfo.FileName = @"cmd.exe";
        //p.StartInfo.Arguments = " /conn:'Data Source=sqlserver;Initial Catalog=Equipment;Integrated Security=True' /language:C# /namespace:PP /views /dbml:'C:/PP/PPDB.dbml' ";
        p.StartInfo.UseShellExecute = false;
        p.StartInfo.RedirectStandardInput = true;
        p.StartInfo.RedirectStandardOutput = true;
        p.StartInfo.RedirectStandardError = true;
        p.StartInfo.CreateNoWindow = true;

        try
        {
            if (p.Start())       //开始进程
            {
                if (milliseconds == 0)
                {


                    p.StandardInput.WriteLine(@"cd C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.6.1 Tools\");
                    //p.StandardInput.WriteLine(@"sqlmetal.exe /conn:""data source=10.137.70.21\SQLEXPRESS;Initial Catalog=LvBao;User ID=sa;password=x4v8m2e@p2dk)s7b"" /language:C# /namespace:LB.SQLServerDAL /context:LBDataContext /views /dbml:""E:\Develop\LvBao\LBTeam\LB.SQLServerDAL\LBDB.dbml""");
                    p.StandardInput.WriteLine(@"sqlmetal.exe /conn:""data source=106.14.177.162;Initial Catalog=ycdb;User ID=sa;password=x4v8m2e@p2dk)s7b"" /language:C# /namespace:YC.SQLServerDAL /context:YCDataContext /views /dbml:""E:\Develop\YC\YC\YC.SQLServerDAL\YCDB.dbml""");
                    p.StandardInput.WriteLine("exit");
                    //p.WaitForExit();     //这里无限等待进程结束
                }
                else
                    p.WaitForExit(milliseconds);  //这里等待进程结束，等待时间为指定的毫秒     

                res = p.StandardOutput.ReadToEnd();
            }
        }
        catch
        {
        }
        finally
        {
            if (p != null)
                p.Close();

            //p.Kill();
        }

        return res;
    }
}