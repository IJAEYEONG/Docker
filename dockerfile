# Dockerfile 생성
FROM node:14

# 컨테이너 안에 app 디렉토리를 생성하고, 소스 코드를 복사
WORKDIR /app
COPY . .

# 패키지 설치
RUN npm install

# 앱을 3000 포트에서 실행
EXPOSE 3000
CMD ["node", "app.js"]
