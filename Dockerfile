#
# docker build -t madkote/web-speech-ai .
#
# docker run -p 5000:5000 -d madkote/web-speech-ai
#

FROM node
ENV NPM_CONFIG_LOGLEVEL info
RUN mkdir -p /usr/src/app
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN ls -la
RUN npm install
RUN ls -la
EXPOSE 5000

# CMD ["webpack-dev-server" "--config" "webpack.dev.js"]
CMD [ "node", "index.js" ]
# CMD [ "npm", "start" ]

