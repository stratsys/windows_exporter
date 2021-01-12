module github.com/prometheus-community/windows_exporter

go 1.15

require (
	github.com/Microsoft/go-winio v0.4.15
	github.com/Microsoft/hcsshim v0.8.10
	github.com/StackExchange/wmi v0.0.0-20190523213315-cbe66965904d
	github.com/dimchansky/utfbom v1.1.1
	github.com/elastic/go-sysinfo v1.4.0
	github.com/elastic/go-windows v1.0.1
	github.com/go-ole/go-ole v1.2.4 // indirect
	github.com/google/go-cmp v0.5.1 // indirect
	github.com/leoluk/perflib_exporter v0.1.0
	github.com/prometheus/client_golang v1.8.0
	github.com/prometheus/client_model v0.2.0
	github.com/prometheus/common v0.15.0
	golang.org/x/sys v0.0.0-20201116161645-c061ba923fbb
	gopkg.in/alecthomas/kingpin.v2 v2.2.6
	gopkg.in/yaml.v2 v2.3.0
)
