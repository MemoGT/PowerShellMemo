# Comma separated assignment expressions enclosed in parenthesis.
<#for ($i=0; $i -lt 11; $i++)
{
    Write-Host $i
}
Write-Host "--------------------------------------------------"

for (($m = 0), ($n = 0); $m -lt 10; $m++)
{
    "`$m:$m"
    "`$n:$n"
}
Write-Host "--------------------------------------------------"
# Sub-expression using the semicolon to separate statements.
for ($($i = 0;$j = 0); $i -lt 10; $i++)
{
    "`$i:$i"
    "`$j:$j"
}
Write-Host "-----------------------------------------------------"

# Comma separated assignment expressions.
for (($i = 0), ($j = 0); $i -lt 10; $i++, $j++)
{
    "`$i:$i"
    "`$j:$j"
}
Write-Host "-----------------------------------------------------"

# Comma separated assignment expressions enclosed in parenthesis.
for (($i = 0), ($j = 0); $i -lt 10; ($i++), ($j++))
{
    "`$i:$i"
    "`$j:$j"
}
Write-Host "-----------------------------------------------------"

# Sub-expression using the semicolon to separate statements.
for ($($i = 0;$j = 0); $i -lt 10; $($i++;$j++))
{
    "`$i:$i"
    "`$j:$j"
}
Write-Host "-----------------------------------------------------"

#Multiple conditions
for (($i = 0), ($j = 0); $i -lt 10 -and $j -lt 10; $i++,$j++)
{
    "`$i:$i"
    "`$j:$j"
}

Write-Host "-----------------------------------------------------"

#$i = 1
#for (;;)
#{
#    Write-Host $i
#}
Write-Host "-----------------------------------------------------"
#For example, the following For statement continually displays the value of the $i variable until you manually break out of the command by pressing CTRL+C.

#$h = 21
#for (;;)
#{
 #   Write-Host $h
#}
Write-Host "-----------------------------------------------------"
#>

$f=0
for (;;$f++)
{
    Write-Host $f
}


