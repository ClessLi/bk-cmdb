{{/* vim: set filetype=mustache: */}}
{{/*
Return the calico ipv4 pools annotations
{{ include "common.cni.calicoIpv4Pools" ( dict "annotationKey" .annotation.key "global" .global $) }}
*/}}
{{- define "common.cni.calicoIpv4Pools" -}}
{{- $annotationKey := .annotationKey | default "cni.projectcalico.org/ipv4pools" -}}
{{- $poolsString := "" -}}
{{- if .global.cni.calico.ipv4pools }}
{{- printf "%s: '[\"%s\"]'" $annotationKey ( join "\", \"" .global.cni.calico.ipv4pools ) }}
{{- end }}
{{- end -}}