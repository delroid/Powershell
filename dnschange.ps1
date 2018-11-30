 # $dnsservers = "8.8.8.8" googletester
#clear dns variable
$dnsservers = ""
$computers = Get-Content complist.txt
foreach ($comp in $computers)
{

	$adapters = gwmi -q "select * from win32_networkadapterconfiguration where ipenabled='true'" -ComputerName $comp
	foreach ($adapter in $adapters)
	{
		$adapter.setDNSServerSearchOrder($dnsservers)
	}
	

            $dnsservers = "8.8.8.8"
$computers = Get-Content complist.txt
foreach ($comp in $computers)
{

	$adapters = gwmi -q "select * from win32_networkadapterconfiguration where ipenabled='true'" -ComputerName $comp
	foreach ($adapter in $adapters)
	{
		$adapter.setDNSServerSearchOrder($dnsservers)
	}
}
}