[Home - RAP100](../../#exercises)

<!-- Exercise 0: Getting Started -->
# Getting Started

## Introduction

> ℹ️ Access the new RAP100 GitHub repository with the updated script 👉 [**here**](https://github.com/SAP-samples/abap-platform-rap100).

The screenshots in this document have been taken using group ID **`000`** and system **`D22`**. We **do not recommend** using group ID **`000`**. 

Please note that ADT dialogs and views, as well as Fiori UIs, may change in future releases.

You can find the solution for this workshop in the development package **`ZRAP100_SOL`**, or you can import it from [here](https://github.com/SAP-samples/abap-platform-rap100/) into your system.  

You've already received user credentials (_read Login Details below_) from the SAP Team  **or** created an account on the SAP BTP ABAP environment Trial.

Now, let's get started!

>> ⚠ **Login Details**: ⚠    
>>  
>> Participants of SAP-led events (e.g. **ABAP Developer Day** or **SAP CodeJam**) will receive logon details - i.e. system information and user credentials - to a dedicated ABAP system from the SAP team via e-mail prior to the event or during the respective event.
>> Please inform the workshop instructor if you haven't received your login details.
>> 

- [Group ID](#group-id)
- [Create an _ABAP Cloud Project_ or an _ABAP Project_ in ADT](#create-an-abap-cloud-project-or-an-abap-project-in-adt)
- [Helpful Information](#helpful-information)
  - Find/Replace
  - Modern ABAP Syntax
  - Useful ADT Shortcuts
- [Summary](#summary)


## Group ID
[^Top of page](#)

> In this exercise you will define a group ID that you will need in the course of this workshop to uniquely identify your repository artefacts 
> and separate them from those of other users conducting the same workshop on this system.
>
> The group ID will be used to replace all occurences of the placeholder **`###`** in the different exercises of this workshop.
>
> ⚠ **Please note:** ⚠    
> If you've been assigned a group ID by the SAP team, then please skip this section and go directly ahead with the next one to create an _ABAP Cloud Project_ or an _ABAP Project_ in ADT.  

<details>
  <summary>Click to expand!</summary>
   
As the ABAP environment is used by many people, we've defined a naming pattern for each artefact you are going to create to make sure it doesn't conflict with other ones. 
  
For this, you'll find the placeholder **`###`** used in object names that must be replaced with the group ID of your choice during the exercises. 
  
The group ID can contain **a maximum of 3 characters (numbers and/or letters)** - e.g. `123`, `XY1`, or `ABC`. 

You can check for **already used group IDs** by choosing **Open ABAP Development Object** ![open_object_icon](images/adt_open_object.png) or pressing **Ctrl+Shift+A**, and searching for e.g. **`zrap100_*###`**, where **`###`** is your chosen suffix. All artefacts fitting that pattern will be listed.  

We **do not recommend** using group ID **`000`**. Try to add e.g. your initials, followed by a number to verify nobody else is already using this group ID. 

In the screenshot below, we're checking to see if the suffix **`000`** is still available, so we enter **`zrap100_*000`** as search string. 

  ![determine group id](images/groupid01.png) 
  <!-- <img src="images/groupid01.png" alt="determine group id" width="30%"> -->

_**No results**_ means this group ID seems to be available. You can note it as your group ID somewhere and use it in the next exercises.

Once you've found an available group ID, choose **Cancel**.

</details>   

## Create an _ABAP Cloud Project_ or an _ABAP Project_ in ADT

> In this step, you will create a connection to the ABAP system in your ADT installation. To do this, you need to create an _**ABAP Project**_ or an _**ABAP Cloud Project**_.
>
> If you're working on an SAP S/4HANA, on-prem or private cloud edition, you must create an _**ABAP Project**_ in ADT. Otherwise, create an _**ABAP Cloud Project**_ if you're working on an *SAP BTP ABAP Environment system* or an *SAP S/4HANA Cloud, public edition, system*.
>
> ⚠ **Please note:** ⚠    
> If you've already created an *ABAP Cloud Project* or an *ABAP Project* in the ABAP Development Tools for Eclipse (ADT), then skip this section.  

### Create an _ABAP Cloud Project_ in ADT
[^Top of page](#)

> Create an _**ABAP Cloud Project**_ in your ADT installation to connect it to the *SAP BTP ABAP Environment* or *SAP S/4HANA Cloud (public edition)* system.
>
> ⚠️ Skip this step if you're working on _SAP S/4HANA system, on-prem or private cloud edition_, including CAL instances. 

<details>
  <summary>Click to expand!</summary>
   
1. Open the **ABAP** perspective if not yet done.

    ![Open ABAP Perspective](images/abap_perspective.png)

2. Now create the _**ABAP Cloud Project**_ as shown on the screenshots provided below. 

    ![Create ABAP Project Cloud 1/2](images/steampunk_systemlogon1.png)

    ![Create ABAP Project Cloud 2/2](images/steampunk_systemlogon2.png)

</details>

### Create an _ABAP Project_ in ADT
[^Top of page](#)

> Create an _**ABAP Project**_ in your ADT installation to connect it to the *SAP S/4HANA system, on-prem or private cloud edition* system, includig to CAL Instances.
>
> ⚠️ Skip this step if you're working on _SAP BTP ABAP Environment_ or _SAP S/4HANA Cloud, public edition_.

<details>
  <summary>Click to expand!</summary>
   
1. Open the **ABAP** perspective if not yet done.

    ![Open ABAP Perspective](images/abap_perspective.png)

2. Now create the _**ABAP Project**_ as shown on the screenshots provided below. 
  
  Enter the system information (SID, System IP, and Instance number) provided to you by the SAP event team.

   ![Create ABAP Project](images/adt_create_abapproject.png)

</details>

<!-- </details> -->

## Helpful Information
[^Top of page](#)

> This section contains some helpful information for the exercises: _Find/Replace_ functionality, modern ABAP syntax, and useful ADT shortcuts.

<details>
  <summary>Click to expand!</summary>
 
### Find/Replace

In the course of these exercises you will frequently see the task to "_replace the placeholder **`###`** with your group ID_". 

For this it's recommended to make use of the **Find/Replace** feature of the Eclipse Editor. It can be opened either via the menu (**_Edit -> Find/Replace..._**) or via **Ctrl+F**.
  
 ![find and replace](images/find01.png)
   
Choosing **Replace All** allows you to replace all ocurrences of **`###`** with your group ID.

  
### Modern ABAP Syntax

The modern, declarative, and expression-oriented ABAP language syntax will be used in the different exercises. It allows developers to write more simple and concise source code using new language features like inline declarations, constructor expressions.

> **Find more information in the ABAP Keyword Documentation**: [ABAP - Programming Language](https://help.sap.com/doc/abapdocu_cp_index_htm/CLOUD/en-US/index.htm?file=abenabap_reference.htm) 

  
### Useful ADT Shortcuts

Here are some useful ADT keyboard shortcuts for the ABAP development in Eclipse.

![ADT Shortcuts](images/adt_shortcuts.png)

More useful ADT shortcuts can be found here: [Link](https://blogs.sap.com/2013/11/21/useful-keyboard-shortcuts-for-abap-in-eclipse/).

> **Info**: You can display the full list of available shortcuts in the **Show Key Assit** in ADT by pressing **Ctrl+Shift+L**.
 
</details>


## Summary 
[^Top of page](#)

You can continue with the next exercise - **[Exercise 1: Create Database Table and Generate UI Service](../ex01/README.md)**

---
