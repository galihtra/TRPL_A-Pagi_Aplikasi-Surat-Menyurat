<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Polibatam Software Correspondence</title>
    <link rel="icon" type="image/png" sizes="120x120" href="<?=base_url()?>assets/img/logo.png">
	<STYLE>
		P.western { font-family: "Times New Roman", serif; font-size: 12pt; so-language: en-US }
		P.cjk { font-family: "Times New Roman"; font-size: 12pt }
		P.ctl { font-family: "Times New Roman"; font-size: 12pt }
	.row{
		background-color:#bfbfbf;
		-webkit-print-color-adjust: exact; 
	}
	</STYLE>
</head><br>
<body>
<P LANG="en-US" CLASS="western" ALIGN=CENTER >
<SPAN LANG="id-ID"><U><B>DATA PENGAJUAN SURAT MAHASISWA</B></U></SPAN><br/>
</P>
	<table WIDTH=631 CELLPADDING=5 CELLSPACING=0 align="CENTER">
		<tr>
			<th BGCOLOR="#bfbfbf" STYLE="border: 1px solid #00000a; padding-top: 0.14in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">		NO<P LANG="en-US" CLASS="western" ALIGN=CENTER><FONT SIZE=2 STYLE="font-size: 8pt"><SPAN LANG="id-ID"></SPAN></FONT></P>
			</th>
			<th BGCOLOR="#bfbfbf" STYLE="border: 1px solid #00000a; padding-top: 0.14in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">		NIM<P LANG="en-US" CLASS="western" ALIGN=CENTER><FONT SIZE=2 STYLE="font-size: 10pt"><SPAN LANG="id-ID"></SPAN></FONT></P>
			</th>
			<th BGCOLOR="#bfbfbf" STYLE="border: 1px solid #00000a; padding-top: 0.14in; padding-bottom: 0in; padding-left: 0.90in; padding-right: 0.80in">		NAMA MAHASISWA<P LANG="en-US" CLASS="western" ALIGN=CENTER><FONT SIZE=3 STYLE="font-size: 5pt"><SPAN LANG="id-ID"></SPAN></FONT></P>
			</th>
			<th BGCOLOR="#bfbfbf" STYLE="border: 1px solid #00000a; padding-top: 0.14in; padding-bottom: 0in; padding-left: 0.80in; padding-right: 0.80in">		NAMA SURAT<P LANG="en-US" CLASS="western" ALIGN=CENTER><FONT SIZE=2 STYLE="font-size: 8pt"><SPAN LANG="id-ID"></SPAN></FONT></P>
			</th>
			<th BGCOLOR="#bfbfbf" STYLE="border: 1px solid #00000a; padding-top: 0.14in; padding-bottom: 0in; padding-left: 0.40in; padding-right: 0.40in">		STATUS<P LANG="en-US" CLASS="western" ALIGN=CENTER><FONT SIZE=2 STYLE="font-size: 8pt"><SPAN LANG="id-ID"></SPAN></FONT></P>
			</th>		
		</tr>
		<?php $n = 1; foreach ($pengajuan_all as $row): ?>
		<tr>
		    <td STYLE="border: 1px solid #00000a; padding-top: 0.14in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in"><?= $n++; ?>
		    	<P LANG="en-US" CLASS="western" ALIGN=CENTER ><FONT SIZE=2 STYLE="font-size: 9pt"><SPAN LANG="id-ID"></SPAN></FONT></P>
		    </td>
            <td STYLE="border: 1px solid #00000a; padding-top: 0.14in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in"><?= $row['nim']; ?>
            	<P LANG="en-US" CLASS="western" ALIGN=CENTER ><FONT SIZE=2 STYLE="font-size: 9pt"><SPAN LANG="id-ID"></SPAN></FONT></P>
            </td>
            <td STYLE="border: 1px solid #00000a; padding-top: 0.14in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in"><?= $row['nama_lengkap']; ?>
            	<P LANG="en-US" CLASS="western" ALIGN=CENTER ><FONT SIZE=2 STYLE="font-size: 9pt"><SPAN LANG="id-ID"></SPAN></FONT></P>
            </td>
            <td STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in"><?= $row['nama_surat']; ?></td>
            	<P LANG="en-US" CLASS="western" ALIGN=CENTER ><FONT SIZE=2 STYLE="font-size: 9pt"><SPAN LANG="id-ID"></SPAN></FONT></P>
            <td STYLE="border: 1px solid #00000a; padding-top: 0.14in; padding-bottom: 0in; padding-left: 0.08in; padding-right: 0.08in">
                <?php if($row['status']=='Buat'): ?>
                <span class="badge badge-dark"><?= $row['status']; ?></span>
                <?php elseif($row['status']=='Tolak'): ?>
                <span class="badge badge-danger"><?= $row['status']; ?></span>
                <?php elseif($row['status']=='Pengajuan'): ?>
                <span class="badge badge-info"><?= $row['status']; ?></span>
                <?php elseif($row['status']=='Proses'): ?>
                <span class="badge badge-primary"><?= $row['status']; ?></span>
                <?php else: ?>
                <span class="badge badge-success"><?= $row['status']; ?></span>
                <?php endif; ?>
                <P LANG="en-US" CLASS="western" ALIGN=CENTER><FONT SIZE=2 STYLE="font-size: 9pt"><SPAN LANG="id-ID"></SPAN></FONT></P>
            </td>
		</tr>
	<?php endforeach ?>
	</table>
	<script type="text/javascript">
		window.print();
	</script>
</body>
</html>