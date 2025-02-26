# Cloud security Alliance (CSA) Cloud Control Matrix (CCM) v4 Custom Policy Initiative
<table>
    <tr>
        <th colspan='2' style='text-align:center'>Policy Initiative</th>
    </tr>
    <tr>
        <td>Cloud Security Alliance Cloud Controls v4</td>
        <td>
                <a href=https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fcloud-for-sovereignty-policy-portfolio%2Frefs%2Fheads%2Fmain%2Fcloud-for-sovereignty%2FARMTemplates%2FCloud_Security_Alliance_Cloud_Controls_v4.json target=_blank>
                    <img src=https://aka.ms/deploytoazurebutton/>
                </a>
                </td>
    </tr>
</table>

The Cloud Security Alliance (CSA) is a leading organization dedicated to defining and raising awareness of best practices to help ensure a secure cloud computing environment. CSA harnesses the subject matter expertise of industry practitioners, associations, governments, and its corporate and individual members to offer cloud security-specific research, education, certification, events and products. In 2010, CSA launched the Cloud Controls Matrix (CCM), a meta-framework of cloud-specific security controls mapped to leading standards, best practices and regulations. 

The CSA Cloud Controls Matrix (CCM) is a cybersecurity control framework for cloud computing.
It is composed of 197 control objectives that are structured in 17 domains covering all key aspects of cloud technology. It can be used as a tool for the systematic assessment of a cloud implementation, and provides guidance on which security controls should be implemented by which actor within the cloud supply chain. The controls framework is aligned to the CSA Security Guidance for Cloud Computing, and is considered a de-facto standard for cloud security assurance and compliance. 
 
**Important** Organizations are wholly responsible for ensuring their own compliance with all applicable laws and regulations. The information provided in this document does not constitute legal advice, and organizations should consult their legal advisors for any questions regarding regulatory compliance.

The evidence against each security measure and its corresponding security controls shall be assessed to determine whether it meets the security requirements. If the security requirements are not fulfilled, the outstanding risks shall be identified. The SAA and/or NCSP shall identify any additional security measures and controls needed to attain an acceptable residual risk, which would be implemented by the NCSP and/or CSP.

The contents of this folder are:
 1. CSA CCM v4 Policy Initiative (JSON file)

 2. Mapping File: A file that maps the CSA CCM v4 Control Objectives to Azure Policies. Each Control ID in the mapping files contains the Control Domain, Control Title, Control Description, Azure Policy Name, Azure Policy Reference ID, and Azure Policy Definition ID. An explanation of each Control can be found in the CSA CCM v4 documentation.

 3. CSA CCM v4 additional documentation can be found at [this location](https://cloudsecurityalliance.org/research/cloud-controls-matrix/).

**Note** - These policies may help you assess compliance with the control; however, there often is not a one-to-one or complete match between a control and one or more policies. As such, Compliant in Azure Policy refers only to the policy definitions themselves; this doesn't ensure you're fully compliant with all requirements of a control. In addition, the compliance standard includes controls that aren't addressed by any Azure Policy definitions at this time. Therefore, compliance in Azure Policy is only a partial view of your overall compliance status. The associations between compliance domains, controls, and Azure Policy definitions for this compliance standard may change over time. To view the change history, see the GitHub Commit History.

The Deploy to Azure feature can be utilized to make this policy initiative available for your environment to then be assigned to a specific tenant or resource. 

 ### Contributions
 Changes can not be made to the policy initiative directly in this repo. If you find an issue, feel free to open a PR with the proposed fix.
 
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

