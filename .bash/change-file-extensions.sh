#!/bin/bash
#
#  PVCS Location:
#  SysAdmin/RemoteBackup
#
#  change-file-extensions.sh
#
#  Author: Shane Walters
#  Date: 29-Mar-2018
#
#  Purpose:
#  Fix a terrible mess....

# Step 1:
# Turn off auto gc
# create a working directory and cd to it
# execute the following to extract all dangling commits as text file outputs into the working directory
# for blob in $(git fsck --lost-found | awk '$2 == "blob" { print $3 }'); do git cat-file -p $blob > $blob.txt; done


# Use:
#    cd /c/Users/1287921639E/.bash/
#    
#    do this:
#    ./change-file-extensions.sh
#
#    
# Reference:
# https://www.garykessler.net/library/file_sigs.html
#----------------------------------------------------------------------------------------

# FILES=/c/Users/1287921639E/Documents/blob-hack/*.txt
DIR_PATH=/c/Users/1287921639E/Documents/blob-hack/



cd $DIR_PATH

echo pwd

# simple example to get started from
#find -type f -name '*.txt' -exec grep -l "Mirrored from www.delphibasics.co.uk" {} \;


# rename all the delphibasics files
# find -type f -name '*.txt' -exec grep -l "Mirrored from www.delphibasics.co.uk" {} \; -exec bash -c 'mv "$0" "$0.delphibasics.htm"' {} \;


# rename all the datamodeler xml files
# find -type f -name '*.txt' -exec grep -l "object.property.auto.CommentInRDBMSChanged" {} \; -exec bash -c 'mv "$0" "$0.datamodeler.xml"' {} \;

# rename all the older datamodeler xml files
# find -type f -name '*.txt' -exec grep -l "object.property.auto.GeneratedInRDBMS" {} \; -exec bash -c 'mv "$0" "$0.datamodeler2.xml"' {} \;



# rename all the database document files
# find -type f -name '*.txt' -exec grep -l "../dbdoc.css" {} \; -exec bash -c 'mv "$0" "$0.db.doc.html"' {} \;


# rename pdf files
#find -type f -name '*.txt' -exec grep -l "%PDF" {} \; -exec bash -c 'mv "$0" "$0.pdf"' {} \;


# rename gif files
# find -type f -name '*.txt' -exec grep -l "GIF89" {} \; -exec bash -c 'mv "$0" "$0.gif"' {} \;


# rename spreadsheets
# find -type f -name '*.txt' -exec grep -l "_rels/workbook.xml.rels" {} \; -exec bash -c 'mv "$0" "$0.xlsx"' {} \;


#  rename unittest/devtest documents 
# find -type f -name '*.txt' -exec grep -l "Test Conducted By:          	Shane Walters" {} \; -exec bash -c 'mv "$0" "$0.testdoc.doc"' {} \;


# and more datamodeler xml files
#find -type f -name '*.txt' -exec grep -l "object.existsinrepository" {} \; -exec bash -c 'mv "$0" "$0.datamodeler2.xml"' {} \;

# SQLServerPreparedStatement
#find -type f -name '*.txt' -exec grep -l "SQLServerPreparedStatement" {} \; -exec bash -c 'mv "$0" "ms-code-sample/$0.code.html"' {} \;

# ALIS project
#find -type f -name '*.txt' -exec grep -l "F-35 Program Information" {} \; -exec bash -c 'mv "$0" "alis/$0.alis.txt"' {} \;
#find -type f -name '*.txt' -exec grep -l "urn:ALIS_Common_Soap_Header_201002" {} \; -exec bash -c 'mv "$0" "alis/$0.alis-soap.xml"' {} \;
#find -type f -name '*.txt' -exec grep -l "MtomService.Resources" {} \; -exec bash -c 'mv "$0" "alis/$0.mtom.txt"' {} \;



# <ItemType>seInformation</ItemType>
#find -type f -name '*.txt' -exec grep -l "<ItemType>seInformation</ItemType>" {} \; -exec bash -c 'mv "$0" "rbServer/$0.rbServer.log"' {} \;


# GAS Comments Report
#find -type f -name '*.txt' -exec grep -l "GAS Comments Report" {} \; -exec bash -c 'mv "$0" "gasReport/$0.gas-report.txt"' {} \;

# http://schemas.microsoft.com/win/2004/08/events/trace
find -type f -name '*.txt' -exec grep -l "http://schemas.microsoft.com/win/2004/08/events/trace" {} \; -exec bash -c 'mv "$0" "eventLogs/$0.event.log"' {} \;

# Page Language="VB"
#find -type f -name '*.txt' -exec grep -l "Page Language=\"VB\"" {} \; -exec bash -c 'mv "$0" "aspx-code/$0.aspx"' {} \;
# Inherits System.Web.UI.Page
#find -type f -name '*.txt' -exec grep -l "Inherits System.Web.UI.Page" {} \; -exec bash -c 'mv "$0" "aspx-code/$0.aspx.vb"' {} \;


# TADOQuery
#find -type f -name '*.txt' -exec grep -l "TADOQuery" {} \; -exec bash -c 'mv "$0" "delphi-code/$0"' {} \;
# borland\bds\4.0\RBuilder
#find -type f -name '*.txt' -exec grep -l "RBuilder" {} \; -exec bash -c 'mv "$0" "delphi-code/$0"' {} \;


# BMT Orders Report - <SP_ORDER_NR></SP_ORDER_NR>
#find -type f -name '*.txt' -exec grep -l "<SP_ORDER_NR>" {} \; -exec bash -c 'mv "$0" "bmt-orders-report/$0"' {} \;

# eclipse
#find -maxdepth 1 -type f -name '*.txt' -exec grep -l "eclipse" {} \; -exec bash -c 'mv "$0" "eclipse/$0"' {} \;



# oracle table outputs - apex_search.rows.length
#find -maxdepth 1 -type f -name '*.txt' -exec grep -l "apex_search.rows.length" {} \; -exec bash -c 'mv "$0" "oracle-outputs/$0.html"' {} \;

# SPOOL ./ttms_log
# find -maxdepth 1 -type f -name '*.txt' -exec grep -l "SPOOL ./ttms_log" {} \; -exec bash -c 'mv "$0" "oracle-outputs/$0.spool.log"' {} \;

# MS Help html pages
# find -maxdepth 1 -type f -name '*.txt' -exec grep -l "Microsoft.Help.ContentType" {} \; -exec bash -c 'mv "$0" "ms-code-sample/$0.code.html"' {} \;
# find -maxdepth 1 -type f -name '*.txt' -exec grep -l "Microsoft.Help.ContentType" {} \; -exec bash -c 'mv "$0" "$0.ms-code.html"' {} \;


# c# code files
# find -maxdepth 1 -type f -name '*.txt' -exec grep -l "Page Language=\"C#\"" {} \; -exec bash -c 'mv "$0" "aspx-code/$0.c.aspx"' {} \;

# Adobe Photoshop CC 2015
# find -maxdepth 1 -type f -name '*.txt' -exec grep -l "Adobe Photoshop CC 2015" {} \; -exec bash -c 'mv "$0" "photoshop/$0"' {} \;


# add -maxdepth 1 to prevent searching sub-directories
# the pdf files can also be searched to allow renaming them based on the content !!
# find -maxdepth 1 -type f -name '*.pdf' -exec grep -l "Initial Skills TRQI" {} \;



# Microsoft Office Excel 2003 Worksheet

# Performance Period  - appraisals
#find -type f -name '*.txt' -exec grep -l "Performance Period" {} \; -exec bash -c 'mv "$0" "appraisals/$0.word.8.doc"' {} \;


# Word.Document.8   - word 8 doc 
#find -type f -name '*.txt' -exec grep -l "Word.Document.8" {} \; -exec bash -c 'mv "$0" "word-docs/$0.word.8.doc"' {} \;


# word/document.xml
#find -type f -name '*.txt' -exec grep -l "word/document.xml" {} \; -exec bash -c 'mv "$0" "word-docs/$0.docx"' {} \;


# adlstools.csd.disa.mil - ADLS Web Services
# find -type f -name '*.txt' -exec grep -l "adlstools.csd.disa.mil" {} \; -exec bash -c 'mv "$0" "adls/$0"' {} \;


# W o r k b o o k  - old xls spreadsheet
# find -type f -name '*.txt' -exec grep -l " W o r k b o o k" {} \; -exec bash -c 'mv "$0" "spreadsheets/$0.xls"' {} \;

# Microsoft Office Excel 2003 Worksheet
# find -type f -name '*.txt' -exec grep -l "Microsoft Office Excel 2003 Worksheet" {} \; -exec bash -c 'mv "$0" "spreadsheets/$0.2003.xls"' {} \;

# RTF files
# find -type f -name '*.txt' -exec grep -l "{rtf" {} \; -exec bash -c 'mv "$0" "$0.rtf"' {} \;

# TidyMessages.properties
# find -type f -name '*.txt' -exec grep -l "TidyMessages.properties" {} \; -exec bash -c 'mv "$0" "$0.tidy"' {} \;


# tEXtSoftware Adobe Fireworks
# find -type f -name '*.txt' -exec grep -l "tEXtSoftware Adobe Fireworks" {} \; -exec bash -c 'mv "$0" "$0.png.adobe.fireworks"' {} \;

# ------------------------------------------------------------

# database stuff
#find -type f -name '*.txt' -exec grep -l "create or replace" {} \; -exec bash -c 'mv "$0" "$0.db.object.sql"' {} \;
#find -type f -name '*.txt' -exec grep -l "SET SERVEROUTPUT" {} \; -exec bash -c 'mv "$0" "$0.sql"' {} \;
#find -type f -name '*.txt' -exec grep -l "Database_Server" {} \; -exec bash -c 'mv "$0" "$0.db.server.sql"' {} \;
#find -type f -name '*.txt' -exec grep -l "order by" {} \; -exec bash -c 'mv "$0" "$0.sql"' {} \;
#find -type f -name '*.txt' -exec grep -l "DBMS_OUTPUT.PUT_LINE" {} \; -exec bash -c 'mv "$0" "$0.sql"' {} \; 
 

# BCImages
#find -type f -name '*.txt' -exec grep -l "BCImages" {} \; -exec bash -c 'mv "$0" "$0.beyondcompare"' {} \; 


# Imports Microsoft.VisualBasic
#find -type f -name '*.txt' -exec grep -l "Imports Microsoft.VisualBasic" {} \; -exec bash -c 'mv "$0" "$0.vb"' {} \; 
#find -type f -name '*.txt' -exec grep -l "This code was generated by a tool" {} \; -exec bash -c 'mv "$0" "$0.autogenerated.code"' {} \; 


#find -type f -name '*.txt' -exec grep -l "aspx.vb" {} \; -exec bash -c 'mv "$0" "$0.aspx"' {} \;


# ------------------------------------------------------------
#find -type f -name '*.txt' -exec grep -l "ppt/slides" {} \; -exec bash -c 'mv "$0" "$0.pptx"' {} \;
#find -type f -name '*.txt' -exec grep -l "Excel" {} \; -exec bash -c 'mv "$0" "spreadsheets/$0.excel.xls"' {} \;
#find -type f -name '*.txt' -exec grep -l "RBuilder" {} \; -exec bash -c 'mv "$0" "$0.rbserver.code"' {} \;

# ------------------------------------------------------------
find -type f -name '*.txt' -exec grep -l "AjaxControlToolkit" {} \; -exec bash -c 'mv "$0" "$0.ajaxtoolkit"' {} \;
#find -type f -name '*.txt' -exec grep -l "CREATE PUBLIC SYNONYM" {} \; -exec bash -c 'mv "$0" "$0.synonym.sql"' {} \;
#find -type f -name '*.txt' -exec grep -l "DotNetZip" {} \; -exec bash -c 'mv "$0" "$0.dotnetzip"' {} \; 
#find -type f -name '*.txt' -exec grep -l "rtf1" {} \; -exec bash -c 'mv "$0" "$0.rtf"' {} \;
#find -type f -name '*.txt' -exec grep -l "a:link{" {} \; -exec bash -c 'mv "$0" "$0.css"' {} \;
#find -type f -name '*.txt' -exec grep -l "Adobe Photoshop 7.0" {} \; -exec bash -c 'mv "$0" "$0.photoshop7"' {} \;
#find -type f -name '*.txt' -exec grep -l "ReportBuilder" {} \; -exec bash -c 'mv "$0" "$0.rbserver.code"' {} \;

#find -type f -name '*.txt' -exec grep -l "select" {} \; -exec bash -c 'mv "$0" "$0.select.sql"' {} \;

#Time Activities by Employee Detail
#find -type f -name '*.txt' -exec grep -l "Time Activities by Employee Detail" {} \; -exec bash -c 'mv "$0" "$0.timereport.xls"' {} \;

# ------------------------------------------------------------
#find -type f -name '*.txt' -exec grep -l "PNG" {} \; -exec bash -c 'mv "$0" "$0.png"' {} \;
#find -type f -name '*.txt' -exec grep -l "DENTAL PROCESSING" {} \; -exec bash -c 'mv "$0" "$0.dental.processing.report"' {} \;
#find -type f -name '*.txt' -exec grep -l "PERSONAL DATA - PRIVACY ACT OF 1974" {} \; -exec bash -c 'mv "$0" "$0.privacy.act"' {} \;
#find -type f -name '*.txt' -exec grep -l "visio" {} \; -exec bash -c 'mv "$0" "$0.visio.vsd"' {} \;
#find -type f -name '*.txt' -exec grep -l "oem.gif" {} \; -exec bash -c 'mv "$0" "$0.oem.html"' {} \;
#find -type f -name '*.txt' -exec grep -l "Public Primary Certification Authority" {} \; -exec bash -c 'mv "$0" "$0.cert"' {} \;
#find -type f -name '*.txt' -exec grep -l "Select" {} \; -exec bash -c 'mv "$0" "$0.Select.sql"' {} \;

#find -type f -name '*.txt' -exec grep -l "<BirtRequest>" {} \; -exec bash -c 'mv "$0" "$0.birt.log"' {} \;

#find -type f -name '*.txt' -exec grep -l "CREATE PUBLIC PLATEAU SYNONYM" {} \; -exec bash -c 'mv "$0" "$0.plateau.synonym.sql"' {} \;
#find -type f -name '*.txt' -exec grep -l "REPORT_COMPARISON" {} \; -exec bash -c 'mv "$0" "$0.bc.report.comparison"' {} \;
#find -type f -name '*.txt' -exec grep -l "rbReportTemplateVolume" {} \; -exec bash -c 'mv "$0" "$0.reportbuildder.pas"' {} \;
#find -type f -name '*.txt' -exec grep -l "sub_view subview_name" {} \; -exec bash -c 'mv "$0" "$0.datamodeler.xml"' {} \;
#find -type f -name '*.txt' -exec grep -l "mtomMessageEncoding" {} \; -exec bash -c 'mv "$0" "$0.mtom.xml"' {} \;
#find -type f -name '*.txt' -exec grep -l "ÿØÿà" {} \; -exec bash -c 'mv "$0" "$0.jpeg"' {} \;
#find -type f -name '*.txt' -exec grep -l "Microsoft Project" {} \; -exec bash -c 'mv "$0" "$0.msproject.mpp"' {} \;
#find -type f -name '*.txt' -exec grep -l "UIDES" {} \; -exec bash -c 'mv "$0" "$0.alis.uides.xml"' {} \;
#find -type f -name '*.txt' -exec grep -l "generator Microsoft Word 11.0.8134" {} \; -exec bash -c 'mv "$0" "$0.rtf"' {} \;
#find -type f -name '*.txt' -exec grep -l "CREATEOR REPLACE PACKAGE" {} \; -exec bash -c 'mv "$0" "$0.package.sql"' {} \;
#find -type f -name '*.txt' -exec grep -l "ViewerStyle.pas" {} \; -exec bash -c 'mv "$0" "$0.delphiviewer.pas"' {} \;

#find -type f -name '*.txt' -exec grep -l "<ajaxToolkit" {} \; -exec bash -c 'mv "$0" "$0.ajaxtoolkit.aspx"' {} \;
# plugin.properties
#find -type f -name '*.txt' -exec grep -l "plugin.properties" {} \; -exec bash -c 'mv "$0" "$0.pluginproperties"' {} \;
#find -type f -name '*.txt' -exec grep -l "P o w e r P o i n t   D o c u m e n t" {} \; -exec bash -c 'mv "$0" "$0.ppt"' {} \;
#find -type f -name '*.txt' -exec grep -l "Hello World" {} \; -exec bash -c 'mv "$0" "$0.helloworld"' {} \;
#find -type f -name '*.txt' -exec grep -l "providerName=\"System.Data.OracleClient\"" {} \; -exec bash -c 'mv "$0" "$0.web.config"' {} \;

#find -type f -name '*.txt' -exec grep -l "msdata:IsDataSet" {} \; -exec bash -c 'mv "$0" "$0.webservice.msdata.xml"' {} \;
#find -type f -name '*.txt' -exec grep -l "Û¥-" {} \; -exec bash -c 'mv "$0" "$0.word.2.0.doc"' {} \;

# attempting multiple pattern matching
#find -type f -name '*.txt' -exec grep -e "oraclsra10.dll\|PK" {} \; -exec bash -c 'mv "$0" "$0.oraclsra10.jar"' {} \;

#find -type f -name '*.txt' -exec grep -e "MZ\|This program cannot be run in DOS mode" {} \; -exec bash -c 'mv "$0" "$0.dll"' {} \;

#find -type f -name '*.txt' -exec grep -l "Partial Class" {} \; -exec bash -c 'mv "$0" "$0.code"' {} \;

#find -type f -name '*.txt' -exec grep -l "System.Web.Services.Protocols" {} \; -exec bash -c 'mv "$0" "$0.web.service.code"' {} \;
#find -type f -name '*.txt' -exec grep -l "ReportBuilder Class Library" {} \; -exec bash -c 'mv "$0" "$0.rb.pas"' {} \;
#find -type f -name '*.txt' -exec grep -l "Digital Metaphors Corporation" {} \; -exec bash -c 'mv "$0" "$0.rb.pas"' {} \;
#find -type f -name '*.txt' -exec grep -l "CREATE OR REPLACE FUNCTION" {} \; -exec bash -c 'mv "$0" "$0.function.sql"' {} \;
#find -type f -name '*.txt' -exec grep -l "TppReport" {} \; -exec bash -c 'mv "$0" "$0.delphi.rtm"' {} \;


#find -type f -name '*.txt' -exec grep -l "<STUDENTEMAILADDRESS>bob@isp.com" {} \; -exec bash -c 'mv "$0" "$0.fakedata.xml"' {} \;
#find -type f -name '*.txt' -exec grep -l "CREATE OR REPLACE TYPE" {} \; -exec bash -c 'mv "$0" "$0.type.sql"' {} \;
#find -type f -name '*.txt' -exec grep -l "alis_test.asmx" {} \; -exec bash -c 'mv "$0" "$0.alis.xml"' {} \;

#find -type f -name '*.txt' -exec grep -l "DotNetZip.codeplex.com" {} \; -exec bash -c 'mv "$0" "$0.dotnetzip.code"' {} \;
#find -type f -name '*.txt' -exec grep -l "MEDICAL PROCESSING" {} \; -exec bash -c 'mv "$0" "$0.medical.processing.rtf"' {} \;

#find -type f -name '*.txt' -exec grep -l "CREATE TABLE" {} \; -exec bash -c 'mv "$0" "$0.table.sql"' {} \;
#find -type f -name '*.txt' -exec grep -l "AF FORM 10" {} \; -exec bash -c 'mv "$0" "$0.afform10.rtf"' {} \;
#find -type f -name '*.txt' -exec grep -l "DEFINE SPOOL" {} \; -exec bash -c 'mv "$0" "$0.spool"' {} \;
#find -type f -name '*.txt' -exec grep -l "Microsoft Exchange Server" {} \; -exec bash -c 'mv "$0" "$0.email.msg"' {} \;
#find -type f -name '*.txt' -exec grep -l "ttmsint" {} \; -exec bash -c 'mv "$0" "$0.ttmsint.code"' {} \;

#find -type f -name '*.txt' -exec grep -l "dmReportArchiveVolume" {} \; -exec bash -c 'mv "$0" "$0.VolumeController.delphi.pas"' {} \;
#find -type f -name '*.txt' -exec grep -l "<appSettings>" {} \; -exec bash -c 'mv "$0" "$0.appSettings.web.config"' {} \;
#find -type f -name '*.txt' -exec grep -l "SELECT" {} \; -exec bash -c 'mv "$0" "$0.SELECT.sql"' {} \;

#find -type f -name '*.txt' -exec grep -l "DotNetZip" {} \; -exec bash -c 'mv "$0" "$0.dotnetzip.code"' {} \;
#find -type f -name '*.txt' -exec grep -l "GetTTMSDataResponse" {} \; -exec bash -c 'mv "$0" "$0.atrrs.code.xml"' {} \;
#find -type f -name '*.txt' -exec grep -l "TRANSID" {} \; -exec bash -c 'mv "$0" "$0.atrrs.data"' {} \;
#find -type f -name '*.txt' -exec grep -l "ScriptManager" {} \; -exec bash -c 'mv "$0" "$0.ajaxtoolkit.code"' {} \;
#find -type f -name '*.txt' -exec grep -l "<html><head>" {} \; -exec bash -c 'mv "$0" "$0.htm"' {} \;
#find -type f -name '*.txt' -exec grep -l "CodeBehind" {} \; -exec bash -c 'mv "$0" "$0.codebehind.aspx"' {} \;
#find -type f -name '*.txt' -exec grep -l "Training Entrance Date:" {} \; -exec bash -c 'mv "$0" "$0.entryexport.rtf"' {} \;
find -type f -name '*.txt' -exec grep -l "wsTestAuthWebService.wsdl" {} \; -exec bash -c 'mv "$0" "$0.webservice.atrrs.xml"' {} \;


# ------------------------------------------------------------
#this did not work
#find -type f -name '*.txt' -exec grep -l "ü©ñÒMbP" {} \; -exec bash -c 'mv "$0" "$0.rb.rtm' {} \;

#find -type f -name '*.txt' -exec grep -l "BorlandProject" {} \; -exec bash -c 'mv "$0" "$0.borland.project.xml"' {} \;
#find -type f -name '*.txt' -exec grep -l "PS_WORKFLOW" {} \; -exec bash -c 'mv "$0" "$0.jm.workflow"' {} \;

#find -type f -name '*.txt' -exec grep -l "ATRRS_CLASS" {} \; -exec bash -c 'mv "$0" "$0.atrrs.report.txt"' {} \;
#find -type f -name '*.txt' -exec grep -l "ACTION_TSTMP" {} \; -exec bash -c 'mv "$0" "$0.data"' {} \;
#find -type f -name '*.txt' -exec grep -e "ü©ñÒMbP\|SSAN" {} \; -exec bash -c 'mv "$0" "$0.report.output"' {} \;
#find -type f -name '*.txt' -exec grep -l "Microsoft Office PowerPoint" {} \; -exec bash -c 'mv "$0" "$0.PowerPoint.ppt"' {} \;
#find -type f -name '*.txt' -exec grep -l "CREATE OR REPLACE PACKAGE" {} \; -exec bash -c 'mv "$0" "$0.package.sql"' {} \;
#find -type f -name '*.txt' -exec grep -l "Microsoft Visio" {} \; -exec bash -c 'mv "$0" "$0.visio.vsd"' {} \;
#find -type f -name '*.txt' -exec grep -l "Visio (TM) Drawing" {} \; -exec bash -c 'mv "$0" "$0.visiodrawing.vsd"' {} \;

#find -type f -name '*.txt' -exec grep -l "ansicpg1252" {} \; -exec bash -c 'mv "$0" "$0.report.rtf"' {} \;

#find -type f -name '*.txt' -exec grep -l "TRAINING_LINE_NUMBER" {} \; -exec bash -c 'mv "$0" "$0.reportoutput.txt"' {} \;
#find -type f -name '*.txt' -exec grep -l "MILITARY_STATUS" {} \; -exec bash -c 'mv "$0" "$0.reportoutput.txt"' {} \;

#find -type f -name '*.txt' -exec grep -l "Insert into" {} \; -exec bash -c 'mv "$0" "$0.Insert.sql"' {} \;
#find -type f -name '*.txt' -exec grep -l "insert into" {} \; -exec bash -c 'mv "$0" "$0.insert.sql"' {} \;
#find -type f -name '*.txt' -exec grep -l "Ionic.Zip.Forms" {} \; -exec bash -c 'mv "$0" "$0.ionic.txt"' {} \;
#find -type f -name '*.txt' -exec grep -l "runat=\"server\"" {} \; -exec bash -c 'mv "$0" "$0.aspx"' {} \;
#find -type f -name '*.txt' -exec grep -l "getADLStoTTMS" {} \; -exec bash -c 'mv "$0" "$0.ws.adls.xml"' {} \;


#find -type f -name '*.txt' -exec grep -l "Slide Titles" {} \; -exec bash -c 'mv "$0" "$0.slid.titles.ppt"' {} \;

#find -type f -name '*.txt' -exec grep -l "GIF87" {} \; -exec bash -c 'mv "$0" "$0.gif"' {} \;
#find -type f -name '*.txt' -exec grep -l "Database Snapshot" {} \; -exec bash -c 'mv "$0" "$0.db.snapshot.txt"' {} \;
#find -type f -name '*.txt' -exec grep -l "A:link" {} \; -exec bash -c 'mv "$0" "$0.css"' {} \;
#find -type f -name '*.txt' -exec grep -l "using Ionic.Zlib" {} \; -exec bash -c 'mv "$0" "$0.ionic.code"' {} \;


find -type f -name '*.txt' -exec grep -l " v   " {} \; -exec bash -c 'mv "$0" "$0.v.unidentifiable"' {} \;























 


