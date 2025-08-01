{{/*
Name of the cluster, falls back to fullname
*/}}
{{- define "kamaji-cluster.clusterName" -}}
{{ default (include "kamaji-cluster.fullname" .) .Values.cluster.name }}
{{- end -}}

{{/*
Group name from OIDC mapped to cluster-admin
*/}}
{{- define "kamaji-cluster.oidcAdminGroup" -}}
{{- if .Values.oidc.adminGroup -}}
{{- .Values.oidc.adminGroup -}}
{{- else -}}
{{- printf "cluster-%s" (include "kamaji-cluster.clusterName" .) -}}
{{- end -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "kamaji-cluster.fullname" -}}
{{- if contains .Chart.Name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "kamaji-cluster.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create basic labels
*/}}
{{- define "kamaji-cluster.labels" -}}
helm.sh/chart: "{{ include "kamaji-cluster.chart" . }}"
app.kubernetes.io/name: "{{ include "kamaji-cluster.fullname" . }}"
app.kubernetes.io/instance: "{{ .Release.Name }}"
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
{{- with .Values.labels }}
{{ toYaml . }}
{{- end }}
{{- end -}}
