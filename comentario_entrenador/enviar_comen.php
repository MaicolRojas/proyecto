﻿<head>
	<link rel="stylesheet" type="text/css" href="alertifyjs/css/alertify.css">
	<link rel="stylesheet" type="text/css" href="alertifyjs/css/themes/default.css">
	<script src="js/jquery.min.js"></script>
	<script src="alertifyjs/alertify.js"></script>
</head>
<?php
function email_ent($mail_username, $mail_userpassword, $mail_setFromEmail, $mail_setFromName, $mail_addAddress, $template,$primer_nombre,$segundo_nombre,$telefono,$correo,$comentario,$id,$correo_entrenador,$nombre_entrenador, $apellido_etrenador,$url)
{
	require 'PHPMailer/PHPMailerAutoload.php';
	$mail = new PHPMailer;
	$mail->isSMTP();                            // Establecer el correo electrónico para utilizar SMTP
	$mail->Host = 'smtp.gmail.com';             // Especificar el servidor de correo a utilizar 
	$mail->SMTPAuth = true;                     // Habilitar la autenticacion con SMTP
	$mail->Username = $mail_username;          // Correo electronico saliente ejemplo: tucorreo@gmail.com
	$mail->Password = $mail_userpassword; 		// Tu contraseña de gmail
	$mail->SMTPSecure = 'tls';                  // Habilitar encriptacion, `ssl` es aceptada
	$mail->Port = 587;                          // Puerto TCP  para conectarse 
	$mail->setFrom($mail_setFromEmail, $mail_setFromName); //Introduzca la dirección de la que debe aparecer el correo electrónico. Puede utilizar cualquier dirección que el servidor SMTP acepte como válida. El segundo parámetro opcional para esta función es el nombre que se mostrará como el remitente en lugar de la dirección de correo electrónico en sí.
	$mail->addReplyTo($mail_setFromEmail, $mail_setFromName); //Introduzca la dirección de la que debe responder. El segundo parámetro opcional para esta función es el nombre que se mostrará para responder
	$nombre1 = explode("@", $mail_addAddress);
	$nombre2 = $nombre1[0];
	$mail->addAddress($mail_addAddress);   // Agregar quien recibe el e-mail enviado
	$message = file_get_contents($template);

	$message = str_replace('{{id}}', $id, $message);
	
	$message = str_replace('{{nombre_entrenador}}', $nombre_entrenador, $message);
	$message = str_replace('{{apellido_entrenador}}', $apellido_etrenador, $message);
	$message = str_replace('{{nombre}}', $primer_nombre, $message);
	$message = str_replace('{{apellido}}', $segundo_nombre, $message);
	$message = str_replace('{{telefono}}', $telefono, $message);
	$message = str_replace('{{correo}}', $correo, $message);
	$message = str_replace('{{mensaje}}', $comentario, $message);
	date_default_timezone_set('America/Bogota');
	$fecha = date("d-m-Y");
	$hora = date("h:i a");
	$message = str_replace('{{fecha}}', $fecha, $message);
	$message = str_replace('{{hora}}', $hora, $message);
	$mail->isHTML(true);  // Establecer el formato de correo electrónico en HTML
	$mail->Subject = "¡Has recibido un nuevo comentario!";
	$mail->CharSet = "UTF-8";
	$mail->SetFrom('mi correo', $nombre2);
	$mail->msgHTML($message);
	if(!$mail->send()) {
		echo "<script language='JavaScript'>";
		echo "alertify.error('<center>No se pudo enviar el comentario. <br> Intentalo más tarde :D </center>');";
		echo "</script>";
		echo 'Error de correo: ' . $mail->ErrorInfo."</p>";
		echo "<meta http-equiv='Refresh' content='4;url=".$url."'>";
	} else {
		echo "<script language='JavaScript'>";
		echo "alertify.alert('<center>Su Comentario se ha enviado satisfactomiante. :D<br>En algunos segundos aparecera</center>');";
		echo "</script>";
		echo "<meta http-equiv='Refresh' content='4;url=".$url."'>";
	}
}
?>