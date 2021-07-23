function New-RandomPassword {
	[cmdletBinding()]
	Param(
	[int]$passwordLength = 14,
	[int]$specialcharacters=5,
	[int]$numberofPasswords=10
	)     
	$Namespace = [Reflection.Assembly]::LoadWithPartialName("System.Web") 
	for ($i=1; $i -le $NumberofPasswords; $i++) {
		$password=[System.Web.Security.Membership]::GeneratePassword($passwordLength,$specialCharacters)
		$password

		 
	}
}
New-RandomPassword