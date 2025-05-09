# Function to add port redirection
function Add-PortRedirection {
    param (
        [string]$sourceIP,
        [string]$destinationIP,
        [int]$port
    )

    # Add port forwarding rule using netsh
    $command = "netsh interface portproxy add v4tov4 listenaddress=$sourceIP listenport=$port connectaddress=$destinationIP connectport=$port"
    Invoke-Expression $command
    Write-Output "Port redirection from ${sourceIP}:${port} to ${destinationIP}:${port} has been added."
}

# Function to add a firewall rule
function Add-FirewallRule {
    param (
        [string]$ip,
        [int]$port
    )

    # Add a firewall rule to allow incoming traffic on the specified port
    $ruleName = "Allow_Port_${port}"
    New-NetFirewallRule -DisplayName $ruleName -Direction Inbound -LocalPort $port -Protocol TCP -Action Allow -RemoteAddress $ip
    Write-Output "Firewall rule '${ruleName}' allowing traffic on port ${port} from ${ip} has been added."
}

# Prompt the user for input
$IP1 = Read-Host -Prompt "Enter the source IP address (IP1)"
$IP2 = Read-Host -Prompt "Enter the destination IP address (IP2)"

$Port = 8081
# Call functions
Add-PortRedirection -sourceIP $IP1 -destinationIP $IP2 -port $Port
Add-FirewallRule -ip $IP1 -port $Port

$Port = 8082
# Call functions
Add-PortRedirection -sourceIP $IP1 -destinationIP $IP2 -port $Port
Add-FirewallRule -ip $IP1 -port $Port

$Port = 8083
# Call functions
Add-PortRedirection -sourceIP $IP1 -destinationIP $IP2 -port $Port
Add-FirewallRule -ip $IP1 -port $Port
