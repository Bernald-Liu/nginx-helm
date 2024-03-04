{{/* Define the 'nginx.fullname' named template */}}
{{- define "nginx.fullname" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{/* Define the 'nginx.labels' named template */}}
{{- define "nginx.labels" -}}
app.kubernetes.io/name: {{ include "nginx.fullname" . }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/* Define the 'nginx.selectorLabels' named template */}}
{{- define "nginx.selectorLabels" -}}
app.kubernetes.io/name: {{ include "nginx.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
