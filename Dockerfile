FROM openjdk:11-slim
# /app以下で作業
WORKDIR /app
# プロジェクトルート以下をすべてコピー
COPY . .
# ビルド
RUN ["./gradlew", "build"]
# docker run時にキックするコマンド
ENTRYPOINT ["java", "-jar", "build/libs/java-for-k8s-0.2.jar"]
