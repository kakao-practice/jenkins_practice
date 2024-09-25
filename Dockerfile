# Node.js 베이스 이미지 사용
FROM node:16

# 작업 디렉토리 설정
WORKDIR /app

# package.json과 package-lock.json 복사
COPY package*.json ./

# 필요한 패키지 설치
RUN npm install

# 애플리케이션 코드 복사
COPY . .

# 앱 실행 포트
EXPOSE 3000

# 애플리케이션 시작 명령
CMD ["npm", "start"]
