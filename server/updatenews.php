<?php
	header("Content-type: application/json;charset=utf-8");
	require_once('db.php');
	// 更新数据
	if($link){
		$newstitle = htmlspecialchars($_POST['newstitle']);
		$newstype = htmlspecialchars($_POST['newstype']);
		$newsimg = htmlspecialchars($_POST['newsimg']);
		$newstime = htmlspecialchars($_POST['newstime']);
		$newssrc = htmlspecialchars($_POST['newssrc']);
		$newsid = htmlspecialchars($_POST['newsid']);

		$sql = "UPDATE `news` SET `newstitle`='{$newstitle}',`newstype`='{$newstype}',
			`newsimg`='{$newsimg}',`newstime`='{$newstime}',`newssrc`='{$newssrc}' WHERE `id` ={$newsid}";

		mysqli_query($link,"SET NAMES utf8");
		$result = mysqli_query($link,$sql);

		echo json_encode(array('success' => 'ok'));
	}

	mysqli_close($link);
?>