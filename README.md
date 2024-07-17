# `EduTracker v0.1` School Management dApp  
Development project for graduation and certification of ICP HUB Mexico June-July 2024!  
  
## Description of the EduTracker v0.1 dApp:  
`EduTracker` is a comprehensive application designed in the `Motoko` programming language developed by `DFinity` for the `Internet Computer ICP Blockchain`. EduTracker Pro is designed to manage Schools student and teacher information, monitor student academic progress, and automate administrative processes, optimizing educators' time and effort.  

`Note: This might not be the best, more efficient or optimal code to accomplish this, but this certainly does the job, I did what I could with the lil knowledge I have gathered this past few weeks, So if you have any advise or feedback please let me know, I would appreciate it a lot, Thanks.`

  
## Methods and Functions Used in the Current Motoko Code:  
  
**Add Students**    
- Creation of HashMap: `Students.Hashmap`  
- `Students.put` HashMap: Adds students to the HashMap  
  
**Delete Students**    
- `Students.delete(delete)`  
- `Switch/Case` Used to check if the teacher's name input exists or not! If it doesn't exist, it returns a message; if it does, it deletes it.  

**Add Teachers**    
- `if/else:` Conditions for error/result deployment  
- `result:` error deployment when not all fields are filled  
- Creation of HashMap: `Professors.Hashmap`  
- `Professors.put` HashMap  
  
**Delete Teachers**    
- `Professors.delete(delete)`  
- Uses `Switch/Case` to check if the teacher's name input exists or not! If it doesn't exist, it returns a message; if it does, it deletes it.  
  
**Other Functions and Methods Used:**    
- `Types:` Students, Years, Months, Weeks, Days, Tracker, Subjects, Scores  
- `Nested Types:` Types containing elements within other Types with other elements.  
- `Concatenation` in the response message.  
- `await` Allows us to wait for an asynchronous message to respond before continuing the code.  
- `and & not` used to ensure no field is left blank when adding a new Teacher to the database.  
- `Module:` Moves all Types to a new module folder and adds Public to the variables; in the main.mo, Types are imported and modified as MyTypes.students.  
  
----------------------------------------------------  
Developer: Cesar Anaya    
[Twitter](https://x.com/IC_Pirate)    
[GitHub](https://github.com/Czarean)    
czardcryptopirate@gmail.com    
Discord: crypto_pirate.  

I am a Junior Motoko developer. Motoko is my first language, and if you wish to help or advise me on the code, I would be very grateful and excited to collaborate and learn from other Motoko and Frontend developers. You can contact me via email, or private message on my X (Twitter) account, or Discord.

______________________________________________________________________________________________________________________________________________

## -------My Vision for the Fully Completed EduTracker Pro------

## EduTracker Pro and its Main Features    
**Student and Teacher Information Management:**    
- `Database:` Stores detailed information about students and teachers, including personal data, academic history, and contacts.  
- `Personalized Profile:` Each student and teacher has a personalized profile with relevant and updated information.  
  
**Student Progress Tracking:**    
- `Grades Record:` Allows teachers to easily enter and update grades.  
- `Progress Report:` Generates detailed reports on each student's academic performance.  
- `Alerts and Notifications:` Sends automatic alerts to students and parents about academic performance and areas needing attention.  
  
**Automation of Administrative Processes:**    
- `Report Generation:` Instantly creates administrative and academic reports.  
  
**Intuitive and User-Friendly Interface:**    
- `Interactive Dashboard:` An easy-to-use control panel providing an overview of the current state of the school.  
- `Mobile Access via Web Browser:` Compatible with mobile devices so that students and teachers can access information from anywhere.  
  
**Security and Privacy:**    
- `Data Protection:` Uses encryption and robust security measures to protect the personal information of students and teachers.  
- `Controlled Access:` Allows setting specific access permissions for different users, ensuring only authorized personnel can access sensitive information.  
  
**Benefits:**    
- `Administrative Efficiency:` Significantly reduces the time spent on administrative tasks, allowing teachers to focus more on teaching.  
- `Improved Academic Performance:` Facilitates personalized tracking and support for each student, promoting better academic performance.  
- `Effective Communication:` Enhances communication between teachers, students, and parents through automated notifications and reports.  
- `Quick Access to Information:` Provides instant access to academic and administrative information, improving decision-making.  
  
EduTracker Pro is the ideal solution for any educational institution that wants to modernize and optimize its daily operations, promoting a more efficient and effective educational environment.

______________________________________________________________________________________________________________________________________________

## Benefits of Developing EduTracker Pro on the ICP Blockchain  

**Security and Transparency:**    
- `Data Integrity:` The blockchain ensures that all student and teacher records are immutable and verifiable, preventing manipulation and fraud.  
- `Transparency:` Transactions and data changes can be audited in real-time, ensuring transparency in academic and administrative information management.  
  
**Decentralization:**    
- `Elimination of Intermediaries:` Operating on a decentralized network removes intermediaries, reducing costs and administrative complexity.  
- `Autonomy:` The school has full control over its data and processes, without relying on centralized service providers.  
  
**Accessibility and Availability:**    
- `Global Access:` Information can be accessed from anywhere in the world, allowing students and teachers to access their data at any time.  
- `High Availability:` ICP's decentralized infrastructure ensures that the application is available 24/7 without the risk of downtime due to centralized server issues.  
  
**Reduced Costs:**    
- `Reduction of Infrastructure Costs:` Using the ICP blockchain eliminates the need for expensive centralized servers and maintenance infrastructure.  
- `Economic Transactions:` Operations on the ICP blockchain are generally more cost-effective compared to fees for centralized services.  
  
**Privacy and Data Control:**    
- `Protection of Personal Data:` Sensitive data of students and teachers is encrypted and only accessible to authorized users, complying with privacy regulations.  
- `Data Ownership:` Users have control over their personal data, managing its use and access.  
  
**Innovation and Future-Proofing:**    
- `Innovative Ecosystem:` Developing on the ICP blockchain places the application within one of the most advanced and emerging technologies, facilitating the integration of future innovations.  
- `Technological Evolution:` The ICP blockchain is designed to evolve and scale, ensuring that the application can grow and adapt to new demands without significant restructuring.  
  
**Trust and Credibility:**    
- `Blockchain Reputation:` Using the ICP blockchain can increase user confidence in the integrity and security of the application.  
- `Regulatory Compliance:` Facilitates compliance with educational and data protection regulations by providing immutable and verifiable records.  

**Intelligent Automation:**    
- `Smart Contracts:` The use of smart contracts allows the automation of administrative and academic processes, such as grade recording and certificate generation, with minimal human intervention.

## Summary  
Developing EduTracker Pro on the ICP blockchain not only provides a secure, transparent, and efficient platform but also empowers educational institutions with advanced and globally accessible tools. This integration ensures that the application is prepared to face future challenges, offering a high-quality and reliable educational experience.
