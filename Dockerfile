FROM nginx:alpine
RUN rm -f /usr/share/nginx/html/index.html
COPY index.html privacy.html terms.html thank-you.html robots.txt sitemap.xml /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80