FROM gcc:8.1.0
ADD brain.c .
RUN gcc brain.c -static -o brain

FROM scratch
COPY --from=0 brain .
CMD ["./brain"]
