FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

# Copy built app from dist folder
COPY dist/ /usr/share/nginx/html/

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
