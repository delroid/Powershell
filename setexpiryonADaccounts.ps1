
#create array of users

#domain admins array
$users = Get-ADGroupMember -Identity "domain admins"  |select samaccountname

#all users in array
#$users = Get-ADGroupMember -Identity "domain admins"  |select samaccountname


foreach ($user in $users) {            
#Search in specified OU and Update existing attributes            
 Get-ADUser -Filter "SamAccountName -eq '$($user.samaccountname)'" -Properties * | Set-ADUser -PasswordNeverExpires $true
 #|            

           
}