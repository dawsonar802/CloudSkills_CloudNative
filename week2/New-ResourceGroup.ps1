function New-ResourceGroup {
    [CmdletBinding(SupportsShouldProcess)]

    param (
        # Parameter help description
        [Parameter(Mandatory)]
        [string]$rgname,
        # Parameter help description
        [Parameter(Mandatory)]
        [string]$location
    )
    $params = @{
        'Name' = $rgname
        'Location' = $location
    }
    if($PSCmdlet.ShouldProcess('Location')){
        New-AzResourceGroup @params
    }
}