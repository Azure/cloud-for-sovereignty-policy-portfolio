# Italian National Cybersecurity Agency (ACN) Cloud Service Qualification - Policy Initiative

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
 
## Contributions

Changes can not be made to the policy initiative directly in this repo. If you find an issue, feel free to open a Pull Request with the proposed fix.
