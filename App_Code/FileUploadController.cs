using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Http;


namespace Armstrong_ARER_V2
{
    public class FileUploadController: ApiController
    {
        [HttpPost]
        public string UploadFile()
        {
            string msg = "";
            if (HttpContext.Current.Request.Files.AllKeys.Any())
            {
                // Get the uploaded image from the Files collection
                var httpPostedFile = HttpContext.Current.Request.Files["UploadedImage"];
                var fileVirtualPath = "";
                if (httpPostedFile != null)
                {
                    // Validate the uploaded image(optional)

                    // Get the complete file path
                    fileVirtualPath = "~/assets/images/" + httpPostedFile.FileName;
                    var fileSavePath = Path.Combine(HttpContext.Current.Server.MapPath("~/assets/images"), httpPostedFile.FileName);
                   
                    // Save the uploaded file to "UploadedFiles" folder
                    try
                    {
                        httpPostedFile.SaveAs(fileSavePath);

                        string url = HttpContext.Current.Request.Url.AbsoluteUri.Replace(HttpContext.Current.Request.Url.AbsolutePath, "") + fileVirtualPath.Replace("~", ""); ;
                        msg = "Success >> " + url;
                    }
                    catch(Exception ex)
                    {
                        msg = "Error >> " + ex.Message;
                        //throw ex;
                    }

                }
            }
            return msg;
        }



        [HttpPost]
        public string AWSUploadFile()
        {
            
            string msg = "";
            if (HttpContext.Current.Request.Files.AllKeys.Any())
            {
                // Get the uploaded image from the Files collection
                var httpPostedFile = HttpContext.Current.Request.Files["UploadedImage"];
                var fileVirtualPath = "";
                if (httpPostedFile != null)
                {
                    // Validate the uploaded image(optional)

                    // Get the complete file path
                    fileVirtualPath = "~/assets/images/" + httpPostedFile.FileName;
                    var fileSavePath = Path.Combine(HttpContext.Current.Server.MapPath("~/assets/images"), httpPostedFile.FileName);

                    // Save the uploaded file to "UploadedFiles" folder
                    try
                    {
                        httpPostedFile.SaveAs(fileSavePath);

                        string url = HttpContext.Current.Request.Url.AbsoluteUri.Replace(HttpContext.Current.Request.Url.AbsolutePath, "") + fileVirtualPath.Replace("~", ""); ;
                        msg = "Success >> " + url;
                    }
                    catch (Exception ex)
                    {
                        msg = "Error >> " + ex.Message;
                        //throw ex;
                    }

                }
            }
            return msg;
        }


    }
}