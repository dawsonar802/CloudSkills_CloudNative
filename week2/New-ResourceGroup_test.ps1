#invoke-pester .\New-ResourceGroup.ps1 -rgname "cs-199" -location "eastus2"

Describe "New-ResourceGroup" {
    $location = "eastus2"
    $name = "cs-199"

    It "Name Should be cs-199" {
        $name | Should Be "cs-199"
    }

    It "location should be eastus" {
        $location | Should be "eastus2"
    }
}