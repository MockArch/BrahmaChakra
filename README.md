# BrahamaChakra

BrahamaChakra is a simple cache API written in Golang and designed to be used as a standalone service or as part of a larger application. It uses a persistent SQLite database for storing key-value pairs and supports expiration of keys with a configurable time-to-live (TTL).

## Getting Started

### Prerequisites

- Golang 1.16 or later
- SQLite 3.26 or later

### Installing

1. Clone the repository and navigate to the project directory:
    ```git clone https://github.com/yourusername/BrahamaChakra.git
    cd BrahamaChakra```
2. Build the binary with Go:
    ```go build -o cache-api```
3. Initialize the cache with a new SQLite database:
    ```
    ./cache-api init
    ```
4. Start the cache API server:
    ```
    ./cache-api serve
    ```

API Reference

The cache API supports the following endpoints:

    GET /cache/:key: Retrieve the value associated with the specified key.
    POST /cache/:key: Set the value associated with the specified key.
    DELETE /cache/:key: Delete the value associated with the specified key.

Request Parameters

All requests to the cache API must include the following headers:

    Content-Type: The content type of the request body. This should be set to application/json.
    Accept: The content type of the response body. This should be set to application/json.

Response Format

All responses from the cache API will be in JSON format and will have the following structure:
json

{
  "key": "<string>",
  "value": "<any>",
  "error": "<string>"
}

    key: The key associated with the response. This will be the same as the key specified in the request.
    value: The value associated with the key. This will be present in successful responses and may be any JSON-encodable type.
    error: An error message if the request failed. This will be present in error responses and may be any string.

Contributing

Contributions to BrahamaChakra are welcome! If you find a bug or have an idea for a new feature, please open an issue or submit a pull request.
License