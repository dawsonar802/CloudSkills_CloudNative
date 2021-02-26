# Week 2 Scripting like a Developer

The code found here is to help you script like a developer.

## WIP
The code found here is a work in process is currently a Work in progress.

## PowerShell Code
The PS code is for anyone wanting to create a new Resource group in Azure

## How to use the PS Code
Run as instructed.

## Python Code
Used for creating an S3 bucket in AWS.

## How to use the Python code
The `s3bucket.py` is reuseable. 

## Examples

```Pwsh
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

New-ResourceGroup -rgName "rgname101" -location "eastus2"
```

```Python
import sys
import boto3


try:
    def main():
        create_s3bucket(bucket_name)

except Exception as e:
    print(e)

def create_s3bucket(bucket_name):
    s3_bucket=boto3.client(
        's3',
    )

    bucket = s3_bucket.create_bucket(
        Bucket=bucket_name,
        ACL='private',
    )

    print(bucket)

bucket_name = sys.argv[1]

if __name__ == '__main__':
    main()

python s3bucket.py 'cloudskills199'
```
## Testing
Both PS and Python code have unit tess in the repo

The tests can be found in the repo directly.  

## Contributors
1. Andrew Dawson