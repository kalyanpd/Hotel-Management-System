FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy source code
COPY . /app

# Install ant for building the NetBeans project
RUN apt-get update && apt-get install -y --no-install-recommends ant && rm -rf /var/lib/apt/lists/*

# Build using ant (creates dist/ with jar)
RUN ant -quiet

# Run the generated jar (update name if different)
CMD ["sh", "-c", "exec java -jar dist/*.jar"]

