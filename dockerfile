# This is sample nodejs app dockerfile
FROM node:12.0-slim
COPY . .
RUN npm install
CMD [ "node", "index.js" ]

# adding user and run it as non-root user
RUN useradd --create-home -s /bin/bash appuser
WORKDIR /home/appuser
USER appuser