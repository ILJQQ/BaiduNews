<?php
	header("Content-type: application/json; charset=utf-8");
	require_once('db.php');
	// 删除数据栏
	if($link){
		$newsid = htmlspecialchars($_POST['newsid']);
		mysqli_query($link,"SET NAMES utf8");
		$sql = "DELETE FROM `news` WHERE `news`.`id` = {$newsid}";
		$result = mysqli_query($link,$sql);

		echo json_encode(array('success'=>'ok'));
	}

	mysqli_close($link);
?>