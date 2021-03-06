﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MenuControl
{
    public partial class BindingTreeViewWithDataBase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetTreeViewItems();
            }
        }

        private void GetTreeViewItems()
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlDataAdapter da = new SqlDataAdapter("spGetTreeViewItems", con);
            DataSet ds = new DataSet();
            da.Fill(ds);

            ds.Relations.Add("ChildRows", ds.Tables[0].Columns["ID"],
                ds.Tables[0].Columns["ParentId"]);

            foreach (DataRow level1DataRow in ds.Tables[0].Rows)
            {
                if (string.IsNullOrEmpty(level1DataRow["ParentId"].ToString()))
                {
                    TreeNode parentTreeNode = new TreeNode();
                    parentTreeNode.Text = level1DataRow["TreeViewText"].ToString();
                    parentTreeNode.NavigateUrl = level1DataRow["NavigateURL"].ToString();

                    GetChildRows(level1DataRow, parentTreeNode);

                    //DataRow[] level2DataRows = level1DataRow.GetChildRows("ChildRows");
                    //foreach (DataRow level2DataRow in level2DataRows)
                    //{
                    //    TreeNode childTreeNode = new TreeNode();
                    //    childTreeNode.Text = level2DataRow["TreeViewText"].ToString();
                    //    childTreeNode.NavigateUrl = level2DataRow["NavigateURL"].ToString();
                    //    treeNode.ChildNodes.Add(childTreeNode);
                    //}
                    TreeView1.Nodes.Add(parentTreeNode);
                }
            }
        }
        private void GetChildRows(DataRow dataRow, TreeNode treeNode)
        {
            DataRow[] childRows = dataRow.GetChildRows("ChildRows");
            foreach (DataRow row in childRows)
            {
                TreeNode childTreeNode = new TreeNode();
                childTreeNode.Text = row["TreeViewText"].ToString();
                childTreeNode.NavigateUrl = row["NavigateURL"].ToString();
                treeNode.ChildNodes.Add(childTreeNode);

                if (row.GetChildRows("ChildRows").Length > 0)
                {
                    GetChildRows(row, childTreeNode);
                }
            }
        }
    }
}