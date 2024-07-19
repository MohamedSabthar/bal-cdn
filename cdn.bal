import ballerina/http;

service on new http:Listener(9007) {
    private json superGraphConfig = {
    "engineConfig": {
        "defaultFlushInterval": "500",
        "datasourceConfigurations": [
            {
                "kind": "GRAPHQL",
                "rootNodes": [
                    {
                        "typeName": "Query",
                        "fieldNames": [
                            "products",
                            "product"
                        ]
                    },
                    {
                        "typeName": "Product",
                        "fieldNames": [
                            "id",
                            "name",
                            "description",
                            "price"
                        ]
                    }
                ],
                "overrideFieldPathFromAlias": true,
                "customGraphql": {
                    "fetch": {
                        "url": {
                            "staticVariableContent": "https://cc96a671-e314-4839-bfd1-71c5e473a0c1-prod.e1-us-east-azure.choreoapis.dev/wunder/product-subgraph/v1"
                        },
                        "method": "POST",
                        "body": {},
                        "baseUrl": {},
                        "path": {}
                    },
                    "subscription": {
                        "enabled": true,
                        "url": {
                            "staticVariableContent": "https://cc96a671-e314-4839-bfd1-71c5e473a0c1-prod.e1-us-east-azure.choreoapis.dev/wunder/product-subgraph/v1/"
                        },
                        "protocol": "GRAPHQL_SUBSCRIPTION_PROTOCOL_WS",
                        "websocketSubprotocol": "GRAPHQL_WEBSOCKET_SUBPROTOCOL_AUTO"
                    },
                    "federation": {
                        "enabled": true,
                        "serviceSdl": "extend schema @link(url: \"https://specs.apollo.dev/federation/v2.0\", import: [\"@external\" ,\"@requires\" ,\"@provides\" ,\"@key\" ,\"@shareable\" ,\"@inaccessible\" ,\"@tag\" ,\"@override\" ,\"@extends\" ,\"FieldSet\"], as: \"\") \n\ndirective @external on FIELD_DEFINITION|OBJECT\n\ndirective @requires(fields: FieldSet!) on FIELD_DEFINITION\n\ndirective @provides(fields: FieldSet!) on FIELD_DEFINITION\n\ndirective @key(fields: FieldSet!, resolvable: Boolean = true) repeatable on OBJECT|INTERFACE\n\ndirective @link(url: String!, as: String, for: link__Purpose, import: [link__Import]) repeatable on SCHEMA\n\ndirective @shareable on OBJECT|FIELD_DEFINITION\n\ndirective @inaccessible on FIELD_DEFINITION|OBJECT|INTERFACE|UNION|ARGUMENT_DEFINITION|SCALAR|ENUM|ENUM_VALUE|INPUT_OBJECT|INPUT_FIELD_DEFINITION\n\ndirective @tag(name: String!) repeatable on FIELD_DEFINITION|OBJECT|INTERFACE|UNION|ARGUMENT_DEFINITION|SCALAR|ENUM|ENUM_VALUE|INPUT_OBJECT|INPUT_FIELD_DEFINITION\n\ndirective @override(from: String!) on FIELD_DEFINITION\n\ndirective @composeDirective(name: String!) repeatable on SCHEMA\n\ndirective @extends on OBJECT|INTERFACE\n\ntype Query {\n  \"Returns the list of products\"\n  products: [Product!]!\n  \"Returns the product for the given id. If the product does not exist, returns null\"\n  product(\n    \"ID of the product to be retrieved\"\n    id: ID!\n  ): Product\n  _service: _Service!\n  _entities(representations: [_Any!]!): [_Entity]!\n}\n\n\"Represents a product in the system\"\ntype Product @key(fields: \"id\") {\n  \"The unique ID of the product\"\n  id: ID!\n  \"The name of the product\"\n  name: String!\n  \"The description of the product\"\n  description: String!\n  \"The price of the product\"\n  price: Float!\n}\n\n\"The `ID` scalar type is a unique identifier that is serialized as a string. It is commonly represented as a string, integer, or UUID.\"\nscalar ID\n\nscalar _Any\n\nscalar FieldSet\n\nscalar link__Import\n\nenum link__Purpose {\n  \"`EXECUTION` features provide metadata necessary for operation execution.\"\n  EXECUTION\n  \"`SECURITY` features provide metadata necessary to securely resolve fields.\"\n  SECURITY\n}\n\ntype _Service {\n  sdl: String!\n}\n\nunion _Entity = Product"
                    },
                    "upstreamSchema": {
                        "key": "d98032b94b57ea2d7cf2412c598f2830a5e5b31a"
                    }
                },
                "requestTimeoutSeconds": "10",
                "id": "0",
                "keys": [
                    {
                        "typeName": "Product",
                        "selectionSet": "id"
                    }
                ]
            },
            {
                "kind": "GRAPHQL",
                "rootNodes": [
                    {
                        "typeName": "Query",
                        "fieldNames": [
                            "users"
                        ]
                    },
                    {
                        "typeName": "User",
                        "fieldNames": [
                            "id",
                            "name",
                            "email"
                        ]
                    }
                ],
                "overrideFieldPathFromAlias": true,
                "customGraphql": {
                    "fetch": {
                        "url": {
                            "staticVariableContent": "https://cc96a671-e314-4839-bfd1-71c5e473a0c1-prod.e1-us-east-azure.choreoapis.dev/wunder/user-subgraph/v1"
                        },
                        "method": "POST",
                        "body": {},
                        "baseUrl": {},
                        "path": {}
                    },
                    "subscription": {
                        "enabled": true,
                        "url": {
                            "staticVariableContent": "https://cc96a671-e314-4839-bfd1-71c5e473a0c1-prod.e1-us-east-azure.choreoapis.dev/wunder/user-subgraph/v1/"
                        },
                        "protocol": "GRAPHQL_SUBSCRIPTION_PROTOCOL_WS",
                        "websocketSubprotocol": "GRAPHQL_WEBSOCKET_SUBPROTOCOL_AUTO"
                    },
                    "federation": {
                        "enabled": true,
                        "serviceSdl": "extend schema @link(url: \"https://specs.apollo.dev/federation/v2.0\", import: [\"@external\" ,\"@requires\" ,\"@provides\" ,\"@key\" ,\"@shareable\" ,\"@inaccessible\" ,\"@tag\" ,\"@override\" ,\"@extends\" ,\"FieldSet\"], as: \"\") \n\ndirective @external on FIELD_DEFINITION|OBJECT\n\ndirective @requires(fields: FieldSet!) on FIELD_DEFINITION\n\ndirective @provides(fields: FieldSet!) on FIELD_DEFINITION\n\ndirective @key(fields: FieldSet!, resolvable: Boolean = true) repeatable on OBJECT|INTERFACE\n\ndirective @link(url: String!, as: String, for: link__Purpose, import: [link__Import]) repeatable on SCHEMA\n\ndirective @shareable on OBJECT|FIELD_DEFINITION\n\ndirective @inaccessible on FIELD_DEFINITION|OBJECT|INTERFACE|UNION|ARGUMENT_DEFINITION|SCALAR|ENUM|ENUM_VALUE|INPUT_OBJECT|INPUT_FIELD_DEFINITION\n\ndirective @tag(name: String!) repeatable on FIELD_DEFINITION|OBJECT|INTERFACE|UNION|ARGUMENT_DEFINITION|SCALAR|ENUM|ENUM_VALUE|INPUT_OBJECT|INPUT_FIELD_DEFINITION\n\ndirective @override(from: String!) on FIELD_DEFINITION\n\ndirective @composeDirective(name: String!) repeatable on SCHEMA\n\ndirective @extends on OBJECT|INTERFACE\n\ntype Query {\n  \"Returns the list of users\"\n  users: [User!]!\n  _service: _Service!\n  _entities(representations: [_Any!]!): [_Entity]!\n}\n\n\"Represents a user in the system\"\ntype User @key(fields: \"id\") {\n  \"The unique identifier for the user\"\n  id: ID!\n  \"The name of the user\"\n  name: String!\n  \"The email of the user\"\n  email: String!\n}\n\n\"The `ID` scalar type is a unique identifier that is serialized as a string. It is commonly represented as a string, integer, or UUID.\"\nscalar ID\n\nscalar _Any\n\nscalar FieldSet\n\nscalar link__Import\n\nenum link__Purpose {\n  \"`EXECUTION` features provide metadata necessary for operation execution.\"\n  EXECUTION\n  \"`SECURITY` features provide metadata necessary to securely resolve fields.\"\n  SECURITY\n}\n\ntype _Service {\n  sdl: String!\n}\n\nunion _Entity = User"
                    },
                    "upstreamSchema": {
                        "key": "35a8c4db5cf5593019c5a7dbd605d40ddc7c53a2"
                    }
                },
                "requestTimeoutSeconds": "10",
                "id": "1",
                "keys": [
                    {
                        "typeName": "User",
                        "selectionSet": "id"
                    }
                ]
            },
            {
                "kind": "GRAPHQL",
                "rootNodes": [
                    {
                        "typeName": "Query",
                        "fieldNames": [
                            "reviews"
                        ]
                    },
                    {
                        "typeName": "User",
                        "fieldNames": [
                            "id",
                            "reviews"
                        ]
                    },
                    {
                        "typeName": "Product",
                        "fieldNames": [
                            "id",
                            "reviews"
                        ]
                    },
                    {
                        "typeName": "Mutation",
                        "fieldNames": [
                            "addReview"
                        ]
                    }
                ],
                "childNodes": [
                    {
                        "typeName": "Review",
                        "fieldNames": [
                            "id",
                            "title",
                            "comment",
                            "rating",
                            "author",
                            "product"
                        ]
                    }
                ],
                "overrideFieldPathFromAlias": true,
                "customGraphql": {
                    "fetch": {
                        "url": {
                            "staticVariableContent": "https://cc96a671-e314-4839-bfd1-71c5e473a0c1-prod.e1-us-east-azure.choreoapis.dev/wunder/review-subgraph/v1"
                        },
                        "method": "POST",
                        "body": {},
                        "baseUrl": {},
                        "path": {}
                    },
                    "subscription": {
                        "enabled": true,
                        "url": {
                            "staticVariableContent": "https://cc96a671-e314-4839-bfd1-71c5e473a0c1-prod.e1-us-east-azure.choreoapis.dev/wunder/review-subgraph/v1/"
                        },
                        "protocol": "GRAPHQL_SUBSCRIPTION_PROTOCOL_WS",
                        "websocketSubprotocol": "GRAPHQL_WEBSOCKET_SUBPROTOCOL_AUTO"
                    },
                    "federation": {
                        "enabled": true,
                        "serviceSdl": "extend schema @link(url: \"https://specs.apollo.dev/federation/v2.0\", import: [\"@key\" ,\"FieldSet\"]) \n\ndirective @key(fields: FieldSet!, resolvable: Boolean = true) repeatable on OBJECT|INTERFACE\n\ndirective @link(url: String!, as: String, for: link__Purpose, import: [link__Import]) repeatable on SCHEMA\n\ntype Query {\n  \"Returns a list of reviews\"\n  reviews: [Review!]!\n  _service: _Service!\n  _entities(representations: [_Any!]!): [_Entity]!\n}\n\ntype Review {\n  \"The ID of the review\"\n  id: ID!\n  \"The title of the review\"\n  title: String!\n  \"The review comment\"\n  comment: String!\n  \"The rating of the review (0 to 5)\"\n  rating: Int!\n  \"The author of the review\"\n  author: User!\n  \"The product that the review is for\"\n  product: Product!\n}\n\ntype User @key(fields: \"id\") {\n  id: ID!\n  reviews: [Review!]!\n}\n\ntype Product @key(fields: \"id\") {\n  id: ID!\n  reviews: [Review!]!\n}\n\ntype Mutation {\n  \"Adds a new review\"\n  addReview(\n    \"The review to be added.\"\n    input: ReviewInput!\n  ): Review!\n}\n\n\"The input type for the addReview mutation\"\ninput ReviewInput {\n  \"The title of the review\"\n  title: String!\n  \"The comment of the review\"\n  comment: String!\n  \"The rating of the review. This is an integer between 0 and 5\"\n  rating: Int!\n  \"The ID of the review author\"\n  authorId: String!\n  \"The product ID that the review is for\"\n  productId: String!\n}\n\nscalar _Any\n\nscalar FieldSet\n\nscalar link__Import\n\nenum link__Purpose {\n  \"`EXECUTION` features provide metadata necessary for operation execution.\"\n  EXECUTION\n  \"`SECURITY` features provide metadata necessary to securely resolve fields.\"\n  SECURITY\n}\n\ntype _Service {\n  sdl: String!\n}\n\nunion _Entity = User|Product"
                    },
                    "upstreamSchema": {
                        "key": "10ab5c6ee7ac43a77615f9858155985c3013681b"
                    }
                },
                "requestTimeoutSeconds": "10",
                "id": "2",
                "keys": [
                    {
                        "typeName": "User",
                        "selectionSet": "id"
                    },
                    {
                        "typeName": "Product",
                        "selectionSet": "id"
                    }
                ]
            }
        ],
        "fieldConfigurations": [
            {
                "typeName": "Query",
                "fieldName": "product",
                "argumentsConfiguration": [
                    {
                        "name": "id",
                        "sourceType": "FIELD_ARGUMENT"
                    }
                ]
            },
            {
                "typeName": "Mutation",
                "fieldName": "addReview",
                "argumentsConfiguration": [
                    {
                        "name": "input",
                        "sourceType": "FIELD_ARGUMENT"
                    }
                ]
            }
        ],
        "graphqlSchema": "schema {\n  query: Query\n  mutation: Mutation\n}\n\ndirective @authenticated on ENUM | FIELD_DEFINITION | INTERFACE | OBJECT | SCALAR\n\ndirective @inaccessible on ARGUMENT_DEFINITION | ENUM | ENUM_VALUE | FIELD_DEFINITION | INPUT_FIELD_DEFINITION | INPUT_OBJECT | INTERFACE | OBJECT | SCALAR | UNION\n\ndirective @requiresScopes(scopes: [[openfed__Scope!]!]!) on ENUM | FIELD_DEFINITION | INTERFACE | OBJECT | SCALAR\n\ndirective @tag(name: String!) repeatable on ARGUMENT_DEFINITION | ENUM | ENUM_VALUE | FIELD_DEFINITION | INPUT_FIELD_DEFINITION | INPUT_OBJECT | INTERFACE | OBJECT | SCALAR | UNION\n\nscalar openfed__Scope\n\ntype Query {\n  \"\"\"Returns the list of products\"\"\"\n  products: [Product!]!\n  \"\"\"\n  Returns the product for the given id. If the product does not exist, returns null\n  \"\"\"\n  product(\n    \"\"\"ID of the product to be retrieved\"\"\"\n    id: ID!\n  ): Product\n  \"\"\"Returns the list of users\"\"\"\n  users: [User!]!\n  \"\"\"Returns a list of reviews\"\"\"\n  reviews: [Review!]!\n}\n\n\"\"\"Represents a product in the system\"\"\"\ntype Product {\n  \"\"\"The unique ID of the product\"\"\"\n  id: ID!\n  \"\"\"The name of the product\"\"\"\n  name: String!\n  \"\"\"The description of the product\"\"\"\n  description: String!\n  \"\"\"The price of the product\"\"\"\n  price: Float!\n  reviews: [Review!]!\n}\n\nscalar FieldSet\n\nscalar link__Import\n\nenum link__Purpose {\n  \"\"\"\n  `EXECUTION` features provide metadata necessary for operation execution.\n  \"\"\"\n  EXECUTION\n  \"\"\"\n  `SECURITY` features provide metadata necessary to securely resolve fields.\n  \"\"\"\n  SECURITY\n}\n\n\"\"\"Represents a user in the system\"\"\"\ntype User {\n  \"\"\"The unique identifier for the user\"\"\"\n  id: ID!\n  \"\"\"The name of the user\"\"\"\n  name: String!\n  \"\"\"The email of the user\"\"\"\n  email: String!\n  reviews: [Review!]!\n}\n\ntype Review {\n  \"\"\"The ID of the review\"\"\"\n  id: ID!\n  \"\"\"The title of the review\"\"\"\n  title: String!\n  \"\"\"The review comment\"\"\"\n  comment: String!\n  \"\"\"The rating of the review (0 to 5)\"\"\"\n  rating: Int!\n  \"\"\"The author of the review\"\"\"\n  author: User!\n  \"\"\"The product that the review is for\"\"\"\n  product: Product!\n}\n\ntype Mutation {\n  \"\"\"Adds a new review\"\"\"\n  addReview(\n    \"\"\"The review to be added.\"\"\"\n    input: ReviewInput!\n  ): Review!\n}\n\n\"\"\"The input type for the addReview mutation\"\"\"\ninput ReviewInput {\n  \"\"\"The title of the review\"\"\"\n  title: String!\n  \"\"\"The comment of the review\"\"\"\n  comment: String!\n  \"\"\"The rating of the review. This is an integer between 0 and 5\"\"\"\n  rating: Int!\n  \"\"\"The ID of the review author\"\"\"\n  authorId: String!\n  \"\"\"The product ID that the review is for\"\"\"\n  productId: String!\n}",
        "stringStorage": {
            "d98032b94b57ea2d7cf2412c598f2830a5e5b31a": "schema {\n  query: Query\n}\n\ndirective @authenticated on ENUM | FIELD_DEFINITION | INTERFACE | OBJECT | SCALAR\n\ndirective @composeDirective(name: String!) repeatable on SCHEMA\n\ndirective @extends on INTERFACE | OBJECT\n\ndirective @external on FIELD_DEFINITION | OBJECT\n\ndirective @inaccessible on ARGUMENT_DEFINITION | ENUM | ENUM_VALUE | FIELD_DEFINITION | INPUT_FIELD_DEFINITION | INPUT_OBJECT | INTERFACE | OBJECT | SCALAR | UNION\n\ndirective @interfaceObject on OBJECT\n\ndirective @key(fields: openfed__FieldSet!, resolvable: Boolean = true) repeatable on INTERFACE | OBJECT\n\ndirective @link(as: String, for: String, import: [String], url: String!) repeatable on SCHEMA\n\ndirective @override(from: String!) on FIELD_DEFINITION\n\ndirective @provides(fields: openfed__FieldSet!) on FIELD_DEFINITION\n\ndirective @requires(fields: openfed__FieldSet!) on FIELD_DEFINITION\n\ndirective @requiresScopes(scopes: [[openfed__Scope!]!]!) on ENUM | FIELD_DEFINITION | INTERFACE | OBJECT | SCALAR\n\ndirective @shareable on FIELD_DEFINITION | OBJECT\n\ndirective @tag(name: String!) repeatable on ARGUMENT_DEFINITION | ENUM | ENUM_VALUE | FIELD_DEFINITION | INPUT_FIELD_DEFINITION | INPUT_OBJECT | INTERFACE | OBJECT | SCALAR | UNION\n\nscalar FieldSet\n\n\"\"\"Represents a product in the system\"\"\"\ntype Product @key(fields: \"id\") {\n  \"\"\"The description of the product\"\"\"\n  description: String!\n  \"\"\"The unique ID of the product\"\"\"\n  id: ID!\n  \"\"\"The name of the product\"\"\"\n  name: String!\n  \"\"\"The price of the product\"\"\"\n  price: Float!\n}\n\ntype Query {\n  \"\"\"\n  Returns the product for the given id. If the product does not exist, returns null\n  \"\"\"\n  product(\n    \"\"\"ID of the product to be retrieved\"\"\"\n    id: ID!\n  ): Product\n  \"\"\"Returns the list of products\"\"\"\n  products: [Product!]!\n}\n\nscalar link__Import\n\nenum link__Purpose {\n  \"\"\"\n  `EXECUTION` features provide metadata necessary for operation execution.\n  \"\"\"\n  EXECUTION\n  \"\"\"\n  `SECURITY` features provide metadata necessary to securely resolve fields.\n  \"\"\"\n  SECURITY\n}\n\nscalar openfed__FieldSet\n\nscalar openfed__Scope",
            "35a8c4db5cf5593019c5a7dbd605d40ddc7c53a2": "schema {\n  query: Query\n}\n\ndirective @authenticated on ENUM | FIELD_DEFINITION | INTERFACE | OBJECT | SCALAR\n\ndirective @composeDirective(name: String!) repeatable on SCHEMA\n\ndirective @extends on INTERFACE | OBJECT\n\ndirective @external on FIELD_DEFINITION | OBJECT\n\ndirective @inaccessible on ARGUMENT_DEFINITION | ENUM | ENUM_VALUE | FIELD_DEFINITION | INPUT_FIELD_DEFINITION | INPUT_OBJECT | INTERFACE | OBJECT | SCALAR | UNION\n\ndirective @interfaceObject on OBJECT\n\ndirective @key(fields: openfed__FieldSet!, resolvable: Boolean = true) repeatable on INTERFACE | OBJECT\n\ndirective @link(as: String, for: String, import: [String], url: String!) repeatable on SCHEMA\n\ndirective @override(from: String!) on FIELD_DEFINITION\n\ndirective @provides(fields: openfed__FieldSet!) on FIELD_DEFINITION\n\ndirective @requires(fields: openfed__FieldSet!) on FIELD_DEFINITION\n\ndirective @requiresScopes(scopes: [[openfed__Scope!]!]!) on ENUM | FIELD_DEFINITION | INTERFACE | OBJECT | SCALAR\n\ndirective @shareable on FIELD_DEFINITION | OBJECT\n\ndirective @tag(name: String!) repeatable on ARGUMENT_DEFINITION | ENUM | ENUM_VALUE | FIELD_DEFINITION | INPUT_FIELD_DEFINITION | INPUT_OBJECT | INTERFACE | OBJECT | SCALAR | UNION\n\nscalar FieldSet\n\ntype Query {\n  \"\"\"Returns the list of users\"\"\"\n  users: [User!]!\n}\n\n\"\"\"Represents a user in the system\"\"\"\ntype User @key(fields: \"id\") {\n  \"\"\"The email of the user\"\"\"\n  email: String!\n  \"\"\"The unique identifier for the user\"\"\"\n  id: ID!\n  \"\"\"The name of the user\"\"\"\n  name: String!\n}\n\nscalar link__Import\n\nenum link__Purpose {\n  \"\"\"\n  `EXECUTION` features provide metadata necessary for operation execution.\n  \"\"\"\n  EXECUTION\n  \"\"\"\n  `SECURITY` features provide metadata necessary to securely resolve fields.\n  \"\"\"\n  SECURITY\n}\n\nscalar openfed__FieldSet\n\nscalar openfed__Scope",
            "10ab5c6ee7ac43a77615f9858155985c3013681b": "schema {\n  query: Query\n  mutation: Mutation\n}\n\ndirective @authenticated on ENUM | FIELD_DEFINITION | INTERFACE | OBJECT | SCALAR\n\ndirective @composeDirective(name: String!) repeatable on SCHEMA\n\ndirective @extends on INTERFACE | OBJECT\n\ndirective @external on FIELD_DEFINITION | OBJECT\n\ndirective @inaccessible on ARGUMENT_DEFINITION | ENUM | ENUM_VALUE | FIELD_DEFINITION | INPUT_FIELD_DEFINITION | INPUT_OBJECT | INTERFACE | OBJECT | SCALAR | UNION\n\ndirective @interfaceObject on OBJECT\n\ndirective @key(fields: openfed__FieldSet!, resolvable: Boolean = true) repeatable on INTERFACE | OBJECT\n\ndirective @link(as: String, for: String, import: [String], url: String!) repeatable on SCHEMA\n\ndirective @override(from: String!) on FIELD_DEFINITION\n\ndirective @provides(fields: openfed__FieldSet!) on FIELD_DEFINITION\n\ndirective @requires(fields: openfed__FieldSet!) on FIELD_DEFINITION\n\ndirective @requiresScopes(scopes: [[openfed__Scope!]!]!) on ENUM | FIELD_DEFINITION | INTERFACE | OBJECT | SCALAR\n\ndirective @shareable on FIELD_DEFINITION | OBJECT\n\ndirective @tag(name: String!) repeatable on ARGUMENT_DEFINITION | ENUM | ENUM_VALUE | FIELD_DEFINITION | INPUT_FIELD_DEFINITION | INPUT_OBJECT | INTERFACE | OBJECT | SCALAR | UNION\n\nscalar FieldSet\n\ntype Mutation {\n  \"\"\"Adds a new review\"\"\"\n  addReview(\n    \"\"\"The review to be added.\"\"\"\n    input: ReviewInput!\n  ): Review!\n}\n\ntype Product @key(fields: \"id\") {\n  id: ID!\n  reviews: [Review!]!\n}\n\ntype Query {\n  \"\"\"Returns a list of reviews\"\"\"\n  reviews: [Review!]!\n}\n\ntype Review {\n  \"\"\"The author of the review\"\"\"\n  author: User!\n  \"\"\"The review comment\"\"\"\n  comment: String!\n  \"\"\"The ID of the review\"\"\"\n  id: ID!\n  \"\"\"The product that the review is for\"\"\"\n  product: Product!\n  \"\"\"The rating of the review (0 to 5)\"\"\"\n  rating: Int!\n  \"\"\"The title of the review\"\"\"\n  title: String!\n}\n\n\"\"\"The input type for the addReview mutation\"\"\"\ninput ReviewInput {\n  \"\"\"The ID of the review author\"\"\"\n  authorId: String!\n  \"\"\"The comment of the review\"\"\"\n  comment: String!\n  \"\"\"The product ID that the review is for\"\"\"\n  productId: String!\n  \"\"\"The rating of the review. This is an integer between 0 and 5\"\"\"\n  rating: Int!\n  \"\"\"The title of the review\"\"\"\n  title: String!\n}\n\ntype User @key(fields: \"id\") {\n  id: ID!\n  reviews: [Review!]!\n}\n\nscalar link__Import\n\nenum link__Purpose {\n  \"\"\"\n  `EXECUTION` features provide metadata necessary for operation execution.\n  \"\"\"\n  EXECUTION\n  \"\"\"\n  `SECURITY` features provide metadata necessary to securely resolve fields.\n  \"\"\"\n  SECURITY\n}\n\nscalar openfed__FieldSet\n\nscalar openfed__Scope"
        }
    },
    "version": "c2cd322223a9fe5660f0b3303912875c6fcf4845",
    "subgraphs": [
        {
            "id": "0",
            "name": "products",
            "routingUrl": "https://cc96a671-e314-4839-bfd1-71c5e473a0c1-prod.e1-us-east-azure.choreoapis.dev/wunder/product-subgraph/v1"
        },
        {
            "id": "1",
            "name": "users",
            "routingUrl": "https://cc96a671-e314-4839-bfd1-71c5e473a0c1-prod.e1-us-east-azure.choreoapis.dev/wunder/user-subgraph/v1"
        },
        {
            "id": "2",
            "name": "reviews",
            "routingUrl": "https://cc96a671-e314-4839-bfd1-71c5e473a0c1-prod.e1-us-east-azure.choreoapis.dev/wunder/review-subgraph/v1"
        }
    ]
};
    resource function post [string organization_id]/[string federated_graph_id]/routerconfigs/latest\.json() returns http:Ok|error {
        return {body: self.superGraphConfig};
    }

    resource function post set(@http:Payload json superGraphConfig) returns http:Ok|error {
        self.superGraphConfig = superGraphConfig;
        return {body: superGraphConfig};
    }
}
