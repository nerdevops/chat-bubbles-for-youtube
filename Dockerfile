FROM node:lts-alpine3.20 as build
WORKDIR /app
COPY . .
RUN npm install 
# To do 
# FROM nginx
# COPY --from=0 /app/dist/* /usr/share/nginx/html
# CMD ["nginx", "-g", "daemon off;"]

CMD [ "npm", "run", "dev" ]