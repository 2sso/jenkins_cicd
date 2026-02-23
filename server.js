const express = require('express');
const path = require('path');
const app = express();
const port = 3300;

// 'public' 폴더 안에 있는 정적 파일(HTML, CSS, 이미지 등)을 서비스하겠다고 선언
app.use(express.static(path.join(__dirname, 'public')));

app.listen(port, () => {
  console.log(`Express 웹 서버가 ${port}번 포트에서 가동 중입니다...`);
});
