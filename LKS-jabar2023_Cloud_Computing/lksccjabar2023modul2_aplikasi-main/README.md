# lksccjabar2023modul2_aplikasi
This repository contains 2 scripts:
- `url-rewrite/`: A CloudFront function to rewrite the request.
- `image-processing/`: A lambda function to handle the image transformation request.

## Instruction
- Before creating a lambda deployment package, run `npm run install-sharp` to install sharp for the image processing lambda function.
- The image processing lambda function requires the following environment variables:
    - `originalImageBucketName`: Original image bucket name
    - `transformedImageBucketName`: Transformed image bucket name
    - `transformedImageCacheTTL`: Transformed image cache-control
    - `secretKey`: Secret key used in the request to the lambda via `x-origin-secret-header` header
    - `logTiming`: Boolean, whether you want to log the time to process the request
- Create an IAM policy called `image-optimization-lambda-policy` with the following permission:
    - Allow `s3:PutObject` action to transformed image bucket
    - Allow `s3:GetObject` action to original image bucket
- The lambda function role should consist of only the following policies:
    - `image-optimization-lambda-policy`
    - `AWSLambdaBasicExecutionRole` (AWS-managed policies)
