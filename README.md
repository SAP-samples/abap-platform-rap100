<!--
# SAP-samples/repository-template
This default template for SAP Samples repositories includes files for README, LICENSE, and .reuse/dep5. All repositories on github.com/SAP-samples will be created based on this template.

# Containing Files

1. The LICENSE file:
In most cases, the license for SAP sample projects is `Apache 2.0`.

2. The .reuse/dep5 file: 
The [Reuse Tool](https://reuse.software/) must be used for your samples project. You can find the .reuse/dep5 in the project initial. Please replace the parts inside the single angle quotation marks < > by the specific information for your repository.

3. The README.md file (this file):
Please edit this file as it is the primary description file for your project. You can find some placeholder titles for sections below.
-->

# RAP100 - Build Fiori Apps with the ABAP RESTful Application Programming Model (RAP)
<!-- Please include descriptive title -->

<!--- Register repository https://api.reuse.software/register, then add REUSE badge:
[![REUSE status](https://api.reuse.software/badge/github.com/SAP-samples/REPO-NAME)](https://api.reuse.software/info/github.com/SAP-samples/REPO-NAME)
-->

## Description
<!-- Please include SEO-friendly description -->

This repository contains the material for the hands-on session **RAP100 - Building Fiori Apps with the ABAP RESTful Application Programming Model (RAP)**.

- [Requirements for attending this workshop](#requirements-for-attending-this-workshop)
- [Overview](#overview)
- [Exercises](#exercises)
- [Recordings](#recordings)
- [Known Issues](#known-issues)
- [How to obtain support](#how-to-obtain-support)
- [About the ABAP RESTful Application Programming Model (RAP)](#about-the-abap-restful-application-programming-Model)
- [Further Information](#further-information)

## 📋Requirements for attending this workshop 
[^Top of page](#)

> To complete the practical exercises in this workshop, you need the latest version of the ABAP Development Tools for Eclipse (ADT) on your laptop or PC and the access to a suitable ABAP system - i.e. SAP BTP ABAP Environment, SAP S/4HANA Cloud, Public Cloud or at least release 2022 of SAP S/4HANA and SAP S/4HANA Cloud, Private Edition.
> 
> The [ABAP Flight Reference Scenario](https://github.com/SAP-samples/abap-platform-refscen-flight) must be imported into the relevant system - e.g. SAP BTP ABAP Environment Trial. 

<details>
  <summary>Click to expand!</summary>

The requirements to follow the exercises in this repository are:
1. [Install the latest Eclipse platform and the latest ABAP Development Tools (ADT) plugin](https://developers.sap.com/tutorials/abap-install-adt.html)
2. [Create an user on the SAP BTP ABAP Environment Trial](https://developers.sap.com/tutorials/abap-environment-trial-onboarding.html) (_Read exception below_)
3. [Create an ABAP Cloud Project](https://developers.sap.com/tutorials/abap-environment-create-abap-cloud-project.html)
4. [Adapt the Web Browser settings in your ADT installation](https://github.com/SAP-samples/abap-platform-rap-workshops/blob/main/requirements_rap_workshops.md#4-adapt-the-web-browser-settings-in-your-adt-installation)   

>> ⚠ **Exception regarding SAP-led events such as "ABAP Developer Day" and "SAP CodeJam"**:   
>> → A dedicated ABAP system for the hands-on workshop participants will be provided.   
>> → Access to the system details for the workshop will be provided by the instructors during the session.
>> 
</details>

## 🔎Overview

<!-- #### Current Business Scenario -->
> This workshop is all about RAP fundamentals; especially about how to use RAP core features when building greenfield implementations.

<details>
  <summary>Click to expand!</summary>
  
In this hands-on session we will guide you through the development of the OData service of a SAP Fiori elements based _Travel Processing App_ with RAP, using the _managed_ business object (BO) runtime implementation with semantic key and internal unmanaged early numbering. We will give you more details on the scenario in the different exercises.

The resulting app will look like this:

![Travel App](images/travelapp01.png)

The OData service you are going to implement is based on the _ABAP Flight Reference Scenario_. To set the business context, the scenario is the following: The department responsible for managing worldwide Travels for multiple Agencies is requesting you to build a new Fiori app with draft capabilities for processing (i.e. creating, updating and deleting) Travels.

Below is the simplified data model underlying the app.

![Travel App](images/datamodel01.png)

> **Please note**:   
> The purpose of the different exercises is to show you how to implement the different RAP core features - and less on having the perfect business scenario.
> To remove a certain complexity in the implementation, we will use a very simplified data model with only one BO node, the _Travel_ entity.   
> For implementation examples with more than one BO node, you can have a look at:
> - Workshop **[DEV260](../readme.md)**
> - RAP Development Guide on the SAP Help Portal: **[Develop Applications](https://help.sap.com/viewer/923180ddb98240829d935862025004d6/Cloud/en-US/4cff5dff7f2642cab54e993c840a163e.html)**

</details>


## 🛠Exercises
[^Top of page](#)

Follow these steps to build an OData service on top of a draft-enabled RAP Business Object (BO) to develop a transactional, draft-enabled Fiori elements List Report app from scratch using RAP. You will also write an ABAP unit test for it and explore the Entity Manipulation Language (EML).

#### Beginner Level

| Exercises | -- |
| ------------- |  -- |
| [Getting Started](exercises/ex0/readme.md) | -- |
| [Exercise 1: Create Database Table and Generate UI Service](exercises/ex01/README.md) | -- |
| [Exercise 2: Enhance the BO Data Model and Enable OData Streams](exercises/ex02/README.md) | -- |
| [Exercise 3: Enhance the BO Behavior – Early Numbering](exercises/ex03/README.md) | -- |
| [Exercise 4: Enhance the BO Behavior – Determinations](exercises/ex04/README.md) | -- |
| [Exercise 5: Enhance the BO Behavior – Validations](exercises/ex05/README.md) | -- |

#### Intermediate Level
The exercises below are based on the exercise 1 to 5 from the _Beginner Level_ section.

| Exercises | -- |
| ------------- |  -- |
| [Exercise 6: Enhance the BO Behavior – Actions](exercises/ex6/README.md) | -- |
| [Exercise 7: Enhance the BO Behavior – Dynamic Feature Control](exercises/ex07/README.md) | -- |
| [Exercise 8: Write an ABAP Unit Test for the RAP BO](exercises/ex08/README.md) | -- |
| [Exercise 9: External API-based Access to the RAP BO with EML](exercises/ex09/README.md) | -- |

#### Additional Exercises: 
The following exercises are based on the Exercises 1-9 from the _Beginner_ and _Intermediate Level_ sections.   
However, you can perform these exercises in the given order already after _Exercise 1_ if you want to test the result of the following exercises directly in the real SAP Fiori elements-based _Travel_ app instead of using the ADT preview.

| Exercises | -- |
| ------------- |  -- |
| [Exercise 10: Create an SAP Fiori elements App and Deploy it to SAP BTP, ABAP Environment with SAP Business Application Studio](https://developers.sap.com/tutorials/abap-environment-deploy-fiori-elements-ui.html) | -- |
| [Exercise 11: Integrate an SAP Fiori App into the ABAP Fiori Launchpad](https://developers.sap.com/tutorials/abap-environment-integrate-app-into-flp.html) | -- |

   
## 🔁Recordings
[^Top of page](#)

Watch the replay of the virtual workshop on RAP held SAP TechEd in 2022. It contains a compact introduction to RAP and a demonstration of the exercises 1 to 7.

📹 <a href="http://www.youtube.com/watch?feature=player_embedded&v=BNoUYkizM30" target="_blank">Build and Extend Apps with the ABAP RESTful Application Programming Model</a> 

<!--
## 📩Download and Installation
-->

## ⚠️Known Issues
No known issues. 

## 🆘How to obtain support
[Create an issue](../../issues) in this repository if you find a bug or have questions about the content.
 
For additional support, [ask a question in SAP Community](https://answers.sap.com/questions/ask.html).

## About the ABAP RESTful Application Programming Model
[^Top of page](#)

> The **ABAP RESTful Application Programming Model (RAP)** is at the heart of the ABAP Cloud development model (ABAP Cloud) for implementing transactional scenarios.
> 
> **ABAP Cloud** is the new ABAP development model for building innovative and cloud-ready business apps, services, and extensions that adhere to the principles of clean core extensibility on all SAP S/4HANA editions, both in the cloud and on-premise, as well as on the SAP Business Technology Platform (SAP BTP).

<details>
<summary>Click to expand!</summary>

The _ABAP RESTful Application Programming Model_ (RAP) is an enabler for improving the user experience and innovating business processes in ABAP-based SAP solutions by leveraging SAP Fiori, SAP HANA, and the cloud. 

RAP offers a set of concepts, tools, languages, and powerful frameworks for efficiently building cloud-ready, transactional SAP Fiori apps, web APIs, and local APIs in the cloud and on-premise. It is a long-term strategic solution for ABAP development on SAP’s flagship product SAP S/4HANA, in the cloud and on-premise (as of release 1909), as well as on the SAP BTP ABAP Environment.

The illustration below shows the high-level end-to-end development stack when working with RAP.  

![RAP Big Picture](images/rap_bigpicture.png)

> **Learn more**: [Modern ABAP Development with the ABAP RESTful Application Programming Model (RAP)](https://community.sap.com/topics/abap/rap)

</details>

## Further Information
[^Top of page](#)

You can find further information on the ABAP RESTful Application Programming Model (RAP) here:
 - [State-of-the-Art ABAP Development with RAP](https://community.sap.com/topics/abap/rap) | SAP Community page   
 - [Modernization with RAP](https://blogs.sap.com/2021/10/18/modernization-with-rap/)
 - Most frequently asked questions: [RAP FAQ](https://blogs.sap.com/2020/10/16/abap-restful-application-programming-model-faq/) 
 - Free openSAP course [Building Apps with the ABAP RESTful Application Programming Model](https://community.sap.com/topics/btp-abap-environment/rap-opensap) 
 - [RAP100 Tutorials Mission on SAP Developers Center](https://developers.sap.com/mission.sap-fiori-abap-rap100.html)
 - SAP Fiori: [Develop and Run a Fiori Application with SAP Business Application Studio (optional)](https://developers.sap.com/tutorials/abap-environment-deploy-cf-production.html) 


<!--
## Contributing
If you wish to contribute code, offer fixes or improvements, please send a pull request. Due to legal reasons, contributors will be asked to accept a DCO when they create the first pull request to this project. This happens in an automated fashion during the submission process. SAP uses [the standard DCO text of the Linux Foundation](https://developercertificate.org/).
-->

## License
Copyright (c) 2023 SAP SE or an SAP affiliate company. All rights reserved. This project is licensed under the Apache Software License, version 2.0 except as noted otherwise in the [LICENSE](LICENSE) file.
