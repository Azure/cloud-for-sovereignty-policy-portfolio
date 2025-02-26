# Italian National Cybersecurity Agency (ACN) Cloud Service Qualification Custom Policy Initiative
<table>
    <tr>
        <th colspan='2' style='text-align:center'>Policy Initiative</th>
    </tr>
    <tr>
        <td>Initiative A2 1 Ordinari</td>
        <td>
                <a href=https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fcloud-for-sovereignty-policy-portfolio%2Frefs%2Fheads%2Fmain%2Fcloud-for-sovereignty%2FARMTemplates%2FInitiative%20A2_1_Ordinari.json target=_blank>
                    <img src=https://aka.ms/deploytoazurebutton/>
                </a>
                </td>
    </tr>
    <tr>
        <td>Initiative A2 2 Critici</td>
        <td>
                <a href=https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fcloud-for-sovereignty-policy-portfolio%2Frefs%2Fheads%2Fmain%2Fcloud-for-sovereignty%2FARMTemplates%2FInitiative%20A2_2_Critici.json target=_blank>
                    <img src=https://aka.ms/deploytoazurebutton/>
                </a>
                </td>
    </tr>
    <tr>
        <td>Initiative B2 1 Ordinari</td>
        <td>
                <a href=https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fcloud-for-sovereignty-policy-portfolio%2Frefs%2Fheads%2Fmain%2Fcloud-for-sovereignty%2FARMTemplates%2FInitiative%20B2_1_Ordinari.json target=_blank>
                    <img src=https://aka.ms/deploytoazurebutton/>
                </a>
                </td>
    </tr>
    <tr>
        <td>Initiative B2 2 Critici</td>
        <td>
                <a href=https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fcloud-for-sovereignty-policy-portfolio%2Frefs%2Fheads%2Fmain%2Fcloud-for-sovereignty%2FARMTemplates%2FInitiative%20B2_2_Critici.json target=_blank>
                    <img src=https://aka.ms/deploytoazurebutton/>
                </a>
                </td>
    </tr>
</table>

In execution of the [Italian Cloud Strategy](https://www.acn.gov.it/en/strategia/strategia-cloud-italia), which contains the strategic guidelines for migration to the cloud of data and digital services of the Italian Public Administration, the National Cybersecurity Agency (ACN) issued a set of requirements for the [qualification of Cloud Services and Cloud Services Infrastructures](https://www.acn.gov.it/en/strategia/strategia-cloud-italia/qualificazione-cloud). 
The policy initiatives and files contained in this repository are intended to serve as a starting point to map such requirements to an Azure implementation. Please note that these files are not intended to be final or comprehensive solutions, but rather a helpful resource to jumpstart your efforts.
The original documents published by the ACN, to which the content in this repository refers, can be found at the following links:
* [Resolution n. 307 dated 18 January 2022](https://assets.innovazione.gov.it/1642694131-det_307_cloud_ulteriorilerqc_20220118.pdf) (in Italian)
* [Annexes to Resolution n. 307 dated 18 January 2022](https://assets.innovazione.gov.it/1642754054-all1det307acn.pdf) containing the definition of required measures for each qualification level (in Italian)
* [Directorial decree n. 20610 dated 28 July 2023](https://www.acn.gov.it/documents/trasparenza/atti-generali/Decreto%2020610_2023.pdf) containing an amendment to some of the required measures

**Important** - Organizations are wholly responsible for ensuring their own compliance with all applicable laws and regulations. The information provided in this document and repository does not constitute legal advice, and organizations should consult their legal advisors for any questions regarding regulatory compliance.

The evidence against each security measure and its corresponding security controls shall be assessed to determine whether it meets the security requirements. If the security requirements are not fulfilled, the outstanding risks shall be identified. The SAA and/or NCSP shall identify any additional security measures and controls needed to attain an acceptable residual risk, which would be implemented by the NCSP and/or CSP.

The contents of this ACN Folder are:

1. Mapping Files. Excel files that map the ACN required measures to Azure Policies. The mapping files are intended to help in identifying what Azure Policies can be used to meet ACN control objectives. The mapping files contain the Control ID, Control Description, and Azure Policy Definition ID.
1. ACN Policy Initiatives for the different qualification levels:
    * ACN_A2_1 – Level of qualification QI1
    * ACN_A2_2 – Level of qualification QI2
    * ACN_B2_1 – Level of qualification QC1
    * ACN_B2_2 – Level of qualification QC2
    
    <u>NOTE 1:</u> Annex C to Resolution n. 307 includes the following certification requirements that are not mapped to Azure Policies but can be referenced to the links below:
    * Level of qualification QI1
        * [ISO 9001 certification](https://learn.microsoft.com/azure/compliance/offerings/offering-iso-9001)
        * [ISO 27001 certification](https://learn.microsoft.com/compliance/regulatory/offering-iso-27001)
    * Level of qualification QI2
        * [ISO 22301 certification](https://learn.microsoft.com/azure/compliance/offerings/offering-iso-22301)
        * [ISO 27001 certification](https://learn.microsoft.com/azure/compliance/offerings/offering-iso-27001)
    * Level of qualification QC1
        * [ISO 9001 certification](https://learn.microsoft.com/azure/compliance/offerings/offering-iso-9001)
        * [ISO 27001 certification](https://learn.microsoft.com/compliance/regulatory/offering-iso-27001)
        * [ISO 27017 certification](https://learn.microsoft.com/azure/compliance/offerings/offering-iso-27017)
        * [ISO 27018 certification](https://learn.microsoft.com/azure/compliance/offerings/offering-iso-27018)
    * Level of qualification QC2
        * [ISO 22301 certification](https://learn.microsoft.com/azure/compliance/offerings/offering-iso-22301)
        * [ISO 20000 certification](https://learn.microsoft.com/azure/compliance/offerings/offering-iso-20000-1)
        

    <u>NOTE 2:</u> The ACN Policy Initiatives do not currently include required measures that could not be mapped to any Azure Policy. Addressing this gap with new policies may be the subject of a future update to the ACN Policy Initiatives.

The Deploy to Azure feature can be utilized to make this policy initiative available for your environment to then be assigned to a specific tenant or resource. 

## Contributions

Changes can not be made to the policy initiative directly in this repo. If you find an issue, feel free to open a Pull Request with the proposed fix.

## Shared responsibility and customer responsibilities

To ensure your data is secure and your privacy controls are addressed, we recommend that you follow a set of best practices when deploying into Azure:

* [Azure security best practices and patterns](https://learn.microsoft.com/azure/security/fundamentals/best-practices-and-patterns)
* [Microsoft Services in Cybersecurity](https://learn.microsoft.com/azure/security/fundamentals/cyber-services)

Protecting your data also requires that all aspects of your security and compliance program include your cloud infrastructure and data. 
The following guidance can help you to secure your deployment.

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft 
trademarks or logos is subject to and must follow 
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.

## Microsoft Legal Notice

**Microsoft Legal Notice:** The Microsoft (MS) Cloud for Sovereignty Policy Portfolio (1) is not designed, intended, or made available as legal services, (2) is not intended to substitute for professional legal counsel or judgment, and (3) should not be used in place of consulting with a qualified professional legal professional for your specific needs. Microsoft makes no warranty that the Microsoft (MS) Cloud for Sovereignty Policy Portfolio is accurate, up-to-date, or complete. You are wholly responsible for ensuring your own compliance with all applicable laws and regulations. 

