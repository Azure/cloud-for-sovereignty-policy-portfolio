# Microsoft Cloud for Sovereignty Policy Portfolio
The Microsoft Cloud for Sovereignty Policy Portfolio's Policy Initiatives aid in customizing deployments to reduce the time needed to audit environments and help meet established regulatory compliance frameworks and government requirements. 

The first built-in regulatory compliance initiative that Microsoft Cloud for Sovereignty maintains is in support of the cloud-specific technical requirements within the [Baseline informatiebeveiliging overheid](https://www.digitaleoverheid.nl/overzicht-van-alle-onderwerpen/cybersecurity/kaders-voor-cybersecurity/baseline-informatiebeveiliging-overheid/) (BIO), the foundational standards framework for information security within all levels of the Netherlands government (central government, municipalities, provinces and water boards). For more information on the BIO cloud theme initiative, go to [Azure Built-in Policy Initiatives](https://github.com/Azure/azure-policy/tree/master/built-in-policies/policySetDefinitions).

Microsoft Cloud for Sovereignty makes several custom policy initiatives accessible through this repository. In execution of the [Italian Cloud Strategy](https://www.acn.gov.it/en/strategia/strategia-cloud-italia), which contains the strategic guidelines for migration to the cloud of data and digital services of the Italian Public Administration, the National Cybersecurity Agency (ACN) issued a set of requirements for the [qualification of Cloud Services and Cloud Services Infrastructures](https://www.acn.gov.it/en/strategia/strategia-cloud-italia/qualificazione-cloud). 
The policy initiatives and files contained in this repository are intended to serve as a starting point to map such requirements to an Azure implementation. Please note that these files are not intended to be final or comprehensive solutions, but rather a helpful resource to jumpstart your efforts.

**Important** - Organizations are wholly responsible for ensuring their own compliance with all applicable laws and regulations. The information provided in this document and repository does not constitute legal advice, and organizations should consult their legal advisors for any questions regarding regulatory compliance.

To assist with implementation of custom initiatives, see the `New-PolicySets.ps1` PowerShell script under our scripts folder. In addition, you can use Microsoft Defender for Cloud capabilities for custom initiatives, as explained [here](https://review.learn.microsoft.com/azure/defender-for-cloud/custom-security-policies?branch=main&branchFallbackFrom=pr-en-us-950&pivots=azure-portal).


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

## Preview Notice

**Preview Terms.** The Microsoft (MS) Cloud for Sovereignty Policy Portfolio Preview (the "PREVIEW") is licensed to you as part of your Azure subscription and subject to terms applicable to "Previews" as detailed in the Universal License Terms for Online Services section of the Microsoft Product Terms and the Microsoft Products and Services Data Protection Addendum ("DPA"). AS STATED IN THOSE TERMS, PREVIEWS ARE PROVIDED "AS-IS," "WITH ALL FAULTS," AND "AS AVAILABLE," AND ARE EXCLUDED FROM THE SERVICE LEVEL AGREEMENTS AND LIMITED WARRANTY. Previews may employ lesser or different privacy and security measures than those typically present in Azure Services. Unless otherwise noted, you should not use Previews to process Personal Data or other data that is subject to legal or regulatory compliance requirements. The following terms in the DPA do not apply to Previews: Processing of Personal Data; GDPR, Data Security, and HIPAA Business Associate. We may change or discontinue Previews at any time without notice. We also may choose not to release a Preview into General Availability.
