function Create-FunctionApp {
    param (
        [parameter(Mandatory)]
        [string]$RGName,

        [Parameter(Mandatory)]
        [string]$name,

        [Parameter(Mandatory)]
        [string]$storageaccountname
        
    )

    az storage account create --name $storageaccountname --resource-group $RGName

    $plan = az functionapp plan create -g $RGName -n $($name + 'plan') --min-instances 1 --max-burst 5 --sku EP1

    $plan

    az functionapp create -g $RGName -n $name -p $($name + 'plan') --runtime powershell -s $storageaccountname --functions-version 2


}

