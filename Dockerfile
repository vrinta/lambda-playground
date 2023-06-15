FROM public.ecr.aws/lambda/provided:al2-arm64

# Copy custom runtime bootstrap
#COPY bootstrap ${LAMBDA_RUNTIME_DIR}
# Copy function code
#COPY function.sh ${LAMBDA_TASK_ROOT}

#COPY ./target/lambda/lambda-playground/bootstrap.zip ${LAMBDA_RUNTIME_DIR}

COPY ./target/lambda/lambda-playground/bootstrap ${LAMBDA_RUNTIME_DIR}

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "hello.handler" ]
