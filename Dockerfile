FROM fusuf/whatsasena:latest

RUN git clone https://github.com/prince-rudh/Rudhra2.0 /root/Rudhra
WORKDIR /root/Rudhra
ENV TZ=Asia/Kolkata
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "index.js"]
