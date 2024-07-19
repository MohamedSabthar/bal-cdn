import ballerina/http;

service on new http:Listener(9007) {
    private json superGraphConfig = ();
    resource function post [string organization_id]/[string federated_graph_id]/routerconfigs/latest\.json() returns http:Ok|error {
        return {body: self.superGraphConfig};
    }

    resource function post set(@http:Payload json superGraphConfig) returns http:Ok|error {
        self.superGraphConfig = superGraphConfig;
        return {body: superGraphConfig};
    }
}
