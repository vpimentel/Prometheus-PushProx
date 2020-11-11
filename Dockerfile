FROM alpine
COPY pushprox-proxy /app/pushprox-proxy 
EXPOSE 8080
CMD ["sh", "-c", "/app/pushprox-proxy $OPTIONS"]