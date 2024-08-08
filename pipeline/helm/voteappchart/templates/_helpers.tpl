{{/*
Override various naming aspects of this chart
Only edit these if you know what you're doing
*/}}

{{/*
Expand the name of the chart.
*/}}
{{- define "voteapp.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "voteapp.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "voteapp.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Application Names
*/}}

{{- define "db.fullname" -}}
db
{{- end }}

{{- define "redis.fullname" -}}
redis
{{- end }}

{{- define "result.fullname" -}}
result
{{- end }}

{{- define "vote.fullname" -}}
vote
{{- end }}

{{- define "worker.fullname" -}}
worker
{{- end }}

{{/*
Common labels
*/}}
{{- define "db.labels" -}}
helm.sh/chart: {{ include "voteapp.chart" . }}
{{ include "db.selectorLabels" . }}
{{- if .Chart.AppVersion }}
version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "redis.labels" -}}
helm.sh/chart: {{ include "voteapp.chart" . }}
{{ include "redis.selectorLabels" . }}
{{- if .Chart.AppVersion }}
version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "result.labels" -}}
helm.sh/chart: {{ include "voteapp.chart" . }}
{{ include "result.selectorLabels" . }}
{{- if .Chart.AppVersion }}
version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "vote.labels" -}}
helm.sh/chart: {{ include "voteapp.chart" . }}
{{ include "vote.selectorLabels" . }}
{{- if .Chart.AppVersion }}
version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "worker.labels" -}}
helm.sh/chart: {{ include "voteapp.chart" . }}
{{ include "worker.selectorLabels" . }}
{{- if .Chart.AppVersion }}
version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "db.selectorLabels" -}}
app.kubernetes.io/name: {{ include "db.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "redis.selectorLabels" -}}
app.kubernetes.io/name: {{ include "redis.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "result.selectorLabels" -}}
app.kubernetes.io/name: {{ include "result.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "vote.selectorLabels" -}}
app.kubernetes.io/name: {{ include "vote.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "worker.selectorLabels" -}}
app.kubernetes.io/name: {{ include "worker.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
