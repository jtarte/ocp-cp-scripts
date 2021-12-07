echo ""
echo "OpenShift GitOps"
echo "console url: https://"$(oc get route openshift-gitops-server -n openshift-gitops -o jsonpath='{.spec.host}')
echo "user: admin"
echo "password: "$(oc get secret openshift-gitops-cluster -n openshift-gitops -o jsonpath='{.data.admin\.password}' | base64 -d)
echo ""
