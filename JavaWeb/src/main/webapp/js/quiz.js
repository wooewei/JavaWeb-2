// 檢查結果
function checkResult() {
	const q1 = document.querySelector('input[name="q1"]:checked');
	const q2 = document.querySelector('input[name="q2"]:checked');
	const q3 = document.querySelector('input[name="q3"]:checked');
	
	if(q1 == null || q2 == null || q3 == null) {
		alert('請先回答完問題!');
		return;
	}
	
	//alert(q1.value + ", " + q2.value + ", " + q3.value);
	const a1 = q1.value;
	const a2 = q2.value;
	const a3 = q3.value;
	
	var resultText = '';
	var emoji = '';
	// 判斷
	if(a1 === '1' && a2 === '1' && a3 === '1') {
		resultText = '您是貓, 神秘又獨立!';
		emoji = '🐱';
	} else if(a1 === '2' && a2 === '2' && a3 === '2') {
		resultText = '您是狗, 熱情又忠誠!';
		emoji = '🐶';
	} else if(a2 === '1') {
		resultText = '您是鷹, 喜歡自由與挑戰!';
		emoji = '🦅';
	} else if(a3 === '1') {
		resultText = '您是狼, 享受孤獨與神秘!';
		emoji = '🐺';
	} else {
		resultText = '您是無尾熊！溫和又友善。';
		emoji = '🐨';
	}
	// 印出資料在 result 標籤上
	document.getElementById('result').innerHTML = `<h2>${emoji} ${resultText}</h2>`;
	
}