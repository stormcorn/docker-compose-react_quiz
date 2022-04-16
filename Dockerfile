FROM node:16.14.2-alpine
WORKDIR /react_quiz
ENV PATH="./node_modules/.bin:$PATH"
COPY . .
RUN npm i
RUN npm run build
CMD ["npm", "start"]
