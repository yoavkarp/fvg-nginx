FROM nginx:alpine

# Standalone reverse proxy: replace the default config with ours
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 3000 3001

CMD ["nginx", "-g", "daemon off;"]
