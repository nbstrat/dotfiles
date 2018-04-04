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
#
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
#find -type f -name '*.txt' -exec grep -l "http://schemas.microsoft.com/win/2004/08/events/trace" {} \; -exec bash -c 'mv "$0" "eventLogs/$0.event.log"' {} \;

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
find -maxdepth 1 -type f -name '*.txt' -exec grep -l "SPOOL ./ttms_log" {} \; -exec bash -c 'mv "$0" "oracle-outputs/$0.spool.log"' {} \;

# MS Help html pages
# find -maxdepth 1 -type f -name '*.txt' -exec grep -l "Microsoft.Help.ContentType" {} \; -exec bash -c 'mv "$0" "ms-code-sample/$0.code.html"' {} \;

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
find -type f -name '*.txt' -exec grep -l "adlstools.csd.disa.mil" {} \; -exec bash -c 'mv "$0" "adls/$0"' {} \;


# W o r k b o o k  - old xls spreadsheet
find -type f -name '*.txt' -exec grep -l " W o r k b o o k" {} \; -exec bash -c 'mv "$0" "spreadsheets/$0.xls"' {} \;

# Microsoft Office Excel 2003 Worksheet
find -type f -name '*.txt' -exec grep -l "Microsoft Office Excel 2003 Worksheet" {} \; -exec bash -c 'mv "$0" "spreadsheets/$0.2003.xls"' {} \;


