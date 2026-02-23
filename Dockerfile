[200~FROM node:18-alpine

# 컨테이너 내 작업 디렉토리 설정
WORKDIR /app

# 패키지 정보 파일을 먼저 복사하여 종속성 설치 (캐싱 활용)
COPY package*.json ./
RUN npm install

# 나머지 소스 코드 전체 복사
COPY . .

# 앱이 사용할 포트 명시
EXPOSE 3300

# 서버 실행 명령어 (작성하신 app.js가 server.js라면 그대로 유지)
CMD ["node", "server.js"]
