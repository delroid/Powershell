
#create array of users

#domain admins array
$users = Get-ADGroupMember -Identity "domain admins"  |select samaccountname

#all users in array
#$users = Get-ADGroupMember -Identity "domain admins"  |select samaccountname


foreach ($user in $users) {            
#For each user set password not to expire       
 Get-ADUser -Filter "SamAccountName -eq '$($user.samaccountname)'" -Properties * | Set-ADUser -PasswordNeverExpires $true
 #|            

           
}