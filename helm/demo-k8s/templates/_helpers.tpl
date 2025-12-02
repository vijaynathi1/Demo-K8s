{{/* Common helpers for demo-k8s */}}

{{- define "demo-k8s.name" -}}
{{- default .Chart.Name .Values.nameOverride -}}
{{- end -}}

{{- define "demo-k8s.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- printf "%s" .Values.fullnameOverride -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "demo-k8s.labels" -}}
app.kubernetes.io/name: {{ include "demo-k8s.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version }}
{{- end -}}

