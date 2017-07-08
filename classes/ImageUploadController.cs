using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Http;
using Amazon.S3;
using Amazon.S3.Transfer;

namespace Armstrong_ARER_V2
{
    public class ImageUploadController : ApiController
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
                    catch (Exception ex)
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
            return "";

            string msg = "";
            if (HttpContext.Current.Request.Files.AllKeys.Any())
            {
                string existingBucketName = "elasticbeanstalk-us-east-1-326794527198/uploads";
                string keyName = "";
                string filePath = "";


                      ////////////////////////////////


            // Get the uploaded image from the Files collection
            var httpPostedFile = HttpContext.Current.Request.Files["UploadedImage"];
                var fileVirtualPath = "";
                if (httpPostedFile != null)
                {


                    try
                    {
                        //////////////////////////////

















                       TransferUtility fileTransferUtility = new TransferUtility(new Amazon.S3.AmazonS3Client(Amazon.RegionEndpoint.USEast1));
                       filePath = httpPostedFile.FileName;
                            //httpPostedFile.FileName;
                        // 1. Upload a file, file name is used as the object key name.
                       fileTransferUtility.Upload(filePath, existingBucketName);
                        //   msg = "Success >> " + "	https://s3.amazonaws.com/elasticbeanstalk-us-east-1-326794527198/uploads/" + filePath;
                        // httpPostedFile.
                        //// 3. Upload data from a type of System.IO.Stream.
                        // using (FileStream fileToUpload = new FileStream(filePath, FileMode.Open, FileAccess.Read))
                        //using (FileStream fileToUpload = (FileStream)httpPostedFile.InputStream)
                        //{
                        //    fileTransferUtility.Upload(fileToUpload,
                        //                               existingBucketName, keyName);
                        //}
                        //Console.WriteLine("Upload 3 completed");

                        //// 4.Specify advanced settings/options.
                        //TransferUtilityUploadRequest fileTransferUtilityRequest = new TransferUtilityUploadRequest
                        //{
                        //    BucketName = existingBucketName,
                        //    FilePath = filePath,
                        //    StorageClass = S3StorageClass.ReducedRedundancy,
                        //    PartSize = 6291456, // 6 MB.
                        //    Key = keyName,
                        //    CannedACL = S3CannedACL.PublicRead
                        //};
                        //fileTransferUtilityRequest.Metadata.Add("param1", "Value1");
                        //fileTransferUtilityRequest.Metadata.Add("param2", "Value2");
                        //fileTransferUtility.Upload(fileTransferUtilityRequest);
                        //Console.WriteLine("Upload 4 completed");
                    }
                    catch (AmazonS3Exception s3Exception)
                    {
                        Console.WriteLine(s3Exception.Message,
                                          s3Exception.InnerException);
                    }


                    //var fileSavePath = Path.Combine(HttpContext.Current.Server.MapPath("~/assets/images"), httpPostedFile.FileName);

                    // Save the uploaded file to "UploadedFiles" folder
                    //try
                    //{
                    //    httpPostedFile.SaveAs(fileSavePath);

                    //    string url = HttpContext.Current.Request.Url.AbsoluteUri.Replace(HttpContext.Current.Request.Url.AbsolutePath, "") + fileVirtualPath.Replace("~", ""); ;
                    //    msg = "Success >> " + url;
                    //}
                    //catch (Exception ex)
                    //{
                    //    msg = "Error >> " + ex.Message;
                    //    //throw ex;
                    //}

                }
            }
            return msg;
        }
    }
}