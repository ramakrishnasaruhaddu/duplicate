FROM requarks/wiki:2
WORKDIR /duplicate
ENV DB_TYPE postgres
ENV DB_SSL 1
COPY package*.json .
COPY . .
RUN npm install
EXPOSE 80
CMD ["node", "server"]

