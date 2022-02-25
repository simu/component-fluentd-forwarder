local kap = import 'lib/kapitan.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.fluentd_forwarder;
local argocd = import 'lib/argocd.libjsonnet';

local app = argocd.App('fluentd-forwarder', params.namespace);

{
  'fluentd-forwarder': app,
}
