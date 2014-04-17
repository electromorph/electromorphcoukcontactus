# SharePoint references that need to remove when uninstall
$ReferencesToRemoveWhenUninstall = @(
    @("Microsoft.SharePoint.Client"),
    @("Microsoft.SharePoint.Client.Runtime")
)

# SharePoint references that need to be copy local
$CopyLocalReferences = @(
    @("Microsoft.IdentityModel"),
    @("Microsoft.IdentityModel.Extensions"),
    @("Microsoft.SharePoint.Client"),
    @("Microsoft.SharePoint.Client.Runtime")
)

# Imports needed for VB project
$VbImports = @(
    "Microsoft.SharePoint.Client"
)

Export-ModuleMember -Variable @( 'ReferencesToRemoveWhenUninstall', 'CopyLocalReferences', 'VbImports' )

# SIG # Begin signature block
# MIIhfwYJKoZIhvcNAQcCoIIhcDCCIWwCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDfXQXXaldhpajC
# LkN7qEqSYxTBoeFu3JK1KsbUAxYn0aCCCzAwggS4MIIDoKADAgECAhMzAAAAFhEE
# tIg4jL7DAAAAAAAWMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTAwHhcNMTIwODMwMTc0OTAzWhcNMTMxMTMwMTc0OTAzWjCBgzEL
# MAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1v
# bmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjENMAsGA1UECxMETU9Q
# UjEeMBwGA1UEAxMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMIIBIjANBgkqhkiG9w0B
# AQEFAAOCAQ8AMIIBCgKCAQEAoFCfHU6UugcK3L6WSeE9oAbvlb75vVYqW5zvHhEu
# xtbhLbJvzDMtnh6ksYIWymQxqYomgfTjLvIeDhzI4Vnh1CM9ZXf/6uW3s40I9hLX
# b0lXpIXjBB7QQqinstswChXRyTVtf7yGXqU+tpBkBSQcPqBxaAox937Ulektm8pl
# BXoUAgwJ9rPdcV0mH1oLLwm6ZzJsnBXYnDyJ6Ec676YU30I+IR67MeIs0VT26oCS
# K5M0d22SZyY2wSox23gTSauTldxsqgwAccDNzd1j7ZFXl6+MKoTF3g11ZYzg0R9B
# O7u1ktJpOXWYAExsTD0YQwPOZjucXU5ReJFCO37QWuBfQwIDAQABo4IBJzCCASMw
# HwYDVR0lBBgwFgYIKwYBBQUHAwMGCisGAQQBgjc9BgEwHQYDVR0OBBYEFGvZ8Xb4
# o3g0pPdGnifxsLlszzamMB8GA1UdIwQYMBaAFOb8X3u7IgBY5HJOtfQhdCMy5u+s
# MFYGA1UdHwRPME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kv
# Y3JsL3Byb2R1Y3RzL01pY0NvZFNpZ1BDQV8yMDEwLTA3LTA2LmNybDBaBggrBgEF
# BQcBAQROMEwwSgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9w
# a2kvY2VydHMvTWljQ29kU2lnUENBXzIwMTAtMDctMDYuY3J0MAwGA1UdEwEB/wQC
# MAAwDQYJKoZIhvcNAQELBQADggEBAFJC8724+Xy7MrKL26QtkBCpQrdInr35S1zM
# IWCkvYCXYy4qifab1rwikgFznoP78otrvTBa7O0wPu7I4X+oNyn3TB+t3iPXKm0l
# CtEwPkPxqrVFOKtuROPQoQMz11o05SExK44oLnjtZXIHh7X+vBbErC9ky6LNyeoH
# anVi68zmZqk8wTI5xdHAbGv6BTwrbbP7R/26vByAXRKG1Cva0iwoMn1XBYQngR/w
# QWVSAfBqr3kNuO3AY6dE1vmeAlVFDnheXNsAeullJHMSeLZQ+TYmSJQE7dhA1eE9
# QzcfmEWdLOM22nMwVJdqHiBcE/kO2Iwwtus+dYSl62OSCi1JS7YwggZwMIIEWKAD
# AgECAgphDFJMAAAAAAADMA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJVUzET
# MBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMV
# TWljcm9zb2Z0IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9vdCBD
# ZXJ0aWZpY2F0ZSBBdXRob3JpdHkgMjAxMDAeFw0xMDA3MDYyMDQwMTdaFw0yNTA3
# MDYyMDUwMTdaMH4xCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAw
# DgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24x
# KDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTAwggEiMA0G
# CSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDpDmRQeWe1xOP9CQBMnpSs91Zo6kTY
# z8VYT6mldnxtRbrTOZK0pB75+WWC5BfSj/1EnAjoZZPOLFWEv30I4y4rqEErGLei
# S25JTGsVB97R0sKJHnGUzbV/S7SvCNjMiNZrF5Q6k84mP+zm/jSYV9UdXUn2siou
# 1YW7WT/4kLQrg3TKK7M7RuPwRknBF2ZUyRy9HcRVYldy+Ge5JSA03l2mpZVeqyiA
# zdWynuUDtWPTshTIwciKJgpZfwfs/w7tgBI1TBKmvlJb9aba4IsLSHfWhUfVELnG
# 6Krui2otBVxgxrQqW5wjHF9F4xoUHm83yxkzgGqJTaNqZmN4k9Uwz5UfAgMBAAGj
# ggHjMIIB3zAQBgkrBgEEAYI3FQEEAwIBADAdBgNVHQ4EFgQU5vxfe7siAFjkck61
# 9CF0IzLm76wwGQYJKwYBBAGCNxQCBAweCgBTAHUAYgBDAEEwCwYDVR0PBAQDAgGG
# MA8GA1UdEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAU1fZWy4/oolxiaNE9lJBb186a
# GMQwVgYDVR0fBE8wTTBLoEmgR4ZFaHR0cDovL2NybC5taWNyb3NvZnQuY29tL3Br
# aS9jcmwvcHJvZHVjdHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3JsMFoGCCsG
# AQUFBwEBBE4wTDBKBggrBgEFBQcwAoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29t
# L3BraS9jZXJ0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcnQwgZ0GA1UdIASB
# lTCBkjCBjwYJKwYBBAGCNy4DMIGBMD0GCCsGAQUFBwIBFjFodHRwOi8vd3d3Lm1p
# Y3Jvc29mdC5jb20vUEtJL2RvY3MvQ1BTL2RlZmF1bHQuaHRtMEAGCCsGAQUFBwIC
# MDQeMiAdAEwAZQBnAGEAbABfAFAAbwBsAGkAYwB5AF8AUwB0AGEAdABlAG0AZQBu
# AHQALiAdMA0GCSqGSIb3DQEBCwUAA4ICAQAadO9XTyl7xBaFeLhQ0yL8CZ2sgpf4
# NP8qLJeVEuXkv8+/k8jjNKnbgbjcHgC+0jVvr+V/eZV35QLU8evYzU4eG2Giwloj
# GvCMqGJRRWcI4z88HpP4MIUXyDlAptcOsyEp5aWhaYwik8x0mOehR0PyU6zADzBp
# f/7SJSBtb2HT3wfV2XIALGmGdj1R26Y5SMk3YW0H3VMZy6fWYcK/4oOrD+Brm5XW
# fShRsIlKUaSabMi3H0oaDmmp19zBftFJcKq2rbtyR2MX+qbWoqaG7KgQRJtjtrJp
# iQbHRoZ6GD/oxR0h1Xv5AiMtxUHLvx1MyBbvsZx//CJLSYpuFeOmf3Zb0VN5kYWd
# 1dLbPXM18zyuVLJSR2rAqhOV0o4R2plnXjKM+zeF0dx1hZyHxlpXhcK/3Q2PjJst
# 67TuzyfTtV5p+qQWBAGnJGdzz01Ptt4FVpd69+lSTfR3BU+FxtgL8Y7tQgnRDXbj
# I1Z4IiY2vsqxjG6qHeSF2kczYo+kyZEzX3EeQK+YZcki6EIhJYocLWDZN4lBiSoW
# D9dhPJRoYFLv1keZoIBA7hWBdz6c4FMYGlAdOJWbHmYzEyc5F3iHNs5Ow1+y9T1H
# U7bg5dsLYT0q15IszjdaPkBCMaQfEAjCVpy/JF1RAp1qedIX09rBlI4HeyVxRKsG
# aubUxt8jmpZ1xTGCFaUwghWhAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMwEQYDVQQI
# EwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3Nv
# ZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25pbmcg
# UENBIDIwMTACEzMAAAAWEQS0iDiMvsMAAAAAABYwDQYJYIZIAWUDBAIBBQCgga4w
# GQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwGCisG
# AQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIExD4XZ/5gLVz0fyrzceTGVR6ZcHlwtv
# 90Ipz8xOs9kDMEIGCisGAQQBgjcCAQwxNDAyoBiAFgBjAG8AbQBtAG8AbgAuAHAA
# cwBtADGhFoAUaHR0cDovL21pY3Jvc29mdC5jb20wDQYJKoZIhvcNAQEBBQAEggEA
# NuA4rkrPHNs/Q/K1gBBvExlp/IMGvnRLHVVZaFlRkQuNzHEs4m8AMZGXU/7cDAAV
# uiuDnHhf2j1a/vc2AnFf6Dtks7Y8X3RfltZovjGzcfFHg8swh9rgB3xJM2XFdGRC
# jT2r66ZyMExiOHVmltURzFe9ej+P2nMh7/qTbGT2+UEq+C56YZgxkWUGXf+YPxUA
# mHm//yAcsKTiO8VKZ3o/d4TBWNIokO0I0iqxL+3ivxOnHiISJXx/AG9yzJvhy4eD
# BV1OlpbWLT0HiyblQ7KwGu6rhDGUmLh8bfrNgC4XAf+nvB65su5ovp7PjaCo+enQ
# qlm+/Kqn7nC5MqnYBEOwAKGCEy8wghMrBgorBgEEAYI3AwMBMYITGzCCExcGCSqG
# SIb3DQEHAqCCEwgwghMEAgEDMQ8wDQYJYIZIAWUDBAIBBQAwggE9BgsqhkiG9w0B
# CRABBKCCASwEggEoMIIBJAIBAQYKKwYBBAGEWQoDATAxMA0GCWCGSAFlAwQCAQUA
# BCBDtfrdqkhQ5N/Aud1RB7Nk+otPfzCRInA4IYKUkFbA+AIGUQE/QxAHGBMyMDEz
# MDIyNjAzNTY1OS40NjJaMAcCAQGAAgH0oIG5pIG2MIGzMQswCQYDVQQGEwJVUzET
# MBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMV
# TWljcm9zb2Z0IENvcnBvcmF0aW9uMQ0wCwYDVQQLEwRNT1BSMScwJQYDVQQLEx5u
# Q2lwaGVyIERTRSBFU046MzFDNS0zMEJBLTdDOTExJTAjBgNVBAMTHE1pY3Jvc29m
# dCBUaW1lLVN0YW1wIFNlcnZpY2Wggg7EMIIGcTCCBFmgAwIBAgIKYQmBKgAAAAAA
# AjANBgkqhkiG9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hp
# bmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jw
# b3JhdGlvbjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNhdGUgQXV0
# aG9yaXR5IDIwMTAwHhcNMTAwNzAxMjEzNjU1WhcNMjUwNzAxMjE0NjU1WjB8MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNy
# b3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDCCASIwDQYJKoZIhvcNAQEBBQADggEP
# ADCCAQoCggEBAKkdDbx3EYo6IOz8E5f1+n9plGt0VBDVpQoAgoX77XxoSyxfxcPl
# YcJ2tz5mK1vwFVMnBDEfQRsalR3OCROOfGEwWbEwRA/xYIiEVEMM1024OAizQt2T
# rNZzMFcmgqNFDdDq9UeBzb8kYDJYYEbyWEeGMoQedGFnkV+BVLHPk0ySwcSmXdFh
# E24oxhr5hoC732H8RsEnHSRnEnIaIYqvS2SJUGKxXf13Hz3wV3WsvYpCTUBR0Q+c
# Bj5nf/VmwAOWRH7v0Ev9buWayrGo8noqCjHw2k4GkbaICDXoeByw6ZnNPOcvRLqn
# 9NxkvaQBwSAJk3jN/LzAyURdXhacAQVPIk0CAwEAAaOCAeYwggHiMBAGCSsGAQQB
# gjcVAQQDAgEAMB0GA1UdDgQWBBTVYzpcijGQ80N7fEYbxTNoWoVtVTAZBgkrBgEE
# AYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYDVR0TAQH/BAUwAwEB
# /zAfBgNVHSMEGDAWgBTV9lbLj+iiXGJo0T2UkFvXzpoYxDBWBgNVHR8ETzBNMEug
# SaBHhkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9N
# aWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsG
# AQUFBzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1Jv
# b0NlckF1dF8yMDEwLTA2LTIzLmNydDCBoAYDVR0gAQH/BIGVMIGSMIGPBgkrBgEE
# AYI3LgMwgYEwPQYIKwYBBQUHAgEWMWh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9Q
# S0kvZG9jcy9DUFMvZGVmYXVsdC5odG0wQAYIKwYBBQUHAgIwNB4yIB0ATABlAGcA
# YQBsAF8AUABvAGwAaQBjAHkAXwBTAHQAYQB0AGUAbQBlAG4AdAAuIB0wDQYJKoZI
# hvcNAQELBQADggIBAAfmiFEN4sbgmD+BcQM9naOhIW+z66bM9TG+zwXiqf76V20Z
# MLPCxWbJat/15/B4vceoniXj+bzta1RXCCtRgkQS+7lTjMz0YBKKdsxAQEGb3FwX
# /1z5Xhc1mCRWS3TvQhDIr79/xn/yN31aPxzymXlKkVIArzgPF/UveYFl2am1a+TH
# zvbKegBvSzBEJCI8z+0DpZaPWSm8tv0E4XCfMkon/VWvL/625Y4zu2JfmttXQOnx
# zplmkIz/amJ/3cVKC5Em4jnsGUpxY517IW3DnKOiPPp/fZZqkHimbdLhnPkd/DjY
# lPTGpQqWhqS9nhquBEKDuLWAmyI4ILUl5WTs9/S/fmNZJQ96LjlXdqJxqgaKD4kW
# umGnEcua2A5HmoDF0M2n0O99g/DhO3EJ3110mCIIYdqwUB5vvfHhAN/nMQekkzr3
# ZUd46PioSKv33nJ+YWtvd6mBy6cJrDm77MbL2IK0cs0d9LiFAR6A+xuJKlQ5slva
# yA1VmXqHczsI5pgt6o3gMy4SKfXAL1QnIffIrE7aKLixqduWsqdCosnPGUFN4Ib5
# KpqjEWYw07t0MkvfY3v1mYovG8chr1m1rtxEPJdQcdeh0sVV42neV8HR3jDA/czm
# TfsNv11P6Z0eGTgvvM9YBS7vDaBQNdrvCScc1bN+NR4Iuto229Nfj950iEkSMIIE
# 0TCCA7mgAwIBAgIKYQfdbQAAAAAADzANBgkqhkiG9w0BAQsFADB8MQswCQYDVQQG
# EwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwG
# A1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQg
# VGltZS1TdGFtcCBQQ0EgMjAxMDAeFw0xMjAxMDkyMTM1MzRaFw0xMzA0MDkyMTQ1
# MzRaMIGzMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UE
# BxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMQ0wCwYD
# VQQLEwRNT1BSMScwJQYDVQQLEx5uQ2lwaGVyIERTRSBFU046MzFDNS0zMEJBLTdD
# OTExJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2UwggEiMA0G
# CSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDYZm9M76b+KlEpDt0DD3aPiN+1iU84
# L9sZyhS1aXflO7UKbGE+SfW0gsEqSN3HtBYNCTnzrTyZRFypiRRbmTSJJ//wjVo6
# 0keyL4Dfx6Dmwmt+Iqy/xTAGoNg5By1H3cB1GXUOrUWKkht8qlKnBMhYzvgw2FZ2
# fl8zsDlQl60LLzKzwXR/m09wlqMjFBcVPIcrwB3PZohORohcJvlHHIF8JFcNuhjF
# qz+1vfR91ez5Gnr1CjltNwYDRILUGRTjTBSZlJVOfAZJnI2KU1gifAl/a5qNH1vC
# Y1aTwCgLgiEAhLBr250S6A4AbOb1HDxDoDKEZvKj0oOhtRdqMhKaxeEfAgMBAAGj
# ggEbMIIBFzAdBgNVHQ4EFgQURcVySbx5Vmiw0tvNi+Oucnpi/IwwHwYDVR0jBBgw
# FoAU1WM6XIoxkPNDe3xGG8UzaFqFbVUwVgYDVR0fBE8wTTBLoEmgR4ZFaHR0cDov
# L2NybC5taWNyb3NvZnQuY29tL3BraS9jcmwvcHJvZHVjdHMvTWljVGltU3RhUENB
# XzIwMTAtMDctMDEuY3JsMFoGCCsGAQUFBwEBBE4wTDBKBggrBgEFBQcwAoY+aHR0
# cDovL3d3dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9NaWNUaW1TdGFQQ0FfMjAx
# MC0wNy0wMS5jcnQwDAYDVR0TAQH/BAIwADATBgNVHSUEDDAKBggrBgEFBQcDCDAN
# BgkqhkiG9w0BAQsFAAOCAQEAF8nx5JJdS0eTNnUikuzzkGz83idpDw1w+ZzOkSWC
# wKKUP3IyBeJDRhH/p5vsqcJ7eaQHyHm07KVBMrSxWPyYFRNQRma6Fdzb8rEPWDFX
# 50o2spc3V3HPV7zKoU8OGmrhQPTnLdlfMZiZ3DWqyV+CHTt2xASrPKvVODHmmYdE
# GJvO4LDcaO46PKVExHG0YS648Lp0/gTaC3ztxfxetmPS8Git/u6pUN4ImjVlGdqa
# Di6fcQZvl2K+X7apQtMpPdV6/ZBLpYvxTWTFSHhxzXCiwwA/0/xoGKagrs3hA90v
# aQ+F3TDn9JL6mscWODRPof8dKqMd+Zv81J/PSkz+Oq3fFKGCA3YwggJeAgEBMIHj
# oYG5pIG2MIGzMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G
# A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMQ0w
# CwYDVQQLEwRNT1BSMScwJQYDVQQLEx5uQ2lwaGVyIERTRSBFU046MzFDNS0zMEJB
# LTdDOTExJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2WiJQoB
# ATAJBgUrDgMCGgUAAxUAdcTBfAJSGMY3vLm7hdFssHFFIRqggcIwgb+kgbwwgbkx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xDTALBgNVBAsTBE1P
# UFIxJzAlBgNVBAsTHm5DaXBoZXIgTlRTIEVTTjpCMDI3LUM2RjgtMUQ4ODErMCkG
# A1UEAxMiTWljcm9zb2Z0IFRpbWUgU291cmNlIE1hc3RlciBDbG9jazANBgkqhkiG
# 9w0BAQUFAAIFANTWf10wIhgPMjAxMzAyMjYwMDI1MDFaGA8yMDEzMDIyNzAwMjUw
# MVowdDA6BgorBgEEAYRZCgQBMSwwKjAKAgUA1NZ/XQIBADAHAgEAAgIBCzAHAgEA
# AgIXijAKAgUA1NfQ3QIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEEAYRZCgMB
# oAowCAIBAAIDFuNgoQowCAIBAAIDB6EgMA0GCSqGSIb3DQEBBQUAA4IBAQCqaxx0
# WsVhJZ5/TSS+rP5pdBRYdCdSxvS/MXR9YJJX+FwytsmzyHP3Oz0ELVZ/YrXSvX6w
# GabXwjGKD7f7S6QUtr93jWqcXSVdVZCoJDMKBW+KyfqD3u+KoiZFFI8OojUp7KnY
# uTi6Oeklcgz+Ts3eX7rr37+JrrpPgaugLGFozok6K+UGjhUU/fmIYs6sVn33qg46
# 3PjoQx4xJmmB9W0FgnxmtJ006j/5m0+oJLRo58wnSKx+BjxITPGOeeUxuE65vCKK
# /V03JTnR+UP5vgc9MMmD9++L6egEP3mDa1A79k5CNZUEdPAMw45gwCCm3eNe9QYE
# Rj4VgqqFJpxtm6sEMYIC4zCCAt8CAQEwgYowfDELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAg
# UENBIDIwMTACCmEH3W0AAAAAAA8wDQYJYIZIAWUDBAIBBQCgggEpMBoGCSqGSIb3
# DQEJAzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0BCQQxIgQgJu7nmiXHBzYEZNM3
# jCEkaqLqru/fGSWkLuQRoNp86dkwgdkGCyqGSIb3DQEJEAIMMYHJMIHGMIHDMIGo
# BBR1xMF8AlIYxje8ubuF0WywcUUhGjCBjzCBgKR+MHwxCzAJBgNVBAYTAlVTMRMw
# EQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVN
# aWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0
# YW1wIFBDQSAyMDEwAgphB91tAAAAAAAPMBYEFJwdM4WrHfnCMvfYkCauASe0Zr8C
# MA0GCSqGSIb3DQEBCwUABIIBAEzE2y5crtafacZ8RaK77m/MUYqf1NB1NNIIsMd8
# C2Uaa7dwRIEXHnMsy4ZrMW+wN5vYODPNZ6Q3ZjruXuTJBRL2yXExSX8p8tgTyupt
# WBtUHr7gsU8Z8VxoWmdjjypdY3XkmvjOAVVk6ftM6q4JJ1eTpytDcHxCBELI4iu7
# QFsz/+mJJpv58AJDmmQyuu0E8MDYo/GV7vXyHXGBiUTi8zlGFj0+JX+bEvJdn9v9
# fgz/0pSDLxDaOmM6zLrTwaoneLcTC9AiTWoAwngzUiYpijOSQ5sGntISuyWNdifu
# mAceMw5uYkFaTNkZG1V8iQAwkDNiSkK09FbMBT36kBpiJaM=
# SIG # End signature block
