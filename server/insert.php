<?php
	header("Content-type: application/json;charset=utf-8");
	require_once('db.php');
	// 插入
	if($link){
		$newstitle = htmlspecialchars($_POST['newstitle']);
		$newstype = htmlspecialchars($_POST['newstype']);
		$newsimg = htmlspecialchars($_POST['newsimg']);
		$newstime = htmlspecialchars($_POST['newstime']);
		$newssrc = htmlspecialchars($_POST['newssrc']);

		$sql = "INSERT INTO `news` (`newstitle`,`newstype`,`newsimg`,`newstime`
			,`newssrc`) VALUES ('{$newstitle}','{$newstype}','{$newsimg}','{$newstime}','{$newssrc}')";

		mysqli_query($link,"SET NAMES utf8");
		$result = mysqli_query($link,$sql);

		echo json_encode(array('success' => 'ok'));
	}
?>