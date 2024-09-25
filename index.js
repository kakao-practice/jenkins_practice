const express = require('express');
const cors = require('cors');
const app = express();
const port = 3000;

app.use(cors());

app.get('/', (req, res) => {
  res.send('안녕하세요 테스트 성공을 축하드립니다');
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
