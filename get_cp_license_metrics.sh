echo "Getting information from IBM Cloud Pak License server"

ROUTE=$(oc get route ibm-licensing-service-instance -n ibm-common-services -o jsonpath='{.spec.host}')
TOKEN=$(oc get secret ibm-licensing-token -n ibm-common-services -o jsonpath='{.data.token}' | base64 -d)

echo "Getting snapshot information"
curl curl -k "https://$ROUTE/snapshot?token=$TOKEN" > snapshot.zip
echo "Getting products information"
curl curl -k "https://$ROUTE/products?token=$TOKEN" > products.json
echo "Getting bundled products information"
curl curl -k "https://$ROUTE/bundled_products?token=$TOKEN" > bundled_products.json

