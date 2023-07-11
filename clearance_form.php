<!DOCTYPE html>
<html id="clearance">
<style>
    @media print {
        .noprint {
        visibility: hidden;
         }
    }
    @page { size: auto;  margin: 4mm; }
</style>
    <?php
    session_start();
    if(!isset($_SESSION['role']))
    {
        header("Location: ../../login.php"); 
    }
    else
    {
    ob_start();
    $_SESSION['clr'] = $_GET['clearance'];
    include('../head_css.php'); ?>
    <body class="skin-black" >
        <!-- header logo: style can be found in header.less -->
        <?php 
        
        include "../connection.php";
        ?>
       
        <div class="col-xs-12 col-sm-6 col-md-8" style="" >
            <div style=" background: black;" >
                <div class="col-xs-4 col-sm-6 col-md-3" style="background: white; margin-right:10px; border: 2px solid black;">
                    <center><image src="../../img/talabaanlogo.png" style="width:90%;height:164px;"/></center>
                    <div style="margin-top:20px; text-align: center; word-wrap: break-word;">
                        <?php
                            $qry = mysqli_query($con,"SELECT * from tblofficial");
                            while($row=mysqli_fetch_array($qry)){
                                if($row['sPosition'] == "Captain"){
                                    echo '
                                    <p>
                                    <b>'.strtoupper($row['completeName']).'</b><br>
                                    <span style="font-size:12px;">PUNONG BARANGAY</span>
                                    </p>
                                    ';
                                }elseif($row['sPosition'] == "Kagawad(Ordinance)"){
                                    echo '
                                    <p>
                                    KAG. '.strtoupper($row['completeName']).'<br>
                                    <span style="font-size:12px;">Sports / Law / Ordinance</span>
                                    </p>
                                    ';
                                }elseif($row['sPosition'] == "Kagawad(Public Safety)"){
                                    echo '
                                    <p>
                                    KAG. '.strtoupper($row['completeName']).'<br>
                                    <span style="font-size:12px;">Public Safety / Peace and Order</span>
                                    </p>
                                    ';
                                }elseif($row['sPosition'] == "Kagawad(Tourism)"){
                                    echo '
                                    <p>
                                    KAG. '.strtoupper($row['completeName']).'<br>
                                    <span style="font-size:12px;">Culture & Arts / Tourism / Womens Sector</span>
                                    </p>
                                    ';
                                }elseif($row['sPosition'] == "Kagawad(Budget & Finance)"){
                                    echo '
                                    <p>
                                    KAG. '.strtoupper($row['completeName']).'<br>
                                    <span style="font-size:12px;">Budget & Finance / Electrification</span>
                                    </p>
                                    ';
                                }elseif($row['sPosition'] == "Kagawad(Agriculture)"){
                                    echo '
                                    <p>
                                    KAG. '.strtoupper($row['completeName']).'<br>
                                    <span style="font-size:12px;">Agriculture / Livelihood / Farmers Sector / PWD Sector</span>
                                    </p>
                                    ';
                                }elseif($row['sPosition'] == "Kagawad(Education)"){
                                    echo '
                                    <p>
                                    KAG. '.strtoupper($row['completeName']).'<br>
                                    <span style="font-size:12px;">Health & Sanitation / Education</span>
                                    </p>
                                    ';
                                }elseif($row['sPosition'] == "Kagawad(Infrastracture)"){
                                    echo '
                                    <p>
                                    KAG. '.strtoupper($row['completeName']).'<br>
                                    <span style="font-size:12px;">Infrastracture / Labor Sector/ Environment / Beautification</span>
                                    </p>
                                    ';
                                }
                            }
                        ?>
                    </div>
                </div>
                <div class="col-xs-7 col-sm-5 col-md-8" style="background: white;  ">
                    <div class="pull-left" style="font-size: 16px;"><b>
                        Republic of the Philippines<br>
                        Province of Occidental Mindoro<br>
                        Municipality of Mamburao<br><br>
                        OFFICE OF THE PUNONG BARANGAY
                        
                    </div>
                    <div class="pull-right" style="border: 2px solid black;">
                       

                        <?php
                            $qry=mysqli_query($con,"SELECT * from tblresident r left join tblclearance c on c.residentid = r.id where residentid = '".$_GET['resident']."' and clearanceNo = '".$_GET['clearance']."' ");
                            while($row = mysqli_fetch_array($qry)){
                                $bdate = date_create($row['bdate']);
                                $date = date_create($row['dateRecorded']);
                                echo '
                    </div>
                    <div class="col-xs-12 col-md-12">
                        <p class="text-center" style="font-size: 20px; font-size:bold;"><br><b style="font-size: 28px;">BARANGAY CLEARANCE</b></p>
                        <p style="font-size: 18px;">TO WHOM THIS MAY CONCERN:</p>
                        <p style="text-indent:40px;text-align: justify;">I hearby that I know personally <b><u>'.strtoupper($row['lname']).' '.strtoupper($row['fname']).' '.strtoupper($row['mname']).'</u>  <u>'.strtoupper($row['age']).'</u></b>, years old,and a resident of Barangay Talabaan, Mamburao Occidental Mindoro. Law abiding of good physical and good moral character. Law abiding citizen of any offense neither is there any crime in which she/he is party iligant.</p>
                        <p style="text-indent:40px;text-align: justify;"> I furhter certify that she/he has no pending case never been convicted of any offense neither is there any crime in which she/he is party iligant.</p>
                        <p style="text-indent:40px;text-align: justify;"> This certification is being issued upon the request of interested party for <b><u>'.strtoupper($row['purpose']).'</u> </p></b>
                        <p style="text-indent:40px;text-align: justify;">Issued on  <b><u>'.strtoupper(date_format($date,"F j, o")).'</u></b> at Barangay Talabaan,Mamburao Occidental Mindoro.</p>                      
                               
                                
                                 
                        __________________________<br>
                        Affiant Signiture
                        
                        <br><br><br><br><br><br><br><br><br>
                                  
                                
                                ';
                            }
                        ?>
                    </div>  
                    <div class="col-md-5 col-xs-4" style="float:left;margin-top: -160px;">
                        <div style="height:100px; width:140px; border: 1px solid black;">
                            <center><span style="text-align: center; line-height: 160px;">Right Thumb Mark</span></center>
                        </div><br><br>
                        
                    </div>
                </div>
                <div class="col-xs-offset-6 col-xs-5 col-md-offset-6 col-md-4" ><br><br><br>
                    <?php
                    $qry = mysqli_query($con,"SELECT * from tblofficial");
                    while($row=mysqli_fetch_array($qry)){
                        if($row['sPosition'] == "Captain"){
                            echo '
                            <p>
                            <b style="font-size:18px;">'.strtoupper($row['completeName']).'<br>
                            <span style=" text-align: center;">Punong Barangay</span></b>
                            </p>
                            ';
                        }
                    }
                    ?>
                </div>
                <div class="col-xs-8 col-md-4">
                    <?php
                    $qry = mysqli_query($con,"SELECT * from tblofficial");
                    while($row=mysqli_fetch_array($qry)){
                        if($row['sPosition'] == "Captain"){
                            echo '
                           <p>NOT VAILD WITHOUT SEAL</p><br>
                           <p> Isueed at: Barangay  Talabaan</p>
                            ';
                        }
                    }
                    ?>
                </div>
               
            </div>
        </div>
    <button class="btn btn-primary noprint" id="printpagebutton" onclick="PrintElem('#clearance')">Print</button>
    </body>
    <?php
    }
    ?>


    <script>
         function PrintElem(elem)
    {
        window.print();
    }

    function Popup(data) 
    {
        var mywindow = window.open('', 'my div', 'height=400,width=600');
        //mywindow.document.write('<html><head><title>my div</title>');
        /*optional stylesheet*/ //mywindow.document.write('<link rel="stylesheet" href="main.css" type="text/css" />');
        //mywindow.document.write('</head><body class="skin-black" >');
         var printButton = document.getElementById("printpagebutton");
        //Set the print button visibility to 'hidden' 
        printButton.style.visibility = 'hidden';
        mywindow.document.write(data);
        //mywindow.document.write('</body></html>');

        mywindow.document.close(); // necessary for IE >= 10
        mywindow.focus(); // necessary for IE >= 10

        mywindow.print();

        printButton.style.visibility = 'visible';
        mywindow.close();

        return true;
    }
    </script>
</html>