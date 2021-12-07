echo ""
echo "IBM Cloud Pak console"
echo "console url: https://"$(oc get route cp-console -n ibm-common-services -o jsonpath='{.spec.host}')
echo "user: "$(oc get secret platform-auth-idp-credentials -n ibm-common-services -o jsonpath='{.data.admin_username}' | base64 -d)
echo "password: "$(oc get secret platform-auth-idp-credentials -n ibm-common-services -o jsonpath='{.data.admin_password}' | base64 -d)
echo ""
