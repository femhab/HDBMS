using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Common.Configuration;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.ServiceLocation;
using Microsoft.Practices.Unity;
using System.Data;
using System.Configuration;
using System.Data.Common;
using System.IO;
using System.Web;
using System.Drawing;
using System.Security.Cryptography;

namespace generalClassLibrary
{
    public class hdbmsClass
    {
        private DbCommand cmdinsertSubscriber_tbl;
        private DbCommand cmdinsertStaff_reg_tbl;
        public Decimal GenerateTransID(ref string msg)
        {

            DataSet ds = new DataSet();
            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();

            DbCommand cmdGenSeq = db.GetStoredProcCommand("GenerateSqlSequenceNo2");

            try
            {
                ds = db.ExecuteDataSet(cmdGenSeq);
                msg = "";
                UpdateTransID(ref msg);
                decimal pos = Convert.ToDecimal(ds.Tables[0].Rows[0]["SEQ_NO"].ToString());

                return (pos);


            }
            catch (Exception ex)
            {

                msg = ex.Message;
                return -1;

            }
        }


        private void UpdateTransID(ref string msg)
        {


            DataSet ds = new DataSet();
            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();

            DbCommand cmdGenSeq = db.GetStoredProcCommand("GenerateSqlSequenceNo");

            try
            {
                ds = db.ExecuteDataSet(cmdGenSeq);
                msg = "";


            }
            catch (Exception ex)
            {

                //msg = ex.Message;
                //return msg;

            }


        }

        #region HDBMS 09/2018


        public void insertSubscriber_tbl(decimal subscriberID, string subscriberName, string description, decimal amount, decimal paid, decimal balance, DateTime subscriptionDate, DateTime expiryDate, string subscriberAddress, string subscriberPhoneNo, ref string msg)
        {

            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdinsertSubscriber_tbl = db.GetStoredProcCommand("insertSubscriber_tbl");

            db.AddInParameter(cmdinsertSubscriber_tbl, "SUBSCRIBER_ID", DbType.Decimal, subscriberID);
            db.AddInParameter(cmdinsertSubscriber_tbl, "SUBCRIBER_NAME", DbType.String, subscriberName);
            db.AddInParameter(cmdinsertSubscriber_tbl, "DESCRIPTION", DbType.String, description);
            db.AddInParameter(cmdinsertSubscriber_tbl, "AMOUNT", DbType.Currency, amount);
            db.AddInParameter(cmdinsertSubscriber_tbl, "PAID", DbType.Currency, paid);
            db.AddInParameter(cmdinsertSubscriber_tbl, "BALANCE", DbType.Currency, balance);
            db.AddInParameter(cmdinsertSubscriber_tbl, "SUBCRIPTION_DATE", DbType.Date, subscriptionDate);
            db.AddInParameter(cmdinsertSubscriber_tbl, "EXPIRY_DATE", DbType.Date, expiryDate);
            db.AddInParameter(cmdinsertSubscriber_tbl, "SUBSCRIBER_ADDRESS", DbType.String, subscriberAddress);
            db.AddInParameter(cmdinsertSubscriber_tbl, "SUBSCRIBER_PHONE_NO", DbType.String, subscriberPhoneNo);


            using (DbConnection conn = db.CreateConnection())
            {
                conn.Open();
                DbTransaction trans = conn.BeginTransaction();
                try
                {
                    // execute commands, passing in the current transaction to each one
                    db.ExecuteNonQuery(cmdinsertSubscriber_tbl, trans);
                    trans.Commit(); // commit the transaction
                }
                catch (Exception ex)
                {
                    trans.Rollback(); // rollback the transaction
                    conn.Close();
                    msg = ex.Message;
                }

                finally
                {

                    if (conn != null && conn.State == ConnectionState.Open)
                        conn.Close();

                }
            }
            

        }

        public void insertStaff_reg_tbl(decimal subscriberID, string subscriberName, string staffID, string staffName, string gender, DateTime dob, string nationality, string state, string lg, string address, string correspondentAddress, string mobileNumber, string emailAddress, string department, string positionLevel, DateTime registrationDate, string nextOfKin, string nokRelationship, string nokAddress, string nokMobileNumber, string highestDegreeObtained, string role, string imageUrl, string userName, string password, ref string msg)
        {

            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdinsertStaff_reg_tbl = db.GetStoredProcCommand("insertStaff_reg_tbl");

            db.AddInParameter(cmdinsertStaff_reg_tbl, "SUBSCRIBER_ID", DbType.Decimal, subscriberID);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "SUBSCRIBER_NAME", DbType.String, subscriberName);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "STAFF_ID", DbType.String, staffID);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "STAFF_NAME", DbType.String, staffName);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "GENDER", DbType.String, gender);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "DOB", DbType.Date, dob);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "NATIONALITY", DbType.String, nationality);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "STATE", DbType.String, state);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "LG", DbType.String, lg);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "ADDRESS", DbType.String, address);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "CORRESPONDENT_ADDRESS", DbType.String, correspondentAddress);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "MOBILE_NUMBER", DbType.String, mobileNumber);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "EMAIL_ADDRESS", DbType.String, emailAddress);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "DEPARTMENT", DbType.String, department);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "POSITION_LEVEL", DbType.String, positionLevel);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "REGISTRATION_DATE", DbType.Date, registrationDate);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "NEXT_OF_KIN", DbType.String, nextOfKin);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "NOK_RELATIONSHIP", DbType.String, nokRelationship);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "NOK_ADDRESS", DbType.String, nokAddress);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "NOK_MOBILE_NUMBER", DbType.String, nokMobileNumber);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "HIGHEST_DEGREE_OBTAINED", DbType.String, highestDegreeObtained);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "ROLE", DbType.String, role);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "IMAGE_UPLOAD", DbType.String, imageUrl);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "USERNAME", DbType.String, userName);
            db.AddInParameter(cmdinsertStaff_reg_tbl, "PWD", DbType.String, password);
            


            using (DbConnection conn = db.CreateConnection())
            {
                conn.Open();
                DbTransaction trans = conn.BeginTransaction();
                try
                {
                    // execute commands, passing in the current transaction to each one
                    db.ExecuteNonQuery(cmdinsertStaff_reg_tbl, trans);
                    trans.Commit(); // commit the transaction
                }
                catch (Exception ex)
                {
                    trans.Rollback(); // rollback the transaction
                    conn.Close();
                    msg = ex.Message;
                }

                finally
                {

                    if (conn != null && conn.State == ConnectionState.Open)
                        conn.Close();

                }
            }


        }


        public void insertMailRegTbl(decimal subscriberID, string subscriberName, string staffID, string staffName, string gender, string nationality, string mobileNumber, string emailAddress, string department, string userName, string password, DateTime regDate, ref string msg)
        {

            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdinsertMailRegTbl = db.GetStoredProcCommand("insertMailRegTbl");

            db.AddInParameter(cmdinsertMailRegTbl, "SUBSCRIBER_ID", DbType.Decimal, subscriberID);
            db.AddInParameter(cmdinsertMailRegTbl, "SUBSCRIBER_NAME", DbType.String, subscriberName);
            db.AddInParameter(cmdinsertMailRegTbl, "STAFF_ID", DbType.String, staffID);
            db.AddInParameter(cmdinsertMailRegTbl, "STAFF_NAME", DbType.String, staffName);
            db.AddInParameter(cmdinsertMailRegTbl, "GENDER", DbType.String, gender);
            db.AddInParameter(cmdinsertMailRegTbl, "NATIONALITY", DbType.String, nationality);
            db.AddInParameter(cmdinsertMailRegTbl, "MOBILE_NUMBER", DbType.String, mobileNumber);
            db.AddInParameter(cmdinsertMailRegTbl, "EMAIL_ADDRESS", DbType.String, emailAddress);
            db.AddInParameter(cmdinsertMailRegTbl, "DEPARTMENT", DbType.String, department);
            db.AddInParameter(cmdinsertMailRegTbl, "USERNAME", DbType.String, userName);
            db.AddInParameter(cmdinsertMailRegTbl, "PWD", DbType.String, password);
            db.AddInParameter(cmdinsertMailRegTbl, "REG_DATE", DbType.DateTime, regDate);


            using (DbConnection conn = db.CreateConnection())
            {
                conn.Open();
                DbTransaction trans = conn.BeginTransaction();
                try
                {
                    // execute commands, passing in the current transaction to each one
                    db.ExecuteNonQuery(cmdinsertMailRegTbl, trans);
                    trans.Commit(); // commit the transaction
                }
                catch (Exception ex)
                {
                    trans.Rollback(); // rollback the transaction
                    conn.Close();
                    msg = ex.Message;
                }

                finally
                {

                    if (conn != null && conn.State == ConnectionState.Open)
                        conn.Close();

                }
            }


        }

        //insertMessaging_Tbl
        public void insertMessaging_Tbl(string senderID, string recieverID, string message, DateTime msgDate, string department, decimal subscriberID, string subscriberName, ref string msg)
        {

            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdinsertMessaging_Tbl = db.GetStoredProcCommand("insertMessaging_Tbl");
                        
            db.AddInParameter(cmdinsertMessaging_Tbl, "SENDER_ID", DbType.String, senderID);
            db.AddInParameter(cmdinsertMessaging_Tbl, "RECIEVER_ID", DbType.String, recieverID);
            db.AddInParameter(cmdinsertMessaging_Tbl, "MESSAGE", DbType.String, message);
            db.AddInParameter(cmdinsertMessaging_Tbl, "MSG_DATE", DbType.DateTime, msgDate);
            db.AddInParameter(cmdinsertMessaging_Tbl, "DEPARTMENT", DbType.String, department);
            db.AddInParameter(cmdinsertMessaging_Tbl, "SUBSCRIBER_ID", DbType.Decimal, subscriberID);
            db.AddInParameter(cmdinsertMessaging_Tbl, "SUBSCRIBER_NAME", DbType.String, subscriberName);


            using (DbConnection conn = db.CreateConnection())
            {
                conn.Open();
                DbTransaction trans = conn.BeginTransaction();
                try
                {
                    // execute commands, passing in the current transaction to each one
                    db.ExecuteNonQuery(cmdinsertMessaging_Tbl, trans);
                    trans.Commit(); // commit the transaction
                }
                catch (Exception ex)
                {
                    trans.Rollback(); // rollback the transaction
                    conn.Close();
                    msg = ex.Message;
                }

                finally
                {

                    if (conn != null && conn.State == ConnectionState.Open)
                        conn.Close();

                }
            }            
        }


        public void insertMail_reg_tbl(decimal subscriberID, string subscriberName, string staffID, string staffName, string gender, string nationality, string mobileNumber, string emailAddress, string department, string userName, string password, ref string msg)
        {

            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdinsertMail_reg_tbl = db.GetStoredProcCommand("insertMail_reg_tbl");

            db.AddInParameter(cmdinsertMail_reg_tbl, "SUBSCRIBER_ID", DbType.Decimal, subscriberID);
            db.AddInParameter(cmdinsertMail_reg_tbl, "SUBSCRIBER_NAME", DbType.String, subscriberName);
            db.AddInParameter(cmdinsertMail_reg_tbl, "STAFF_ID", DbType.String, staffID);
            db.AddInParameter(cmdinsertMail_reg_tbl, "STAFF_NAME", DbType.String, staffName);
            db.AddInParameter(cmdinsertMail_reg_tbl, "GENDER", DbType.String, gender);
            db.AddInParameter(cmdinsertMail_reg_tbl, "NATIONALITY", DbType.String, nationality);
            db.AddInParameter(cmdinsertMail_reg_tbl, "MOBILE_NUMBER", DbType.String, mobileNumber);
            db.AddInParameter(cmdinsertMail_reg_tbl, "EMAIL_ADDRESS", DbType.String, emailAddress);
            db.AddInParameter(cmdinsertMail_reg_tbl, "DEPARTMENT", DbType.String, department);
            db.AddInParameter(cmdinsertMail_reg_tbl, "USERNAME", DbType.String, userName);
            db.AddInParameter(cmdinsertMail_reg_tbl, "PWD", DbType.String, password);



            using (DbConnection conn = db.CreateConnection())
            {
                conn.Open();
                DbTransaction trans = conn.BeginTransaction();
                try
                {
                    // execute commands, passing in the current transaction to each one
                    db.ExecuteNonQuery(cmdinsertMail_reg_tbl, trans);
                    trans.Commit(); // commit the transaction
                }
                catch (Exception ex)
                {
                    trans.Rollback(); // rollback the transaction
                    conn.Close();
                    msg = ex.Message;
                }

                finally
                {

                    if (conn != null && conn.State == ConnectionState.Open)
                        conn.Close();

                }
            }


        }

        public void insertPatient_reg_tbl(decimal subscriberID, string subscriberName, string patientID, string patientName, string gender, DateTime dob, string nationality, string state, string lg, string address, string mobileNumber, string emailAddress, string bloodGroup, string genotype, DateTime registrationDate, string nextOfKin, string nokRelationship, string nokAddress, string nokMobileNumber, string staffIncharge, DateTime dod, string imageUrl, ref string msg)
        {

            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdinsertPatient_reg_tbl = db.GetStoredProcCommand("insertPatient_reg_tbl");

            db.AddInParameter(cmdinsertPatient_reg_tbl, "SUBSCRIBER_ID", DbType.Decimal, subscriberID);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "SUBSCRIBER_NAME", DbType.String, subscriberName);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "PATIENT_ID", DbType.String, patientID);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "PATIENT_NAME", DbType.String, patientName);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "GENDER", DbType.String, gender);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "DOB", DbType.Date, dob);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "NATIONALITY", DbType.String, nationality);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "STATE", DbType.String, state);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "LGA", DbType.String, lg);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "ADDRESS", DbType.String, address);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "MOBILE_NUMBER", DbType.String, mobileNumber);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "EMAIL_ADDRESS", DbType.String, emailAddress);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "BLOOD_GROUP", DbType.String, bloodGroup);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "GENOTYPE", DbType.String, genotype);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "REGISTRATION_DATE", DbType.Date, registrationDate);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "NEXT_OF_KIN", DbType.String, nextOfKin);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "NOK_RELATIONSHIP", DbType.String, nokRelationship);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "NOK_ADDRESS", DbType.String, nokAddress);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "NOK_MOBILE_NUMBER", DbType.String, nokMobileNumber);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "STAFF_INCHARGE", DbType.String, staffIncharge);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "DOD", DbType.Date, dod);
            db.AddInParameter(cmdinsertPatient_reg_tbl, "IMAGE_UPLOAD", DbType.String, imageUrl);


            using (DbConnection conn = db.CreateConnection())
            {
                conn.Open();
                DbTransaction trans = conn.BeginTransaction();
                try
                {
                    // execute commands, passing in the current transaction to each one
                    db.ExecuteNonQuery(cmdinsertPatient_reg_tbl, trans);
                    trans.Commit(); // commit the transaction
                }
                catch (Exception ex)
                {
                    trans.Rollback(); // rollback the transaction
                    conn.Close();
                    msg = ex.Message;
                }

                finally
                {

                    if (conn != null && conn.State == ConnectionState.Open)
                        conn.Close();

                }
            }


        }

        public void insertVital_Signs_tbl(string patientID, string patientName, DateTime testDate, string bodyTemperature, string bodyPressure, string pulseRate, string heartRate, string respiration, string oxygenSaturation, string staffID, string hospitalName, ref string msg)
        {

            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdinsertVital_Signs_tbl = db.GetStoredProcCommand("insertPatient_reg_tbl");

            db.AddInParameter(cmdinsertVital_Signs_tbl, "PATIENT_ID", DbType.String, patientID);
            db.AddInParameter(cmdinsertVital_Signs_tbl, "PATIENT_NAME", DbType.String, patientName);
            db.AddInParameter(cmdinsertVital_Signs_tbl, "TEST_DATE", DbType.Date, testDate);
            db.AddInParameter(cmdinsertVital_Signs_tbl, "BODY_TEMPERATURE", DbType.String, bodyTemperature);
            db.AddInParameter(cmdinsertVital_Signs_tbl, "BLOOD_PRESSURE", DbType.String,bodyPressure);
            db.AddInParameter(cmdinsertVital_Signs_tbl, "PULSE_RATE", DbType.String,pulseRate );
            db.AddInParameter(cmdinsertVital_Signs_tbl, "HEART_RATE", DbType.String, heartRate);
            db.AddInParameter(cmdinsertVital_Signs_tbl, "RESPIRATION", DbType.String, respiration);
            db.AddInParameter(cmdinsertVital_Signs_tbl, "OXYGEN_SATURATION", DbType.String, oxygenSaturation);
            db.AddInParameter(cmdinsertVital_Signs_tbl, "STAFF_ID", DbType.String, staffID);
            db.AddInParameter(cmdinsertVital_Signs_tbl, "HOSPITAL_NAME", DbType.String, hospitalName);
            

            using (DbConnection conn = db.CreateConnection())
            {
                conn.Open();
                DbTransaction trans = conn.BeginTransaction();
                try
                {
                    // execute commands, passing in the current transaction to each one
                    db.ExecuteNonQuery(cmdinsertVital_Signs_tbl, trans);
                    trans.Commit(); // commit the transaction
                }
                catch (Exception ex)
                {
                    trans.Rollback(); // rollback the transaction
                    conn.Close();
                    msg = ex.Message;
                }

                finally
                {

                    if (conn != null && conn.State == ConnectionState.Open)
                        conn.Close();

                }
            }


        }

        public void insertWard_round_tbl(string patientID, string patientName, DateTime testDate, string staffID,string doctorID, string hospitalName, ref string msg)
        {

            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdinsertWard_round_tbl = db.GetStoredProcCommand("insertPatient_reg_tbl");

            db.AddInParameter(cmdinsertWard_round_tbl, "PATIENT_ID", DbType.String, patientID);
            db.AddInParameter(cmdinsertWard_round_tbl, "PATIENT_NAME", DbType.String, patientName);
            db.AddInParameter(cmdinsertWard_round_tbl, "TEST_DATE", DbType.Date, testDate);
            db.AddInParameter(cmdinsertWard_round_tbl, "STAFF_ID", DbType.String, staffID);
            db.AddInParameter(cmdinsertWard_round_tbl, "DOCTOR_ID", DbType.String, doctorID);
            db.AddInParameter(cmdinsertWard_round_tbl, "HOSPITAL_NAME", DbType.String, hospitalName);


            using (DbConnection conn = db.CreateConnection())
            {
                conn.Open();
                DbTransaction trans = conn.BeginTransaction();
                try
                {
                    // execute commands, passing in the current transaction to each one
                    db.ExecuteNonQuery(cmdinsertWard_round_tbl, trans);
                    trans.Commit(); // commit the transaction
                }
                catch (Exception ex)
                {
                    trans.Rollback(); // rollback the transaction
                    conn.Close();
                    msg = ex.Message;
                }

                finally
                {

                    if (conn != null && conn.State == ConnectionState.Open)
                        conn.Close();

                }
            }


        }

        public void insertTreatment_Ref_Tbl(string diseases, string causingAgent, string causes, string symptoms, string treatment, ref string msg)
        {

            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdinsertTreatment_Ref_Tbl = db.GetStoredProcCommand("insertTreatment_Ref_Tbl");

            db.AddInParameter(cmdinsertTreatment_Ref_Tbl, "DISEASES", DbType.String, diseases);
            db.AddInParameter(cmdinsertTreatment_Ref_Tbl, "CAUSING_AGENT", DbType.String, causingAgent);
            db.AddInParameter(cmdinsertTreatment_Ref_Tbl, "CAUSES", DbType.String, causes);
            db.AddInParameter(cmdinsertTreatment_Ref_Tbl, "SYMPTOMS", DbType.String, symptoms);
            db.AddInParameter(cmdinsertTreatment_Ref_Tbl, "TREATMENT", DbType.String, treatment);


            using (DbConnection conn = db.CreateConnection())
            {
                conn.Open();
                DbTransaction trans = conn.BeginTransaction();
                try
                {
                    // execute commands, passing in the current transaction to each one
                    db.ExecuteNonQuery(cmdinsertTreatment_Ref_Tbl, trans);
                    trans.Commit(); // commit the transaction
                }
                catch (Exception ex)
                {
                    trans.Rollback(); // rollback the transaction
                    conn.Close();
                    msg = ex.Message;
                }

                finally
                {

                    if (conn != null && conn.State == ConnectionState.Open)
                        conn.Close();

                }
            }


        }

        public void insertBed_ref_tbl(string sections, string ward, string room, string bed, string status, ref string msg)
        {

            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdinsertBed_ref_tbl = db.GetStoredProcCommand("insertBed_ref_tbl");

            db.AddInParameter(cmdinsertBed_ref_tbl, "SECTIONS", DbType.String, sections);
            db.AddInParameter(cmdinsertBed_ref_tbl, "WARD", DbType.String, ward);
            db.AddInParameter(cmdinsertBed_ref_tbl, "ROOM", DbType.String, room);
            db.AddInParameter(cmdinsertBed_ref_tbl, "BED", DbType.String, bed);
            db.AddInParameter(cmdinsertBed_ref_tbl, "STATUS", DbType.String, status);


            using (DbConnection conn = db.CreateConnection())
            {
                conn.Open();
                DbTransaction trans = conn.BeginTransaction();
                try
                {
                    // execute commands, passing in the current transaction to each one
                    db.ExecuteNonQuery(cmdinsertBed_ref_tbl, trans);
                    trans.Commit(); // commit the transaction
                }
                catch (Exception ex)
                {
                    trans.Rollback(); // rollback the transaction
                    conn.Close();
                    msg = ex.Message;
                }

                finally
                {

                    if (conn != null && conn.State == ConnectionState.Open)
                        conn.Close();

                }
            }


        }

        public void insertCategory_tbl(string categoryName, ref string msg)
        {

            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdinsertCategory_tbl = db.GetStoredProcCommand("insertCategory_tbl");

            db.AddInParameter(cmdinsertCategory_tbl, "CATEGORY_NAME", DbType.String, categoryName);
            
            using (DbConnection conn = db.CreateConnection())
            {
                conn.Open();
                DbTransaction trans = conn.BeginTransaction();
                try
                {
                    // execute commands, passing in the current transaction to each one
                    db.ExecuteNonQuery(cmdinsertCategory_tbl, trans);
                    trans.Commit(); // commit the transaction
                }
                catch (Exception ex)
                {
                    trans.Rollback(); // rollback the transaction
                    conn.Close();
                    msg = ex.Message;
                }

                finally
                {

                    if (conn != null && conn.State == ConnectionState.Open)
                        conn.Close();

                }
            }


        }

        public void insertCategory_sub_tbl(string categoryName, string subCategoryName, ref string msg)
        {

            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdinsertCategory_sub_tbl = db.GetStoredProcCommand("insertCategory_sub_tbl");

            db.AddInParameter(cmdinsertCategory_sub_tbl, "CATEGORY_NAME", DbType.String, categoryName);
            db.AddInParameter(cmdinsertCategory_sub_tbl, "SUB_CATEGORY_NAME", DbType.String, subCategoryName);

            using (DbConnection conn = db.CreateConnection())
            {
                conn.Open();
                DbTransaction trans = conn.BeginTransaction();
                try
                {
                    // execute commands, passing in the current transaction to each one
                    db.ExecuteNonQuery(cmdinsertCategory_sub_tbl, trans);
                    trans.Commit(); // commit the transaction
                }
                catch (Exception ex)
                {
                    trans.Rollback(); // rollback the transaction
                    conn.Close();
                    msg = ex.Message;
                }

                finally
                {

                    if (conn != null && conn.State == ConnectionState.Open)
                        conn.Close();

                }
            }


        }

        public void insertCategory_sub_sub_tbl(string categoryName, string subCategoryName, string subSubCategoryName, ref string msg)
        {

            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdinsertCategory_sub_sub_tbl = db.GetStoredProcCommand("insertCategory_sub_sub_tbl");

            db.AddInParameter(cmdinsertCategory_sub_sub_tbl, "CATEGORY_NAME", DbType.String, categoryName);
            db.AddInParameter(cmdinsertCategory_sub_sub_tbl, "SUB_CATEGORY_NAME", DbType.String, subCategoryName);
            db.AddInParameter(cmdinsertCategory_sub_sub_tbl, "SUB_SUB_CATEGORY_NAME", DbType.String, subSubCategoryName);

            using (DbConnection conn = db.CreateConnection())
            {
                conn.Open();
                DbTransaction trans = conn.BeginTransaction();
                try
                {
                    // execute commands, passing in the current transaction to each one
                    db.ExecuteNonQuery(cmdinsertCategory_sub_sub_tbl, trans);
                    trans.Commit(); // commit the transaction
                }
                catch (Exception ex)
                {
                    trans.Rollback(); // rollback the transaction
                    conn.Close();
                    msg = ex.Message;
                }

                finally
                {

                    if (conn != null && conn.State == ConnectionState.Open)
                        conn.Close();

                }
            }


        }


        public void insertDepartment_tbl(string deptID, string deptName, ref string msg)
        {

            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdinsertDepartment_tbl = db.GetStoredProcCommand("insertDepartment_tbl");

            db.AddInParameter(cmdinsertDepartment_tbl, "DEPT_ID", DbType.String, deptID);
            db.AddInParameter(cmdinsertDepartment_tbl, "DEPT_NAME", DbType.String, deptName);

            using (DbConnection conn = db.CreateConnection())
            {
                conn.Open();
                DbTransaction trans = conn.BeginTransaction();
                try
                {
                    // execute commands, passing in the current transaction to each one
                    db.ExecuteNonQuery(cmdinsertDepartment_tbl, trans);
                    trans.Commit(); // commit the transaction
                }
                catch (Exception ex)
                {
                    trans.Rollback(); // rollback the transaction
                    conn.Close();
                    msg = ex.Message;
                }

                finally
                {

                    if (conn != null && conn.State == ConnectionState.Open)
                        conn.Close();

                }
            }


        }

        public void insertPrice_list_tbl(string department, string services, string price, ref string msg)
        {

            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdinsertPrice_list_tbl = db.GetStoredProcCommand("insertPrice_list_tbl");

            db.AddInParameter(cmdinsertPrice_list_tbl, "DEPARTMENT", DbType.String, department);
            db.AddInParameter(cmdinsertPrice_list_tbl, "SERVICES", DbType.String, services);
            db.AddInParameter(cmdinsertPrice_list_tbl, "PRICE", DbType.String, price);

            using (DbConnection conn = db.CreateConnection())
            {
                conn.Open();
                DbTransaction trans = conn.BeginTransaction();
                try
                {
                    // execute commands, passing in the current transaction to each one
                    db.ExecuteNonQuery(cmdinsertPrice_list_tbl, trans);
                    trans.Commit(); // commit the transaction
                }
                catch (Exception ex)
                {
                    trans.Rollback(); // rollback the transaction
                    conn.Close();
                    msg = ex.Message;
                }

                finally
                {

                    if (conn != null && conn.State == ConnectionState.Open)
                        conn.Close();

                }
            }


        }

        public void insertDoctor_report_tbl(string patientID, DateTime consultationDate, string diagnosis, string investigations, string prescriptions, string remark, string advice, string doctorID, ref string msg)
        {

            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdinsertDoctor_report_tbl = db.GetStoredProcCommand("insertDoctor_report_tbl");

            db.AddInParameter(cmdinsertDoctor_report_tbl, "PATIENT_ID", DbType.String, patientID);
            db.AddInParameter(cmdinsertDoctor_report_tbl, "CONSULTATION_DATE", DbType.Date, consultationDate);
            db.AddInParameter(cmdinsertDoctor_report_tbl, "DIAGNOSIS", DbType.String, diagnosis);
            db.AddInParameter(cmdinsertDoctor_report_tbl, "INVESTIGATIONS", DbType.String, investigations);
            db.AddInParameter(cmdinsertDoctor_report_tbl, "PRESCRIPTIONS", DbType.String, prescriptions);
            db.AddInParameter(cmdinsertDoctor_report_tbl, "REMARK", DbType.String, remark);
            db.AddInParameter(cmdinsertDoctor_report_tbl, "ADVICE", DbType.String, advice);
            db.AddInParameter(cmdinsertDoctor_report_tbl, "DOCTOR_ID", DbType.String, doctorID);


            using (DbConnection conn = db.CreateConnection())
            {
                conn.Open();
                DbTransaction trans = conn.BeginTransaction();
                try
                {
                    // execute commands, passing in the current transaction to each one
                    db.ExecuteNonQuery(cmdinsertDoctor_report_tbl, trans);
                    trans.Commit(); // commit the transaction
                }
                catch (Exception ex)
                {
                    trans.Rollback(); // rollback the transaction
                    conn.Close();
                    msg = ex.Message;
                }

                finally
                {

                    if (conn != null && conn.State == ConnectionState.Open)
                        conn.Close();

                }
            }


        }

        public void UpdateCountry(string countryCode, string countryName, ref string msg)
        {

            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdUpdateCountry = db.GetStoredProcCommand("spUpdateCountry");

            db.AddInParameter(cmdUpdateCountry, "COUNTRY_CODE", DbType.String, countryCode);
            db.AddInParameter(cmdUpdateCountry, "COUNTRY_NAME", DbType.String, countryName);


            using (DbConnection conn = db.CreateConnection())
            {
                conn.Open();
                DbTransaction trans = conn.BeginTransaction();
                try
                {
                    // execute commands, passing in the current transaction to each one
                    db.ExecuteNonQuery(cmdUpdateCountry, trans);
                    trans.Commit(); // commit the transaction
                }
                catch
                {
                    trans.Rollback(); // rollback the transaction
                    conn.Close();
                }

                finally
                {

                    if (conn != null && conn.State == ConnectionState.Open)
                        conn.Close();

                }
            }




        }

        public void DeleteCountry(string countryCode, ref string msg)
        {

            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdDeletecountry = db.GetStoredProcCommand("spDeleteCountry");

            db.AddInParameter(cmdDeletecountry, "COUNTRY_CODE", DbType.String, countryCode);


            using (DbConnection conn = db.CreateConnection())
            {
                conn.Open();
                DbTransaction trans = conn.BeginTransaction();
                try
                {
                    // execute commands, passing in the current transaction to each one
                    db.ExecuteNonQuery(cmdDeletecountry, trans);
                    trans.Commit(); // commit the transaction
                }
                catch
                {
                    trans.Rollback(); // rollback the transaction
                    conn.Close();
                }

                finally
                {

                    if (conn != null && conn.State == ConnectionState.Open)
                        conn.Close();

                }
            }

        }

        public DataSet CheckCountryExit(string countryName, ref string msg)
        {
            DataSet ds = new DataSet();
            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdcountry = db.GetStoredProcCommand("spCheckCountryExist");

            db.AddInParameter(cmdcountry, "COUNTRY_NAME", DbType.String, countryName);

            try
            {
                ds = db.ExecuteDataSet(cmdcountry);
                msg = "";
            }

            catch (Exception ex)
            {

                msg = ex.Message;
                return ds;

            }

            return (ds);
        }

        public DataSet fetchSubscriberBySN_subID(int sn,decimal subscriberID,ref string msg)
        {
            DataSet ds = new DataSet();
            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdfetchSubscriberBySN_subID = db.GetStoredProcCommand("fetchSubscriberBySN_subID");
            db.AddInParameter(cmdfetchSubscriberBySN_subID, "SN", DbType.Int32, sn);
            db.AddInParameter(cmdfetchSubscriberBySN_subID, "SUBSCRIBER_ID", DbType.Decimal, subscriberID);


            try
            {
                ds = db.ExecuteDataSet(cmdfetchSubscriberBySN_subID);
                msg = "";
            }
            catch (Exception ex)
            {

                msg = ex.Message;
                return ds;

            }

            return (ds);
        }

        
        public DataSet fetchMailRegByUserPwd(string username, string pwd, ref string msg)
        {
            DataSet ds = new DataSet();
            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();

            DbCommand cmdfetchMailRegByUserPwd = db.GetStoredProcCommand("fetchMailRegByUserPwd");

            db.AddInParameter(cmdfetchMailRegByUserPwd, "USERNAME", DbType.String, username);
            db.AddInParameter(cmdfetchMailRegByUserPwd, "PWD", DbType.String, pwd);

            try
            {
                ds = db.ExecuteDataSet(cmdfetchMailRegByUserPwd);
                msg = "";
            }
            catch (Exception ex)
            {

                msg = ex.Message;
                return ds;

            }

            return (ds);
        }

        public DataSet fetchStaffByUsername_Password(string userName, string Password, ref string msg)
        {
            DataSet ds = new DataSet();
            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdfetchStaffByUsername_Password = db.GetStoredProcCommand("fetchStaffByUsername_Password");
            db.AddInParameter(cmdfetchStaffByUsername_Password, "USERNAME", DbType.String, userName);
            db.AddInParameter(cmdfetchStaffByUsername_Password, "PWD", DbType.String, Password);


            try
            {
                ds = db.ExecuteDataSet(cmdfetchStaffByUsername_Password);
                msg = "";
            }
            catch (Exception ex)
            {

                msg = ex.Message;
                return ds;

            }

            return (ds);
        }

        public DataSet fetchPatientByPatientID(string thepatientID, ref string msg)
        {
            DataSet ds = new DataSet();
            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdfetchPatientByPatientID = db.GetStoredProcCommand("fetchStaffByUsername_Password");
            db.AddInParameter(cmdfetchPatientByPatientID, "PATIENT_ID", DbType.String, thepatientID);
            

            try
            {
                ds = db.ExecuteDataSet(cmdfetchPatientByPatientID);
                msg = "";
            }
            catch (Exception ex)
            {

                msg = ex.Message;
                return ds;

            }

            return (ds);
        }

        public DataSet fetchSymptomsByDisease(string diseases, ref string msg)
        {
            DataSet ds = new DataSet();
            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdfetchSymptomsByDisease = db.GetStoredProcCommand("fetchSymptomsByDisease");
            db.AddInParameter(cmdfetchSymptomsByDisease, "DISEASES", DbType.String, diseases);
            

            try
            {
                ds = db.ExecuteDataSet(cmdfetchSymptomsByDisease);
                msg = "";
            }
            catch (Exception ex)
            {

                msg = ex.Message;
                return ds;

            }

            return (ds);
        }

        public DataSet fetchCategorySubByCategory(string categoryName, ref string msg)
        {
            DataSet ds = new DataSet();
            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdfetchCategorySubByCategory = db.GetStoredProcCommand("fetchCategorySubByCategory");
            db.AddInParameter(cmdfetchCategorySubByCategory, "CATEGORY_NAME", DbType.String, categoryName);
           


            try
            {
                ds = db.ExecuteDataSet(cmdfetchCategorySubByCategory);
                msg = "";
            }
            catch (Exception ex)
            {

                msg = ex.Message;
                return ds;

            }

            return (ds);
        }

        public DataSet fetchPatientByID(string patientID, ref string msg)
        {
            DataSet ds = new DataSet();
            Database db = EnterpriseLibraryContainer.Current.GetInstance<Database>();


            DbCommand cmdfetchPatientByID = db.GetStoredProcCommand("fetchPatientByID");
            db.AddInParameter(cmdfetchPatientByID, "PATIENT_ID", DbType.String, patientID);



            try
            {
                ds = db.ExecuteDataSet(cmdfetchPatientByID);
                msg = "";
            }
            catch (Exception ex)
            {

                msg = ex.Message;
                return ds;

            }

            return (ds);
        }

        #endregion

        public class RandomPassword
        {

            // Define default min and max password lengths.
            private static int DEFAULT_MIN_PASSWORD_LENGTH = 8;
            private static int DEFAULT_MAX_PASSWORD_LENGTH = 10;

            // Define supported password characters divided into groups.
            // You can add (or remove) characters to (from) these groups.

            private static string PASSWORD_CHARS_LCASE = "abcdefgijkmnopqrstwxyz";
            private static string PASSWORD_CHARS_UCASE = "ABCDEFGHJKLMNPQRSTWXYZ";
            private static string PASSWORD_CHARS_NUMERIC = "23456789";
            private static string PASSWORD_CHARS_SPECIAL = "*$-+?_&=!%{}/";

            /// <summary>
            /// Generates a random password.
            /// </summary>
            /// <returns>
            /// Randomly generated password.
            /// </returns>
            /// <remarks>
            /// The length of the generated password will be determined at
            /// random. It will be no shorter than the minimum default and
            /// no longer than maximum default.
            /// </remarks>
            public static string Generate()
            {
                return Generate(DEFAULT_MIN_PASSWORD_LENGTH,
                                DEFAULT_MAX_PASSWORD_LENGTH);
            }

            /// <summary>
            /// Generates a random password of the exact length.
            /// </summary>
            /// <param name="length">
            /// Exact password length.
            /// </param>
            /// <returns>
            /// Randomly generated password.
            /// </returns>
            public static string Generate(int length)
            {
                return Generate(length, length);
            }

            /// <summary>
            /// Generates a random password.
            /// </summary>
            /// <param name="minLength">
            /// Minimum password length.
            /// </param>
            /// <param name="maxLength">
            /// Maximum password length.
            /// </param>
            /// <returns>
            /// Randomly generated password.
            /// </returns>
            /// <remarks>
            /// The length of the generated password will be determined at
            /// random and it will fall with the range determined by the
            /// function parameters.
            /// </remarks>
            public static string Generate(int minLength, int maxLength)
            {
                // Make sure that input parameters are valid.
                if (minLength <= 0 || maxLength <= 0 || minLength > maxLength)
                    return null;

                // Create a local array containing supported password characters
                // grouped by types. You can remove character groups from this
                // array, but doing so will weaken the password strength.
                char[][] charGroups = new char[][]
        {
            PASSWORD_CHARS_LCASE.ToCharArray(),
            PASSWORD_CHARS_UCASE.ToCharArray(),
            PASSWORD_CHARS_NUMERIC.ToCharArray(),
            PASSWORD_CHARS_SPECIAL.ToCharArray()
        };

                // Use this array to track the number of unused characters in each
                // character group.
                int[] charsLeftInGroup = new int[charGroups.Length];

                // Initially, all characters in each group are not used.
                for (int i = 0; i < charsLeftInGroup.Length; i++)
                    charsLeftInGroup[i] = charGroups[i].Length;

                // Use this array to track (iterate through) unused character groups.
                int[] leftGroupsOrder = new int[charGroups.Length];

                // Initially, all character groups are not used.
                for (int i = 0; i < leftGroupsOrder.Length; i++)
                    leftGroupsOrder[i] = i;

                // Because we cannot use the default randomizer, which is based on the
                // current time (it will produce the same "random" number within a
                // second), we will use a random number generator to seed the
                // randomizer.

                // Use a 4-byte array to fill it with random bytes and convert it then
                // to an integer value.
                byte[] randomBytes = new byte[4];

                // Generate 4 random bytes.
                RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
                rng.GetBytes(randomBytes);

                // Convert 4 bytes into a 32-bit integer value.
                int seed = (randomBytes[0] & 0x7f) << 24 |
                            randomBytes[1] << 16 |
                            randomBytes[2] << 8 |
                            randomBytes[3];

                // Now, this is real randomization.
                Random random = new Random(seed);

                // This array will hold password characters.
                char[] password = null;

                // Allocate appropriate memory for the password.
                if (minLength < maxLength)
                    password = new char[random.Next(minLength, maxLength + 1)];
                else
                    password = new char[minLength];

                // Index of the next character to be added to password.
                int nextCharIdx;

                // Index of the next character group to be processed.
                int nextGroupIdx;

                // Index which will be used to track not processed character groups.
                int nextLeftGroupsOrderIdx;

                // Index of the last non-processed character in a group.
                int lastCharIdx;

                // Index of the last non-processed group.
                int lastLeftGroupsOrderIdx = leftGroupsOrder.Length - 1;

                // Generate password characters one at a time.
                for (int i = 0; i < password.Length; i++)
                {
                    // If only one character group remained unprocessed, process it;
                    // otherwise, pick a random character group from the unprocessed
                    // group list. To allow a special character to appear in the
                    // first position, increment the second parameter of the Next
                    // function call by one, i.e. lastLeftGroupsOrderIdx + 1.
                    if (lastLeftGroupsOrderIdx == 0)
                        nextLeftGroupsOrderIdx = 0;
                    else
                        nextLeftGroupsOrderIdx = random.Next(0,
                                                             lastLeftGroupsOrderIdx);

                    // Get the actual index of the character group, from which we will
                    // pick the next character.
                    nextGroupIdx = leftGroupsOrder[nextLeftGroupsOrderIdx];

                    // Get the index of the last unprocessed characters in this group.
                    lastCharIdx = charsLeftInGroup[nextGroupIdx] - 1;

                    // If only one unprocessed character is left, pick it; otherwise,
                    // get a random character from the unused character list.
                    if (lastCharIdx == 0)
                        nextCharIdx = 0;
                    else
                        nextCharIdx = random.Next(0, lastCharIdx + 1);

                    // Add this character to the password.
                    password[i] = charGroups[nextGroupIdx][nextCharIdx];

                    // If we processed the last character in this group, start over.
                    if (lastCharIdx == 0)
                        charsLeftInGroup[nextGroupIdx] =
                                                  charGroups[nextGroupIdx].Length;
                    // There are more unprocessed characters left.
                    else
                    {
                        // Swap processed character with the last unprocessed character
                        // so that we don't pick it until we process all characters in
                        // this group.
                        if (lastCharIdx != nextCharIdx)
                        {
                            char temp = charGroups[nextGroupIdx][lastCharIdx];
                            charGroups[nextGroupIdx][lastCharIdx] =
                                        charGroups[nextGroupIdx][nextCharIdx];
                            charGroups[nextGroupIdx][nextCharIdx] = temp;
                        }
                        // Decrement the number of unprocessed characters in
                        // this group.
                        charsLeftInGroup[nextGroupIdx]--;
                    }

                    // If we processed the last group, start all over.
                    if (lastLeftGroupsOrderIdx == 0)
                        lastLeftGroupsOrderIdx = leftGroupsOrder.Length - 1;
                    // There are more unprocessed groups left.
                    else
                    {
                        // Swap processed group with the last unprocessed group
                        // so that we don't pick it until we process all groups.
                        if (lastLeftGroupsOrderIdx != nextLeftGroupsOrderIdx)
                        {
                            int temp = leftGroupsOrder[lastLeftGroupsOrderIdx];
                            leftGroupsOrder[lastLeftGroupsOrderIdx] =
                                        leftGroupsOrder[nextLeftGroupsOrderIdx];
                            leftGroupsOrder[nextLeftGroupsOrderIdx] = temp;
                        }
                        // Decrement the number of unprocessed groups.
                        lastLeftGroupsOrderIdx--;
                    }
                }

                // Convert password characters into a string and return the result.
                return new string(password);
            }

        }


        // 2nd Random DNA Generation Code:
        // New Class to Generate Passwords:
        public class RandomPassword1
        {

            // Define default min and max password lengths.
            private static int DEFAULT_MIN_PASSWORD_LENGTH = 6;
            private static int DEFAULT_MAX_PASSWORD_LENGTH = 10;

            // Define supported password characters divided into groups.
            // You can add (or remove) characters to (from) these groups.

            ////////////private static string PASSWORD_CHARS_LCASE = "abcdefgijkmnopqrstwxyz";
            //private static string PASSWORD_CHARS_UCASE = "ACGT";

            private static string PASSWORD_CHARS_NUMERIC = "23456789";
            ////////////private static string PASSWORD_CHARS_SPECIAL = "*$-+?_&=!%{}/";

            /// <summary>
            /// Generates a random password.
            /// </summary>
            /// <returns>
            /// Randomly generated password.
            /// </returns>
            /// <remarks>
            /// The length of the generated password will be determined at
            /// random. It will be no shorter than the minimum default and
            /// no longer than maximum default.
            /// </remarks>
            public static string Generate()
            {
                return Generate(DEFAULT_MIN_PASSWORD_LENGTH,
                                DEFAULT_MAX_PASSWORD_LENGTH);
            }

            /// <summary>
            /// Generates a random password of the exact length.
            /// </summary>
            /// <param name="length">
            /// Exact password length.
            /// </param>
            /// <returns>
            /// Randomly generated password.
            /// </returns>
            public static string Generate(int length)
            {
                return Generate(length, length);
            }

            /// <summary>
            /// Generates a random password.
            /// </summary>
            /// <param name="minLength">
            /// Minimum password length.
            /// </param>
            /// <param name="maxLength">
            /// Maximum password length.
            /// </param>
            /// <returns>
            /// Randomly generated password.
            /// </returns>
            /// <remarks>
            /// The length of the generated password will be determined at
            /// random and it will fall with the range determined by the
            /// function parameters.
            /// </remarks>
            public static string Generate(int minLength, int maxLength)
            {
                // Make sure that input parameters are valid.
                if (minLength <= 0 || maxLength <= 0 || minLength > maxLength)
                    return null;

                // Create a local array containing supported password characters
                // grouped by types. You can remove character groups from this
                // array, but doing so will weaken the password strength.
                char[][] charGroups = new char[][]
        {
            //////////////PASSWORD_CHARS_LCASE.ToCharArray(),
            //PASSWORD_CHARS_UCASE.ToCharArray(),
            PASSWORD_CHARS_NUMERIC.ToCharArray(),
            //////////////PASSWORD_CHARS_SPECIAL.ToCharArray()
        };

                // Use this array to track the number of unused characters in each
                // character group.
                int[] charsLeftInGroup = new int[charGroups.Length];

                // Initially, all characters in each group are not used.
                for (int i = 0; i < charsLeftInGroup.Length; i++)
                    charsLeftInGroup[i] = charGroups[i].Length;

                // Use this array to track (iterate through) unused character groups.
                int[] leftGroupsOrder = new int[charGroups.Length];

                // Initially, all character groups are not used.
                for (int i = 0; i < leftGroupsOrder.Length; i++)
                    leftGroupsOrder[i] = i;

                // Because we cannot use the default randomizer, which is based on the
                // current time (it will produce the same "random" number within a
                // second), we will use a random number generator to seed the
                // randomizer.

                // Use a 4-byte array to fill it with random bytes and convert it then
                // to an integer value.
                byte[] randomBytes = new byte[4];

                // Generate 4 random bytes.
                RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
                rng.GetBytes(randomBytes);

                // Convert 4 bytes into a 32-bit integer value.
                int seed = (randomBytes[0] & 0x7f) << 24 |
                            randomBytes[1] << 16 |
                            randomBytes[2] << 8 |
                            randomBytes[3];

                // Now, this is real randomization.
                Random random = new Random(seed);

                // This array will hold password characters.
                char[] password = null;

                // Allocate appropriate memory for the password.
                if (minLength < maxLength)
                    password = new char[random.Next(minLength, maxLength + 1)];
                else
                    password = new char[minLength];

                // Index of the next character to be added to password.
                int nextCharIdx;

                // Index of the next character group to be processed.
                int nextGroupIdx;

                // Index which will be used to track not processed character groups.
                int nextLeftGroupsOrderIdx;

                // Index of the last non-processed character in a group.
                int lastCharIdx;

                // Index of the last non-processed group.
                int lastLeftGroupsOrderIdx = leftGroupsOrder.Length - 1;

                // Generate password characters one at a time.
                for (int i = 0; i < password.Length; i++)
                {
                    // If only one character group remained unprocessed, process it;
                    // otherwise, pick a random character group from the unprocessed
                    // group list. To allow a special character to appear in the
                    // first position, increment the second parameter of the Next
                    // function call by one, i.e. lastLeftGroupsOrderIdx + 1.
                    if (lastLeftGroupsOrderIdx == 0)
                        nextLeftGroupsOrderIdx = 0;
                    else
                        nextLeftGroupsOrderIdx = random.Next(0,
                                                             lastLeftGroupsOrderIdx);

                    // Get the actual index of the character group, from which we will
                    // pick the next character.
                    nextGroupIdx = leftGroupsOrder[nextLeftGroupsOrderIdx];

                    // Get the index of the last unprocessed characters in this group.
                    lastCharIdx = charsLeftInGroup[nextGroupIdx] - 1;

                    // If only one unprocessed character is left, pick it; otherwise,
                    // get a random character from the unused character list.
                    if (lastCharIdx == 0)
                        nextCharIdx = 0;
                    else
                        nextCharIdx = random.Next(0, lastCharIdx + 1);

                    // Add this character to the password.
                    password[i] = charGroups[nextGroupIdx][nextCharIdx];

                    // If we processed the last character in this group, start over.
                    if (lastCharIdx == 0)
                        charsLeftInGroup[nextGroupIdx] =
                                                  charGroups[nextGroupIdx].Length;
                    // There are more unprocessed characters left.
                    else
                    {
                        // Swap processed character with the last unprocessed character
                        // so that we don't pick it until we process all characters in
                        // this group.
                        if (lastCharIdx != nextCharIdx)
                        {
                            char temp = charGroups[nextGroupIdx][lastCharIdx];
                            charGroups[nextGroupIdx][lastCharIdx] =
                                        charGroups[nextGroupIdx][nextCharIdx];
                            charGroups[nextGroupIdx][nextCharIdx] = temp;
                        }
                        // Decrement the number of unprocessed characters in
                        // this group.
                        charsLeftInGroup[nextGroupIdx]--;
                    }

                    // If we processed the last group, start all over.
                    if (lastLeftGroupsOrderIdx == 0)
                        lastLeftGroupsOrderIdx = leftGroupsOrder.Length - 1;
                    // There are more unprocessed groups left.
                    else
                    {
                        // Swap processed group with the last unprocessed group
                        // so that we don't pick it until we process all groups.
                        if (lastLeftGroupsOrderIdx != nextLeftGroupsOrderIdx)
                        {
                            int temp = leftGroupsOrder[lastLeftGroupsOrderIdx];
                            leftGroupsOrder[lastLeftGroupsOrderIdx] =
                                        leftGroupsOrder[nextLeftGroupsOrderIdx];
                            leftGroupsOrder[nextLeftGroupsOrderIdx] = temp;
                        }
                        // Decrement the number of unprocessed groups.
                        lastLeftGroupsOrderIdx--;
                    }
                }

                // Convert password characters into a string and return the result.
                return new string(password);
            }

        }









        public DbCommand cmdInsertcountry { get; set; }

        public DbCommand cmdinsertVital_Signs_tbl { get; set; }
    }
}
