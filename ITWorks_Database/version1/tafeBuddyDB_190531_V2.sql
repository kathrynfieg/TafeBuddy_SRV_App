-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema db_tafebuddy
-- -----------------------------------------------------
DROP DATABASE if exists db_tafebuddy;
-- -----------------------------------------------------
-- Schema db_tafebuddy
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_tafebuddy` DEFAULT CHARACTER SET latin1 ;
USE `db_tafebuddy` ;

-- -----------------------------------------------------
-- Table `db_tafebuddy`.`campus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`campus` (
  `CampusCode` CHAR(3) NOT NULL,
  `CampusName` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`CampusCode`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

--
-- Dumping data for table `campus`
--

LOCK TABLES `campus` WRITE;
/*!40000 ALTER TABLE `campus` DISABLE KEYS */;
INSERT INTO `campus` VALUES ('ADL','Adelaide City'),('BER','Berri'),('BVA','Barossa Valley'),('ELZ','Elizabeth'),('GIL','Gilles Plains'),('MTB','Mount Barker'),('MTG','Mount Gambier'),('NOA','Noarlunga'),('PAD','Port Adelaide'),('PPI','Port Pirie'),('WHY','Whyalla');
/*!40000 ALTER TABLE `campus` ENABLE KEYS */;
UNLOCK TABLES;

-- -----------------------------------------------------
-- Table `db_tafebuddy`.`competency`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`competency` (
  `TafeCompCode` VARCHAR(10) NOT NULL,
  `NationalCompCode` VARCHAR(20) NOT NULL,
  `CompetencyName` VARCHAR(128) NOT NULL,
  `Hours` INT(11) NOT NULL,
  PRIMARY KEY (`TafeCompCode`),
  INDEX `NationalCompCode` (`NationalCompCode` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

--
-- Dumping data for table `competency`
--

LOCK TABLES `competency` WRITE;
/*!40000 ALTER TABLE `competency` DISABLE KEYS */;
INSERT INTO `competency` VALUES ('','BSBEBU501A','Investigate and design e business solutions',50),('AABEM','ICADMT403A','Produce and edit digital images',40),('AABEN','ICAGAM301A','Apply simple modelling techniques',50),('AABES','ICAGAM403A','Create design documents for interactive games',30),('AABET','ICAGAM409A','Create 3-D characters for interactive games',40),('AABEX','ICAGAM413A','Design and create 3-D digital models',50),('AABEY','ICAGAM501A','Create design concepts for digital games and 3-D media',30),('AABEZ','ICAGAM503A','Create a complex 3-D interactive computer game',60),('AABFA','ICAGAM512A','Create and implement designs for a 3-D games environment',50),('AABFB','ICAGAM518A','Animate physical attributes of models and elements',30),('AABFD','ICAGAM520A','Create and combine 3-D digital games and components',30),('AABFE','ICAGAM521A','Create interactive 3-D environments for digital games',30),('AABFF','ICAGAM523A','Collaborate in the design of 3-D game levels and environments',40),('AABFG','ICAGAM525A','Apply digital texturing for the 3-D environment in digital games',30),('AABFH','ICAGAM526A','Create complex 3-D characters for games',60),('AABFK','ICAICT418A','Contribute to copyright ethics and privacy in an IT environment',40),('AABFL','ICAICT419A','Work effectively in the digital media industry',30),('AABPM','ICAPRG301A','Apply introductory programming techniques',40),('AABPN','ICAPRG405A','Automate processes',40),('AABXT','ICADBS403A','Create basic databases',40),('AACBG','ICAICT403A','Apply software development methodologies',20),('AACBH','ICAPRG506A','Design application architecture',40),('AACBK','ICAPRG603A','Create cloud computing services',60),('AACBL','ICASAD505A','Develop technical requirements for business solutions',30),('AACBM','ICAPMG609A','Plan and direct complex IT projects',80),('AACSY','ICAICT421A','Connect maintain and configure hardware components',40),('AACSZ','ICASAS410A','Identify and resolve client IT problems',40),('AACTA','ICASAS412A','Action change requests',40),('AACTB','ICASAS414A','Evaluate system status',20),('AACTC','ICASAS416A','Implement maintenance procedures',10),('AACTE','ICASAS601A','Implement change-management processes',30),('AACWG','ICPMM321C','Capture a digital image',40),('AADLA','ICAPRG507A','Implement security for applications',50),('AAGBP','ICTTEN5217A','Plan a wireless mesh network',60),('AAGBR','ICTTEN6172A','Design and configure an IP-MPLS network with virtual private network tunnelling',80),('AAHCY','AAHCY','Cyber Security',0),('AAHME','AAHME','TBA',0),('AAHSP','RIICOM301D','Communicate information',30),('BAACW','ICADBS502A','Design a database',50),('BAACX','ICADBS504A','Integrate database with a website',25),('BAACY','ICADMT401A','Create visual design components for digital media',40),('BAACZ','ICADMT402A','Produce interactive animation',60),('BAADA','ICADMT501A','Incorporate and edit digital video',50),('BAADB','ICAGAM504A','Manage interactive media production',40),('BAADC','ICAGAM516A','Animate a 3-D character for digital games',40),('BAADD','ICAGAM517A','Produce a digital animation sequence',60),('BAADE','ICAICT101A','Operate a personal computer',30),('BAADF','ICAICT102A','Operate word processing applications',30),('BAADG','ICAICT103A','Use communicate and search securely on the internet',50),('BAADH','ICAICT104A','Use digital devices',30),('BAADK','ICAICT105A','Operate spreadsheet applications',30),('BAADL','ICAICT106A','Operate presentation packages',25),('BAADM','ICAICT107A','Use personal productivity tools',20),('BAADN','ICAICT108A','Use digital literacy skills to access the internet',20),('BAADP','ICAICT201A','Use computer operating systems and hardware',60),('BAADR','ICAICT202A','Work and communicate effectively in an IT environment',40),('BAADS','ICAICT204A','Operate a digital media technology package',40),('BAADT','ICAICT203A','Operate application software packages',60),('BAADW','ICAICT206A','Install software applications',20),('BAADX','ICAICT207A','Integrate commercial computing packages',60),('BAAEA','ICAICT210A','Operate database applications',40),('BAAEC','ICAICT301A','Create user documentation',20),('BAAED','ICAICT302A','Install and optimise operating system software',20),('BAAEE','ICAICT303A','Connect internal hardware components',20),('BAAEF','ICAICT304A','Implement system software changes',40),('BAAEG','ICAICT305A','Identify and use current industry-specific technologies',60),('BAAEH','ICAICT307A','Customise packaged software applications for clients',80),('BAAEK','ICAICT308A','Use advanced features of computer applications',40),('BAAEL','ICAICT401A','Determine and confirm client business requirements',40),('BAAEM','ICAICT404A','Use online learning tools',30),('BAAEN','ICAICT406A','Build a graphical user interface',20),('BAAEP','ICAICT408A','Create technical documentation',20),('BAAER','ICAICT409A','Develop macros and templates for clients using standard products',60),('BAAEW','ICAICT511A','Match IT needs with the strategic direction of the enterprise',50),('BAAEX','ICAICT514A','Identify and manage the implementation of current industry-specific technologies',60),('BAAEZ','ICAICT515A','Verify client business requirements',40),('BAAFA','ICANWK301A','Provide network systems administration',60),('BAAFB','ICANWK302A','Determine and action network problems',50),('BAAFC','ICANWK303A','Configure and administer a network operating system',70),('BAAFD','ICANWK304A','Administer network peripherals',20),('BAAFE','ICANWK305A','Install and manage network protocols',40),('BAAFF','ICANWK401A','Install and manage a server',40),('BAAFG','ICANWK402A','Install and configure virtual machines for sustainable ICT',50),('BAAFH','ICANWK403A','Manage network and data integrity',40),('BAAFK','ICANWK404A','Install operate and troubleshoot a small enterprise branch network',60),('BAAFL','ICANWK405A','Build a small wireless local area network',20),('BAAFM','ICANWK406A','Install configure and test network security',50),('BAAFN','ICANWK408A','Configure a desktop environment',40),('BAAFP','ICANWK411A','Deploy software to networked computers',40),('BAAFR','ICANWK501A','Plan implement and test enterprise communication solutions',80),('BAAFS','ICANWK502A','Implement secure encryption technologies',20),('BAAFT','ICANWK503A','Install and maintain valid authentication processes',25),('BAAFW','ICANWK504A','Design and implement an integrated server solution',50),('BAAFX','ICANWK505A','Design build and test a network server',50),('BAAFY','ICANWK506A','Configure verify and troubleshoot WAN links and IP services in a medium enterprise network',90),('BAAFZ','ICANWK507A','Install operate and troubleshoot medium enterprise routers',120),('BAAGA','ICANWK508A','Install operate and troubleshoot medium enterprise switches',90),('BAAGB','ICANWK509A','Design and implement a security perimeter for ICT networks',60),('BAAGC','ICANWK511A','Manage network security',80),('BAAGD','ICANWK518A','Design an enterprise wireless local area network',30),('BAAGE','ICANWK525B','Configure an enterprise virtual computing environment',60),('BAAGF','ICANWK535A','Install an enterprise virtual computing environment',60),('BAAGG','ICANWK527B','Manage an enterprise virtual computing environment',60),('BAAGH','ICANWK529A','Install and manage complex ICT networks',100),('BAAGK','ICANWK601A','Design and implement a security system',90),('BAAGL','ICANWK602A','Plan configure and test advanced server based security',80),('BAAGM','ICANWK604A','Plan and configure advanced internetwork switching solutions',120),('BAAGN','ICANWK605A','Design and configure secure integrated wireless systems',40),('BAAGP','ICANWK606A','Implement voice applications over secure wireless networks',40),('BAAGR','ICANWK607A','Design and implement wireless network security',60),('BAAGS','ICANWK609A','Configure and manage intrusion prevention system on network sensors',40),('BAAGT','ICANWK612A','Plan and manage troubleshooting advanced integrated IP networks',120),('BAAGW','ICAPMG401A','Support small scale IT projects',60),('BAAGX','ICAPMG501A','Manage IT projects',80),('BAAGY','ICAPRG402A','Apply query language',60),('BAAGZ','ICAPRG403A','Develop data-driven applications',60),('BAAHA','ICAPRG404A','Test applications',50),('BAAHB','ICAPRG406A','Apply introductory object-oriented language skills',60),('BAAHC','ICAPRG410A','Build a user interface',50),('BAAHD','ICAPRG413A','Use a library or pre-existing components',40),('BAAHE','ICAPRG414A','Apply introductory programming skills in another language',60),('BAAHF','ICAPRG415A','Apply skills in object-oriented design',40),('BAAHG','ICAPRG418A','Apply intermediate programming skills in another language',80),('BAAHH','ICAPRG419A','Analyse software requirements',60),('BAAHL','ICAPRG501A','Apply advanced object-oriented language skills',80),('BAAHM','ICAPRG502A','Manage a project using software management tools',60),('BAAHN','ICAPRG503A','Debug and monitor applications',40),('BAAHP','ICAPRG504A','Deploy an application to a production environment',40),('BAAHR','ICAPRG505A','Build advanced user interface',60),('BAAHS','ICAPRG520A','Validate an application design against specifications',40),('BAAHT','ICAPRG523A','Apply advanced programming skills in another language',80),('BAAHW','ICAPRG527A','Apply intermediate object-oriented language skills',60),('BAAHX','ICAPRG529A','Apply testing techniques for software development',40),('BAAHY','ICAPRG601A','Develop advanced mobile multi-touch applications',80),('BAAKA','ICASAS202A','Apply problem solving techniques to routine IT malfunctions',20),('BAAKB','ICASAS203A','Connect hardware peripherals',20),('BAAKC','ICASAS206A','Detect and protect from spam and destructive software',10),('BAAKD','ICASAS207A','Protect and secure information assets',20),('BAAKE','ICASAS209A','Connect and use a home based local wireless network',30),('BAAKF','ICASAS301A','Run standard diagnostic tests',20),('BAAKG','ICASAS303A','Care for computer hardware',20),('BAAKH','ICASAS304A','Provide basic system administration',20),('BAAKK','ICASAS305A','Provide IT advice to clients',40),('BAAKL','ICASAS306A','Maintain equipment and software',20),('BAAKM','ICASAS307A','Install, configure and secure a small office home office network',50),('BAAKR','ICASAS421A','Support users and troubleshoot desktop applications',20),('BAAKS','ICASAS424A','Support different operating systems',40),('BAAKT','ICASAS425A','Configure and troubleshoot operating system software',40),('BAAKW','ICASAS426A','Locate and troubleshoot IT equipment system and software faults',40),('BAAKY','ICASAS503A','Perform systems tests',30),('BAAKZ','ICASAS504A','Develop and conduct client acceptance test',20),('BAALA','ICAWEB201A','Use social media web tools for collaboration and engagement',20),('BAALB','ICAWEB301A','Create a simple markup language document',30),('BAALC','ICAWEB302A','Build simple websites using commercial programs',40),('BAALD','ICAWEB303A','Produce digital images for the web',30),('BAALE','ICAWEB401A','Design a website to meet technical requirements',40),('BAALF','ICAWEB402A','Confirm accessibility of websites for people with special needs',10),('BAALG','ICAWEB403A','Transfer content to a website using commercial packages',20),('BAALH','ICAWEB409A','Develop cascading style sheets',20),('BAALK','ICAWEB410A','Apply web authoring tool to convert client data for websites',20),('BAALL','ICAWEB411A','Produce basic client-side script for dynamic web pages',40),('BAALM','ICAWEB413A','Optimise search engines',50),('BAALN','ICAWEB414A','Design simple web page layouts',50),('BAALP','ICAWEB415A','Produce server-side script for dynamic web pages',60),('BAALS','ICAWEB422A','Ensure website access and useability',15),('BAALT','ICAWEB424A','Evaluate and select a web hosting service',15),('BAALW','ICAWEB425A','Apply structured query language to extract and manipulate data',60),('BAALX','ICAWEB429A','Create a markup language document to specification',20),('BAALY','ICAWEB501A','Build a dynamic website',60),('BAALZ','ICAWEB502A','Create dynamic web pages',40),('BAAMA','ICAWEB503A','Create web-based programs',60),('BAAMB','ICAWEB504A','Build a document using eXtensible markup language',30),('BAAMC','ICAWEB505A','Develop complex web page layouts',40),('BAAMD','ICAWEB506A','Develop complex cascading style sheets',40),('BAAME','ICAWEB508A','Develop website information architecture',30),('BAAMF','ICAWEB509A','Use site server tools for transaction management',20),('BAAMG','ICAWEB510A','Analyse information and assign meta-tags',20),('BAAMH','ICAWEB516A','Research and apply emerging web technology trends',80),('BAAMK','ICTPMG8143A','Manage a telecommunications project',50),('BAAML','ICTSUS5187A','Implement server virtualisation for a sustainable ICT system',80),('BAAMM','ICTSUS6233A','Integrate sustainability in ICT planning and design projects',55),('BAAMN','ICTSUS6234A','Establish a business case for sustainability and competitive advantage in ICT projects',55),('BAAMP','ICTTEN4198A','Install configure and test an internet protocol network',50),('BAAMR','ICTTEN4199A','Install configure and test a router',60),('BAAMS','ICTTEN5201A','Install configure and test a server',60),('BAAMT','ICTTEN6206A','Produce an ICT network architecture design',60),('BAAMW','CPPSEC5004A','Prepare security risk management plan',40),('BAAMX','ICAICT205A','Design basic organisational documents using computing packages',40),('BABGG','ICAPMG608A','Manage IT project systems implementation',40),('BABLG','ICAICT609A','Lead the evaluation and implementation of current industry-specific technologies',80),('BABNA','BSBWHS304A','Participate effectively in WHS Communication and Consultative Processes',30),('BABNM','ICANWK608A','Configure network devices for a secure network infrastructure',40),('BABNN','ICANWK616A','Manage security privacy and compliance of cloud service deployment',40),('CABRE','CUAPPM407','Create storyboards',40),('CABRF','CUADIG301','Prepare video assets',30),('DAAKR','CUACAM301','Shoot material for screen productions',60),('DAAKZ','CUADIG401','Author interactive media',50),('DAAMW','CUAPOS401','Edit screen content for fast turnaround',30),('DAASN','CUADIG405','Produce innovative digital images',50),('DAATB','CUAPHI504','Employ specialised imaging technologies',80),('DFNW','CUVVSP14B','Apply techniques to produce drawings',50),('DXCP1','DXC_Prep1','DXC Preparation Session 1',0),('EAACE','CUVPHI519A','Investigate and exploit innovative imaging options',80),('EDPX','CUFDIG304A','Create visual design components',30),('EDPY','CUFDIG401A','Author interactive media',50),('ENGG','ENGG','Learning Support Activities (General)',0),('FABNX','BSBWHS201','Contribute to health and safety of self and others',20),('FABRH','BSBCRT401','Articulate  present and debate ideas',40),('FABRK','BSBCRT501','Originate and develop concepts',30),('FABRL','BSBSUS201','Participate in environmentally sustainable work practices',20),('FABRM','BSBSUS301','Implement and monitor environmentally sustainable work practices',40),('FABRP','BSBWHS304','Participate effectively in WHS communication and consultation processes',30),('FABRS','BSBWHS501','Ensure a safe workplace',60),('FABXA','BSBRES401','Analyse and present research information',40),('FABXC','BSBEBU401','Review and maintain a website',50),('FABZM','BSBWHS401','Implement and monitor WHS policies, procedures and programs to meet legislative requirements',50),('FACAK','BSBWOR404','Develop work priorities',40),('FACBW','BSBCUS402','Address Customer Needs',50),('FACHP','BSBMGT403','Implement continuous improvement',40),('FACNL','BSBSUS401','Implement and monitor environmentally sustainable work practices',40),('FTMB','BSBOHS201A','Participate in OHS processes',20),('FTML','BSBOHS509A','Ensure a safe workplace',60),('FTNE','BSBCMM101A','Apply basic communication skills',40),('FTPD','BSBITU304A','Produce Spreadsheet',35),('FTPN','BSBSUS201A','Participate in environmentally sustainable work practices',20),('FTPP','BSBSUS301A','Implement and monitor environmentally sustainable work practices',40),('FTXA','BSBEBU401A','Review and maintain a website',50),('FWFN','BSBOHS302B','Participate effectively in OHS communication and consultative processes',30),('FWFP','BSBCRT501A','Originate and develop concepts',30),('HFME','CUFANM301A','Create 2D digital animations',35),('HFMF','CUFANM302A','Create 3D digital animations',75),('HFMG','CUFANM303A','Create 3D digital models',75),('HFMK','CUFANM402A','Create digital visual effects',70),('HFMR','CUFCAM201A','Assist with a basic camera shoot',30),('HFMS','CUFCAM301A','Shoot material for screen productions',60),('HFNA','CUFDIG301A','Prepare video assets',30),('HFNB','CUFDIG302A','Author interactive sequences',40),('HFNC','CUFDIG303A','Produce and prepare photo images',20),('HFPS','CUFPOS401A','Edit screen content for fast turnaround',30),('HFRA','CUFPPM404A','Create storyboards',40),('MBGG','BSBOHS402B','Contribute to the implementation of the OHS consultation process',40),('MBMZ','BSBCRT401A','Articulate present and debate ideas',40),('NONAAHCS','NONAAHCS','Linux For Beginners',0),('TAAAM','ICTDBS504','Integrate database with a website',25),('TAAAS','ICTGAM504','Manage interactive media production',40),('TAAAW','ICTICT101','Operate a personal computer',30),('TAAAX','ICTICT102','Operate word-processing applications',30),('TAAAY','ICTICT103','Use communicate and search securely on the internet',50),('TAAAZ','ICTICT104','Use digital devices',30),('TAABA','ICTICT201','Use computer operating systems and hardware',60),('TAABB','ICTICT202','Work and communicate effectively in an ICT environment',40),('TAABC','ICTICT203','Operate application software packages',60),('TAABD','ICTICT204','Operate a digital media technology package',40),('TAABE','ICTICT301','Create user documentation',20),('TAABF','ICTICT302','Install and optimise operating system software',20),('TAABG','ICTICT401','Determine and confirm client business requirements',40),('TAABH','ICTICT404','Use online learning tools',30),('TAABK','ICTICT408','Create technical documentation',20),('TAABL','ICTICT418','Contribute to copyright  ethics and privacy in an ICT environment',40),('TAABM','ICTICT419','Work effectively in the digital media industry',30),('TAABN','ICTICT421','Connect  maintain and configure hardware components',40),('TAABR','ICTICT511','Match ICT needs with the strategic direction of the enterprise',50),('TAABS','ICTICT515','Verify client business requirements',40),('TAABX','ICTNWK401','Install and manage a server',40),('TAABY','ICTNWK402','Install and configure virtual machines for sustainable ICT',50),('TAABZ','ICTNWK403','Manage network and data integrity',40),('TAACA','ICTNWK404','Install  operate and troubleshoot a small enterprise branch network',60),('TAACB','ICTNWK405','Build a small wireless local area network',20),('TAACC','ICTNWK502','Implement secure encryption technologies',20),('TAACD','ICTNWK506','Configure  verify and troubleshoot WAN links and IP services in a medium enterprise network',90),('TAACE','ICTNWK507','Install  operate and troubleshoot medium enterprise routers',120),('TAACF','ICTNWK508','Install  operate and troubleshoot medium enterprise switches',90),('TAACG','ICTNWK509','Design and implement a security perimeter for ICT networks',60),('TAACK','ICTNWK529','Install and manage complex ICT networks',100),('TAACL','ICTNWK601','Design and implement a security system',90),('TAACM','ICTNWK602','Plan  configure and test advanced server based security',80),('TAACN','ICTNWK607','Design and implement wireless network security',60),('TAACP','ICTPMG401','Support small scale ICT projects',60),('TAACR','ICTPMG501','Manage ICT Projects',80),('TAACS','ICTPMG608','Manage ICT project systems implementation',40),('TAACT','ICTPMG609','Plan and direct complex ICT projects',80),('TAACW','ICTPRG402','Apply query language',60),('TAACX','ICTPRG403','Develop data-driven applications',60),('TAACY','ICTPRG404','Test applications',50),('TAACZ','ICTPRG405','Automate processes',40),('TAADA','ICTPRG406','Apply introductory object-oriented language skills',60),('TAADB','ICTPRG410','Build a user interface',50),('TAADC','ICTPRG414','Apply introductory programming skills in another language',60),('TAADD','ICTPRG415','Apply skills in object-oriented design',40),('TAADE','ICTPRG418','Apply intermediate programming skills in another language',80),('TAADF','ICTPRG419','Analyse software requirements',60),('TAADG','ICTPRG501','Apply advanced object-oriented language skills',80),('TAADH','ICTPRG502','Manage a project using software management tools',60),('TAADK','ICTPRG503','Debug and monitor applications',40),('TAADL','ICTPRG504','Deploy an application to a production environment',40),('TAADM','ICTPRG520','Validate an application design against specifications',40),('TAADN','ICTPRG523','Apply advanced programming skills in another language',80),('TAADP','ICTPRG527','Apply intermediate object-oriented language skills',60),('TAADR','ICTPRG529','Apply testing techniques for software development',40),('TAADS','ICTSAS301','Run standard diagnostic tests',20),('TAADT','ICTSAS307','Install  configure and secure a small office or home office network',50),('TAADX','ICTSAS410','Identify and resolve client ICT problems',40),('TAADY','ICTSAS412','Action change requests',40),('TAADZ','ICTSAS425','Configure and troubleshoot operating system software',40),('TAAEA','ICTSAS426','Locate and troubleshoot ICT equipment  system and software faults',40),('TAAEF','ICTWEB201','Use social media tools for collaboration and engagement',20),('TAAEG','ICTWEB401','Design a website to meet technical requirements',40),('TAAEH','ICTWEB402','Confirm accessibility of websites for people with special needs',10),('TAAEK','ICTWEB403','Transfer content to a website using commercial packages',20),('TAAEL','ICTWEB411','Produce basic client-side script for dynamic web pages',40),('TAAEM','ICTWEB424','Evaluate and select a web hosting service',15),('TAAEN','ICTWEB429','Create a markup language document to specification',20),('TAAEP','ICTWEB501','Build a dynamic website',60),('TAAER','ICTWEB502','Create dynamic web pages',40),('TAAES','ICTWEB503','Create web-based programs',60),('TAAET','ICTWEB516','Research and apply emerging web technology trends',80),('TAAEW','ICTICT303','Connect internal hardware components',20),('TAAEX','ICTSAS305','Provide ICT advice to clients',40),('TAAEY','ICTSAS306','Maintain equipment and software',20),('TAAFA','ICTDBS403','Create basic databases',40),('TAAFB','ICTDMT401','Create visual design components for digital media',40),('TAAFC','ICTDMT402','Produce interactive animation',60),('TAAFD','ICTDMT403','Produce and edit digital images',40),('TAAFE','ICTGAM413','Design and create 3-D digital models',50),('TAAFF','ICTICT106','Operate presentation packages',25),('TAAFG','ICTICT107','Use personal productivity tools',20),('TAAFH','ICTICT108','Use digital literacy skills to access the internet',20),('TAAFK','ICTICT205','Design basic organisational documents using computing packages',40),('TAAFL','ICTICT206','Install software applications',20),('TAAFM','ICTICT210','Operate database applications',40),('TAAFN','ICTICT304','Implement system software changes',40),('TAAFP','ICTICT307','Customise packaged software applications for clients',80),('TAAFR','ICTICT308','Use advanced features of computer applications',40),('TAAFS','ICTICT403','Apply software development methodologies',20),('TAAFT','ICTICT409','Develop macros and templates for clients using standard products',60),('TAAFW','ICTNWK303','Configure and administer a network operating system',70),('TAAFX','ICTNWK304','Administer network peripherals',20),('TAAFY','ICTNWK305','Install and manage network protocols',40),('TAAFZ','ICTNWK406','Install  configure and test network security',50),('TAAGA','ICTNWK408','Configure a desktop environment',40),('TAAGB','ICTNWK411','Deploy software to networked computers',40),('TAAGC','ICTPRG301','Apply introductory programming techniques',40),('TAAGD','ICTPRG413','Use a library or pre-existing components',40),('TAAGE','ICTSAS202','Apply problem-solving techniques to routine ICT malfunctions',20),('TAAGF','ICTSAS203','Connect hardware peripherals',20),('TAAGG','ICTSAS206','Detect and protect from spam and destructive software',10),('TAAGH','ICTSAS207','Protect and secure information assets',20),('TAAGK','ICTSAS209','Connect and use a home based local wireless network',30),('TAAGL','ICTSAS303','Care for computer hardware',20),('TAAGM','ICTSAS304','Provide basic system administration',20),('TAAGN','ICTWEB301','Create a simple markup language document',30),('TAAGP','ICTWEB302','Build simple websites using commercial programs',40),('TAAGR','ICTWEB303','Produce digital images for the web',30),('TAAGS','ICTWEB409','Develop cascading style sheets',20),('TAAGT','ICTWEB410','Apply web authoring tool to convert client data for websites',20),('TAAGW','ICTWEB413','Optimise search engines',50),('TAAGX','ICTWEB414','Design simple web page layouts',50),('TAAGY','ICTWEB415','Produce server-side script for dynamic web pages',60),('TAAGZ','ICTWEB422','Ensure website access and useability',15),('TAAHA','ICTWEB425','Apply structured query language to extract and manipulate data',60),('TAAHB','ICTWEB510','Analyse information and assign meta tags',20),('TAAHC','ICTDBS502','Design a database',50),('TAAHD','ICTDMT501','Incorporate and edit digital video',50),('TAAHE','ICTGAM516','Animate a 3-D character for digital games',40),('TAAHF','ICTGAM517','Produce a digital animation sequence',60),('TAAHG','ICTICT406','Build a graphical user interface',20),('TAAHH','ICTICT514','Identify and manage the implementation of current industry specific technologies',60),('TAAHK','ICTICT609','Lead the evaluation and implementation of current industry specific technologies',80),('TAAHL','ICTNWK501','Plan  implement and test enterprise communication solutions',80),('TAAHM','ICTNWK504','Design and implement an integrated server solution',50),('TAAHN','ICTNWK505','Design build and test a network server',50),('TAAHP','ICTNWK525','Configure an enterprise virtual computing environment',60),('TAAHR','ICTNWK527','Manage an enterprise virtual computing environment',60),('TAAHS','ICTNWK535','Install an enterprise virtual computing environment',60),('TAAHT','ICTNWK605','Design and configure secure integrated wireless systems',40),('TAAHW','ICTNWK608','Configure network devices for a secure network infrastructure',40),('TAAHX','ICTNWK616','Manage security  privacy and compliance of cloud service deployment',40),('TAAHY','ICTPRG505','Build advanced user interface',60),('TAAHZ','ICTPRG506','Design application architecture',40),('TAAKA','ICTPRG604','Create cloud computing services',60),('TAAKB','ICTSAS503','Perform systems tests',30),('TAAKC','ICTSAS504','Develop and conduct client acceptance test',20),('TAAKD','ICTWEB504','Build a document using eXtensible markup language',30),('TAAKE','ICTWEB505','Develop complex web page layouts',40),('TAAKF','ICTWEB506','Develop complex cascading style sheets',40),('TAAKG','ICTWEB508','Develop website information architecture',30),('TAAKH','ICTWEB509','Use site server tools for transaction management',20),('TAAKK','ICTNWK518','Design an enterprise wireless local area network',30),('TAAKL','ICTSAD505','Develop technical requirements for business solutions',30),('TAAKM','ICTICT105','Operate Spreadsheet Applications',30),('TAAMC','ICTTEN514','Install configure and test a server',60),('TAAMD','ICTTEN417','Install configure and test a router',60),('TAAME','ICTTEN416','Install configure and test an internet protocol network',50),('TAAMF','ICTTEN611','Produce an ICT network architecture design',60),('TAAMG','ICTSUS501','Implement server virtualisation for a sustainable ICT system',80),('TAAMH','ICTTEN517','Plan a wireless mesh network',60),('TAAMK','ICTTEN610','Design and configure an IP-MPLS network with virtual private network tunnelling',80),('TAAML','ICTSUS601','Integrate sustainability in ICT planning and design projects',55),('TABBY','ICTNWK306','Evaluate characteristics of cloud computing solutions and services',40),('TABDN','ICTWEB416','Customise content management system',80),('TABEE','ICTTEN422','Configure and troubleshoot advanced network switching',80),('TABEF','ICTNWK613','Develop plans to manage structured troubleshooting process of enterprise networks',40),('TABEG','VU21988','Utilise basic network concepts and protocols required in cyber security',80),('TABEH','VU21989','Test concepts and procedures for cyber security',60),('TABEK','VU21990','Recognise the need for cyber security in an organisation',60),('TABEL','VU21991','Implement network security infrastructure for an organisation',80),('TABEM','VU21992','Develop a cyber security industry project',120),('TABEN','VU21993','Secure a networked personal computer',60),('TABEP','VU21994','Perform basic cyber security data analysis',20),('TABER','VU21995','Manage the security infrastructure for the organisation',80),('TABES','VU21996','Evaluate and test an incident response plan for an enterprise',40),('TABET','VU21997','Expose website security vulnerabilities',40),('TABEW','ICTPRG407','Write script for software applications',40),('TABFA','ICTSAS420','Provide first-level remote help-desk support',30),('TABFB','ICTSAS421','Support users and troubleshoot desktop applications',20),('TABFC','ICTNWK407','Install and configure client-server applications and services',40),('TABFD','ICTICT415','Provide one-to-one instruction',20),('TABFE','ICTSAS518','Install and upgrade operating systems',50),('TABFF','ICTPRG412','Configure and maintain databases',50),('TABFG','ICTICT422','Participate in ICT services',20),('TABFH','ICTNWK409','Create scripts for networking',60),('TABFK','ICTSAS409','Manage risks involving ICT systems and technology',20),('UNKOWN','ICAGAM406A','Create visual design components for interactive games',40);
/*!40000 ALTER TABLE `competency` ENABLE KEYS */;
UNLOCK TABLES;


-- -----------------------------------------------------
-- Table `db_tafebuddy`.`department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`department` (
  `DepartmentCode` VARCHAR(8) NOT NULL,
  `Department` VARCHAR(64) NOT NULL,
  PRIMARY KEY (`DepartmentCode`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('KJ','Information Technology');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;


-- -----------------------------------------------------
-- Table `db_tafebuddy`.`lecturer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`lecturer` (
  `LecturerID` CHAR(9) NOT NULL,
  `GivenName` VARCHAR(64) NOT NULL,
  `LastName` VARCHAR(64) NOT NULL,
  `EmailAddress` VARCHAR(64) NOT NULL,
  PRIMARY KEY (`LecturerID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

--
-- Dumping data for table `lecturer`
--

LOCK TABLES `lecturer` WRITE;
/*!40000 ALTER TABLE `lecturer` DISABLE KEYS */;
INSERT INTO `lecturer` VALUES ('000010546','Julie','Ruiz','Julie.Ruiz@tafesa.edu.au'),('000010581','Santi','Ruiz','Santi.Ruiz@tafesa.edu.au'),('000010849','Kwok','Lau','Kwok.Lau@tafesa.edu.au'),('000010901','Nadil','Sundarapperuma','Nadil.Sundarapperuma@tafesa.edu.au'),('000011123','Danny','Sarris','Danny.Sarris@tafesa.edu.au'),('000011327','Stuart','Clement','Stuart.Clement@tafesa.edu.au'),('000011349','Vicki','Thomas','Vicki.Thomas@tafesa.edu.au'),('000011369','Kym','Bond','Kym.Bond@tafesa.edu.au'),('000011942','Paul','Kasperski','Paul.Kasperski@tafesa.edu.au'),('000012085','Glenn','McCallum','Glenn.McCallum@tafesa.edu.au'),('000012109','Prem','Paelchen','Prem.Paelchen@tafesa.edu.au'),('000012439','Alex','Worrall','alexander.worrall@tafesa.edu.au'),('000012517','Greg','Lynch','Greg.Lynch@tafesa.edu.au'),('000012763','Deb','Farrell','Deb.Farrell@tafesa.edu.au'),('000012974','Stuart','McIntyre','Stuart.McIntyre@tafesa.edu.au'),('000013015','James','Corbett','James.Corbett@tafesa.edu.au'),('000013047','Alex ','Zhao','Alex .Zhao@tafesa.edu.au'),('000013125','Paul','Burke','Paul.Burke@tafesa.edu.au'),('000013221','Karina','Miegel','Karina.Miegel@tafesa.edu.au'),('000013268','Trevor','Learey','Trevor.Learey@tafesa.edu.au'),('000013289','Russell','James','Russell.James@tafesa.edu.au'),('000013311','Heath','Barratt','Heath.Barratt@tafesa.edu.au'),('000013490','Stephen','Hindle','Stephen.Hindle@tafesa.edu.au'),('000013514','Dale','Van Heer','Dale.Van Heer@tafesa.edu.au'),('000013540','Jason','Butler','Jason.Butler@tafesa.edu.au'),('000013605','Karyn','Beyne','Karyn.Beyne@tafesa.edu.au'),('000017445','Roberto','Cevallos','Roberto.Cevallos@tafesa.edu.au'),('000276592','Craig','Moody','Craig.Moody@tafesa.edu.au'),('000320151','Daryn','Piltz','Daryn.Piltz@tafesa.edu.au'),('000857816','Jacquelin','Brooks','Jackie.Brooks@tafesa.edu.au'),('000928152','Michelle','Minkoff','Michelle.Minkoff@tafesa.edu.au'),('000944814','Melissa','Huikeshoven','Melissa.Huikeshoven@tafesa.edu.au'),('001034176','Brenton','McKinlay','Brenton.McKinlay@tafesa.edu.au'),('001038996','Mustafa','Abdelwahab','Mustafa.Abdelwahab@tafesa.edu.au');
/*!40000 ALTER TABLE `lecturer` ENABLE KEYS */;
UNLOCK TABLES;


-- -----------------------------------------------------
-- Table `db_tafebuddy`.`subject`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`subject` (
  `SubjectCode` VARCHAR(32) NOT NULL,
  `SubjectDescription` VARCHAR(256) NOT NULL,
  PRIMARY KEY (`SubjectCode`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES ('1INE','Use Communicate and Search Securely on the internet'),('1OPC','Operate a Personal Computer'),('1OPP','Operate Presentation Packages'),('1OSS','Operate Spreadsheet Applications'),('1OWP','Operate Word-Processing Applications'),('1PPT','Use Personal Productivity Tools'),('1UDD','Use Digital Devices'),('2CUH','Connect and Use Hardware'),('2DMP','Operate a Digital Media Technology Package'),('2IOS','Install and Optimise Software'),('2OPD','Operate Database Application'),('2PSI','Protect and Secure Information'),('2SMT','Social Media Tools'),('2SWP','Sustainable Work Practices'),('2UAP','Use Application Packages'),('2WHS','Workplace Health & Safety'),('2WIT','Work in an IT Environment'),('3ACA','Advanced Features of Computer Applications'),('3CFCH','Care for Computer Hardware'),('3CIHW','Connect Internal Hardware'),('3CLD','Cloud Computing'),('3CUD','Create User Documentation'),('3ESS','Computing Essentials'),('3IOOS','Install and Optimise OS Software'),('3MEAS','Maintain Equipment & Software'),('3PBSA','Provide Basic Systems Adminstration'),('3PITA','Provide IT Advice to Clients'),('3PRB','Programming Basics'),('3RSDT','Run Standard Diagnostic Tests'),('3SPT','IT Support'),('3SWP','Sustainable Work Practices'),('3WHS','Workplace Health & Safety'),('3WNF','Windows Networking Fundamentals'),('3WSF','Windows Server Fundamentals'),('42DA','2D Animation (Flash)'),('43DM','3D Modelling (3DS Max)'),('4ACN','Address Customer Needs'),('4ACR','Action Change Requests'),('4APN','Automating Process with Powershell'),('4AWS','Administering Windows Server'),('4BSWN','Build Small Wireless Networks'),('4BUI','Build a User Interface'),('4C#B','C# Basics'),('4C#M','C# Mobile'),('4CDE','Configure Desktop Environment'),('4CEP','Copyright Ethics and Privacy'),('4CIN','Cisco Introduction to Networks'),('4CIRS6','Cisco Introduction Routing Switching'),('4CMDB','Configure & Maintain Databases'),('4CMS','Content Management Systems'),('4CNS','Create Network Scripts'),('4CYACI','Analyse and Communicate Information'),('4CYBCS','Basic IT skills for cyber security'),('4CYCSF','Cyber security fundamentals'),('4CYDAT','Introduction to Data collection and analysis'),('4CYIRP','Incident Response Plan'),('4CYITS','Introduction to scripting'),('4CYMAN','Manage system security'),('4CYMIR','Manage ICT Risks'),('4CYNET','Networking fundamentals for cyber security'),('4CYPRO','Cyber security industry project'),('4CYSEC','Network Security'),('4CYTST','System testing procedures'),('4CYWEB','Website security'),('4CYWHS','WH&S for Cyber Security'),('4DBB','Database Basics'),('4DBB_GEN','Database Basics'),('4DCR','Determine Client Requirements'),('4DMT','Develop Macros and Templates'),('4DVP','Digital Video Production'),('4DWL','Design Webpage Layouts'),('4DWP','Develop Work Priorities'),('4DWR','Determine Website Requirements'),('4HTML5','HyperText Markup Language'),('4HTML5_GEN','Hypertext Markup Language'),('4ICI','Implement Continuous Improvement'),('4IMWS','Install Manage Windows Server'),('4IMWS_INT','Install Manage Windows Server (INT)'),('4IRCP','Identify Resolve Client Problems'),('4IVM','Install Virtual Machines'),('4JAB','Java Basics'),('4JSB','Javascript Basics'),('4LTSF','Locate Troubleshoot System Faults'),('4LXA','Linux Administration'),('4MWA','Multimedia and Web Authoring (Dreamweaver)'),('4PHP','PHP Basics'),('4PICTS','Participate in ICT Services'),('4POTO','Provide One-to-One Instruction'),('4PRHS','Provide Remote Help-Desk Support'),('4SCCM','System Centre Configuration Manager'),('4SCCM_INT','System Centre Configuration Manager (INT)'),('4SDB','Systems Design Basics'),('4SEO','Search Engine Optimisation'),('4SPRJ','Software Project (C4)'),('4SSP','Small Scale Projects'),('4STDA','Support Troubleshoot Desktop Applications'),('4SWP','Sustainable Work Practices'),('4TST','Testing Techniques'),('4VGC','Vector Graphic Creation (Illustrator)'),('4WAP','Website Authoring and Programming'),('4WAU','Website Accessibility and Usability'),('4WDM','Working in Digital Media'),('52DA','Advanced 2D Animation (Flash)'),('53DA','3D Animation (3DS Max)'),('5AWT','Acceptance and Website Testing'),('5C#W','C# for Web Development'),('5CCN','Cisco Connecting Networks'),('5CCN6','Cisco Connecting Networks V6'),('5CCN6_INT','Cisco Connecting Networks V6 (INT)'),('5CNW','Complex Networks'),('5CRS','Cisco Routing and Switching'),('5CRS6','Cisco Routing and Switching V6'),('5CRS6_INT','Cisco Routing and Switching V6 (INT)'),('5CSN','Cisco Scaling Networks'),('5CSN6','Cisco Scaling Networks V6'),('5CSN6_INT','Cisco Scaling Networks V6 (INT)'),('5DD','Database Design'),('5DIW','Advanced Edit Digital Images (Photoshop)'),('5DVE','Digital Video Editting'),('5DWS','Develop Website Services'),('5ECS','Enterprise Communication Solutions'),('5ECS_INT','Enterprise Communication Solutions (INT)'),('5EVC','Enterprise Virtual Computing'),('5EWD','E-Commerce Website Development'),('5ICW','Implementing and Configuring Windows Server'),('5ICW_GEN','Implementing and Configuring Windows Server'),('5ICW_INT','Install Configure Windows Server (INT)'),('5IOSMD','IOS Mobile Development (Basics)'),('5ISV','Implement Server Virtualisation'),('5IUOS','Install & Upgrade Operating Systems'),('5JAM','Java for Mobile Development'),('5JAW','Java for Web Development'),('5JAWB','Java for Web - Basics'),('5JSI','Intermediate Javascript'),('5LXN','Linux Network'),('5MITP','Manage ICT Projects'),('5MWD','Mobile Website Development'),('5NIST','Networking Industry Specific Technologies'),('5PHP','PHP Basics'),('5PVP','Post Video Production'),('5SDA','Systems Design Advanced'),('5TSD','Team Software Development'),('5TST','Testing Techniques'),('5WHSM','WHS Management'),('5WORK',''),('5WORK1',''),('5WORK2',''),('6CLP','Cloud Programming'),('6CNS','Cisco Network Security'),('6DIS','Design and Implement Security'),('6EWD','Enterprise Wireless Design'),('6EWN','Enterprise Wireless Networks'),('6EWS','Enterprise Wireless Security'),('6IOSMD','IOS Mobile Development (Advanced)'),('6MITP','Manage an IT Project'),('6SIMP','Manage Systems Implementation Project'),('6SUS','ICT Sustainability'),('DXC_IND','DXC Workplace Induction (DXC)'),('DXC_Prep1','DXC Workplace Preparation (TAFESA)'),('DXC_WP1','DXC Technologies Work Placement Term 1 (inc. term break)'),('DXC_WP2','DXC Technologies Work Placement Term 2 (inc. semeser break)'),('DXC_WP3','DXC Technologies Work Placement Term 3 (inc. term break)'),('DXC_WP4','DXC Technologies Work Placement Term 4 (inc. semester break)'),('IT_Tutorial','IT Tutorial - General'),('SC_1INE','Internet Know How'),('SC_1OPC','Computing Basics'),('SC_1OPP','Microsoft Powerpoint Fundamentals'),('SC_1OSS_2013','Microsoft Excel 2013 Fundamentals'),('SC_1OSS_2016','Microsoft Excel 2016 Fundamentals'),('SC_1OWP','Microsoft Word 2016 Fundamentals'),('SC_1PPT','Microsoft Outlook Fundamental - Get Organised!'),('SC_1UDD','Get the best from your digital devices'),('SC_2CUH','Connect and Set Up Hardware'),('SC_2DMP','Digital Media Tools'),('SC_2IOS','Install and Optimise Software'),('SC_2OPD','Microsoft Access 2016 Fundamentals'),('SC_2PSI','Information Security Online Essentials'),('SC_2SMT','S	ocial Media Tools for Business'),('SC_2UAP','Microsoft Office 2016 Suite - Word, Excel, Powerpoint, Access Training'),('SC_3ACA','Use Advanced features of MS Word, Excel & Access'),('SC_3ESS','Cisco IT Essentials'),('SC_3PRB','Introduction to C# Programming'),('SC_3WNF','Cisco Networking Fundamentals'),('SC_4CIN','CISCO 1 Network Fundamentals'),('SC_4DBB','Introduction to MySQL '),('SC_4HTML5','Building a Website - Introduction to HTML5 and CSS3'),('SC_4JAB','Java SE Programming Basics'),('SC_4JSB','	JavaScript Basics'),('SC_4LXA','Linux Essential for Beginners'),('SC_4SEO','Search Engine Optimisation'),('SC_4SSP','Project Scoping Fundamentals'),('SC_5C#W','ASP.NET MVC 4.0'),('SC_5CRS','CISCO 2 Routing & Switching Essentials'),('SC_5CSN','CISCO 3 Scaling Networks'),('SC_5EWD','PHP Programming'),('SC_5JAM','Android Application Development'),('SC_5JAW','Java EE Programming'),('SC_AWS_2016','Administering Microsoft Windows Server 2016'),('SC_CBW','Creating a Business Website'),('SC_CCN','CISCO 4: Connecting Networks'),('SC_CSHSB','Cyber Security for Home and Small Business'),('SC_CTIAL','CompTIA Linux+'),('SC_FORT_NSE4_1','FortiNet NSE4 - FortiGate I'),('SC_FORT_NSE4_2','FortiNet NSE4 - FortiGate II'),('SC_GAN','Google Analytics'),('SC_HMC','Home Media Set Up'),('SC_IaaS_AAWS','Introduction to IaaS within AWS'),('SC_IaaS_Azure','Introduction to IaaS within Microsoft Azure'),('SC_ID_BEG','Adobe InDesign For Beginners'),('SC_ILL_BEG','Adobe Illustrator - Beginners'),('SC_IOS','iOS Application Development'),('SC_ITIL','ITIL'),('SC_MO365F','Microsoft O365 Fundamentals'),('SC_MSAA_2016','Microsoft Access 2016 Advanced'),('SC_MSAI_2016','Microsoft Access 2016 Intermediate'),('SC_MSEA_2016','Microsoft Excel 2016 Advanced'),('SC_MSEI_2016','Microsoft Excel 2016 Intermediate'),('SC_MSOA_2016','Microsoft Outlook 2016 Advanced'),('SC_MSOF_2016','Microsoft Outlook 2016 Fundamentals'),('SC_MSONF_2016','Microsoft OneNote 2016 Fundamentals'),('SC_MSPB_2016','Microsoft Project 2016 Fundamentals'),('SC_MSWI_2016','Microsoft Word 2016 Intermediate'),('SC_MTAE','Microsoft Technology Associates (MTA) Exams'),('SC_PSE_CS6','Photoshop Essentials CS6'),('SC_TEMP_190215145110','TestOut Client Pro - MS Install and Configure Windows'),('SC_TEMP_190215151509','Introduction to Microsoft PowerPoint'),('SC_TEMP_190215151739','Introduction to Social Media'),('SC_TEMP_190215151834','Create a Business Website using WordPress'),('SC_TEMP_190215161203','Advanced Microsoft Word, Excel and Access'),('SC_TEMP_190215161349','Create, Format and Upload a Basic Website (HTML and CSS)'),('SC_TEMP_190215165255','Introduction to Python Programming'),('SC_TEMP_190215165346','Introduction to JavaScript'),('SC_TEMP_190218092639','Intermediate Microsoft Word, Excel and Access'),('SC_TEMP_190218092647','Introduction to Microsoft Word'),('SC_TEMP_190218092715','Introduction to Microsoft Access'),('SC_TEMP_190218092814','Introduction to Microsoft Excel'),('SC_TEMP_190218092902','Introduction to Computing'),('SC_TEMP_190218093149','Searching the Internet and Introduction to Email using Microsoft Outlook'),('SC_TEMP_190218093202','Intermediate Microsoft Word, Excel and PowerPoint'),('SC_TEMP_190218094044','CISCO 1 Introduction to Networks'),('SC_TEMP_190218094131','Server Pro 2016: Install and Storage'),('SC_TEMP_190218094154','Server Pro 2016: Networking'),('SC_TEMP_190502151721','Creating Simple Budgets Using Microsoft Excel'),('SC_TEMP_190502161522','Creating Letters and Brochures Using Microsoft Word'),('SC_TEMP_190502162147','Getting to Know Your Computer'),('SC_TEMP_190502163004','Fortinet NSE4 - FortiGate Security'),('SC_TEMP_190502163014','Fortinet NSE4 - FortiGate Infrastructure'),('SC_TO_CAWS_2012','Configuring Advanced Windows Server 2012'),('SC_TO_CCNA','CISCO CCNA - Switching and Routing Pro'),('SC_TO_ICMS_2012','Install and Configure Microsoft Server 2012'),('SC_TO_LIN','CompTIA Linux+'),('SC_TO_MAMS_2012','Manage and Administer Microsoft Server 2012'),('SC_TO_SPS','TestOut Security Pro - CompTIA Security+'),('SC_UCS','Utilising Cloud Services in a Small Business'),('SC_VIS','VISIO');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;


-- -----------------------------------------------------
-- Table `db_tafebuddy`.`term_datetime`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`term_datetime` (
  `TermCode` INT(1) NOT NULL,
  `TermYear` INT(4) NOT NULL,
  `StartDate` DATE NOT NULL,
  `EndDate` DATE NOT NULL,
  `SemesterCode` INT(1) NOT NULL,
  PRIMARY KEY (`TermCode`, `TermYear`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

--
-- Dumping data for table `term_datetime`
--

LOCK TABLES `term_datetime` WRITE;
/*!40000 ALTER TABLE `term_datetime` DISABLE KEYS */;
INSERT INTO `term_datetime` VALUES (1,2016,'2016-02-15','2016-04-10',1),(1,2017,'2017-02-13','2017-04-07',1),(1,2018,'2018-02-12','2018-04-06',1),(1,2019,'2019-02-11','2019-04-05',1),(2,2016,'2016-04-11','2016-06-17',1),(2,2017,'2017-04-10','2017-06-16',1),(2,2018,'2018-04-09','2018-06-15',1),(2,2019,'2019-04-08','2019-06-14',1),(3,2016,'2016-08-01','2016-09-23',2),(3,2017,'2017-07-31','2017-09-22',2),(3,2018,'2018-07-30','2018-09-21',2),(3,2019,'2019-07-29','2019-09-20',2),(4,2016,'2016-10-15','2016-12-09',2),(4,2017,'2017-10-16','2017-12-08',2),(4,2018,'2018-10-15','2018-12-07',2),(4,2019,'2019-10-14','2019-12-06',2),(2016,1,'2016-02-15','2016-04-10',1),(2016,2,'2016-04-11','2016-06-17',1),(2016,3,'2016-08-01','2016-09-23',2),(2016,4,'2016-10-15','2016-12-09',2),(2017,1,'2017-02-13','2017-04-07',1),(2017,2,'2017-04-10','2017-06-16',1),(2017,3,'2017-07-31','2017-09-22',2),(2017,4,'2017-10-16','2017-12-08',2),(2018,1,'2018-02-12','2018-04-06',1),(2018,2,'2018-04-09','2018-06-15',1),(2018,3,'2018-07-30','2018-09-21',2),(2018,4,'2018-10-15','2018-12-07',2),(2019,1,'2018-02-11','2018-04-05',1),(2019,2,'2018-04-08','2018-06-14',1),(2019,3,'2018-07-29','2018-09-20',2),(2019,4,'2018-10-14','2018-12-06',2);
/*!40000 ALTER TABLE `term_datetime` ENABLE KEYS */;
UNLOCK TABLES;


-- -----------------------------------------------------
-- Table `db_tafebuddy`.`crn_detail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`crn_detail` (
  `CRN` VARCHAR(32) NOT NULL,
  `TafeCompCode` VARCHAR(10) NOT NULL,
  `TermCodeStart` INT(1) NOT NULL,
  `TermYearStart` INT(4) NOT NULL,
  `TermCodeEnd` INT(1) NOT NULL,
  `TermYearEnd` INT(4) NOT NULL,
  `SubjectCode` VARCHAR(32) NOT NULL,
  `CampusCode` CHAR(3) NOT NULL,
  `LecturerID` CHAR(9) NOT NULL,
  `DepartmentCode` VARCHAR(10) NOT NULL,
  `FreezeDate` DATE NOT NULL,
  `DateCreated` DATE NOT NULL,
  PRIMARY KEY (`CRN`, `TermCodeStart`, `TermYearStart`),
  INDEX `FK_CRNDetail_SubjectCode` (`SubjectCode` ASC),
  INDEX `FK_CRNDetail_TafeCompCode` (`TafeCompCode` ASC),
  INDEX `FK_CRNDetail_TermStart` (`TermCodeStart` ASC, `TermYearStart` ASC),
  INDEX `FK_CRNDetail_CampusCode` (`CampusCode` ASC),
  INDEX `FK_CRNDetail_LecturerID` (`LecturerID` ASC),
  INDEX `FK_CRNDetail_DepartmentCode` (`DepartmentCode` ASC),
  CONSTRAINT `FK_CRNDetail_CampusCode`
    FOREIGN KEY (`CampusCode`)
    REFERENCES `db_tafebuddy`.`campus` (`CampusCode`)
    ON UPDATE CASCADE,
  CONSTRAINT `FK_CRNDetail_DepartmentCode`
    FOREIGN KEY (`DepartmentCode`)
    REFERENCES `db_tafebuddy`.`department` (`DepartmentCode`)
    ON UPDATE CASCADE,
  CONSTRAINT `FK_CRNDetail_LecturerID`
    FOREIGN KEY (`LecturerID`)
    REFERENCES `db_tafebuddy`.`lecturer` (`LecturerID`)
    ON UPDATE CASCADE,
  CONSTRAINT `FK_CRNDetail_SubjectCode`
    FOREIGN KEY (`SubjectCode`)
    REFERENCES `db_tafebuddy`.`subject` (`SubjectCode`)
    ON UPDATE CASCADE,
  CONSTRAINT `FK_CRNDetail_TafeCompCode`
    FOREIGN KEY (`TafeCompCode`)
    REFERENCES `db_tafebuddy`.`competency` (`TafeCompCode`)
    ON UPDATE CASCADE,
  CONSTRAINT `FK_CRNDetail_TermStart`
    FOREIGN KEY (`TermCodeStart` , `TermYearStart`)
    REFERENCES `db_tafebuddy`.`term_datetime` (`TermCode` , `TermYear`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

--
-- Dumping data for table `crn_detail`
--

LOCK TABLES `crn_detail` WRITE;
/*!40000 ALTER TABLE `crn_detail` DISABLE KEYS */;

INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5798,2,2019,2,2019,'TAAAY','1INE','ADL','000928152','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5799,2,2019,2,2019,'TAAAW','1OPC','ADL','000928152','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5800,2,2019,2,2019,'TAAFF','1OPP','ADL','000928152','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5801,1,2019,1,2019,'TAACP','4SSP','ADL','000011369','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5802,2,2019,2,2019,'TAAKM','1OSS','ADL','000928152','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5803,1,2019,1,2019,'ENGG','IT_Prac','ADL','000011369','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5804,2,2019,2,2019,'TAAAX','1OWP','ADL','000928152','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5806,1,2019,1,2019,'ENGG','IT_Prac','ADL','000011942','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5807,2,2019,2,2019,'TAAFG','1PPT','ADL','000928152','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5808,1,2019,1,2019,'TAAGA','4CDE','ADL','000012085','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5809,2,2019,2,2019,'TAAAZ','1UDD','ADL','000928152','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5810,2,2019,2,2019,'TAACZ','4CNS','ADL','000013221','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5811,1,2019,1,2019,'TAACK','5CNW','ADL','000013221','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5813,1,2019,1,2019,'ENGG','IT_Prac','ADL','000011942','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5814,1,2019,1,2019,'TAAHC','5DD','ADL','000010849','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5815,2,2019,2,2019,'TABFH','4CNS','ADL','000013221','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5816,2,2019,2,2019,'TAAGC','3PRB','ADL','000011327','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5817,1,2019,1,2019,'DAASN','5DIW','ADL','000011369','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5818,2,2019,2,2019,'TAAEK','4HTML5','ADL','000944814','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5819,2,2019,2,2019,'TAAEA','4LTSF','ADL','000013015','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5820,2,2019,2,2019,'TAACZ','4JSB','ADL','000011942','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5821,1,2019,1,2019,'TAAFD','5DIW','ADL','000011369','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5823,2,2019,2,2019,'TAAEN','4HTML5','ADL','000944814','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5824,1,2019,1,2019,'TABFB','4STDA','ADL','000944814','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5825,2,2019,2,2019,'TAAEH','4WAU','ADL','001034176','KJ','2019-04-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5826,1,2019,1,2019,'TAABR','5ECS','ADL','000013221','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5827,2,2019,2,2019,'TAAGN','4HTML5','ADL','000944814','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5828,1,2019,1,2019,'TAAHL','5ECS','ADL','000013221','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5829,2,2019,2,2019,'TAAGZ','4WAU','ADL','001034176','KJ','2019-04-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5830,2,2019,2,2019,'TAABG','5ICW','ADL','000012517','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5831,2,2019,2,2019,'TAAGS','4HTML5','ADL','000944814','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5832,1,2019,1,2019,'TAAHY','5IOSMD','ADL','000010901','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5833,1,2019,1,2019,'DAASN','5DIW','ADL','000011369','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5835,2,2019,2,2019,'TAABX','5ICW','ADL','000012517','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5836,1,2019,1,2019,'TABFE','5IUOS','ADL','000857816','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5837,2,2019,2,2019,'TAACZ','4JSB','ADL','000013311','KJ','2019-05-28','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5838,1,2019,1,2019,'TAAFD','5DIW','ADL','000011369','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5839,1,2019,1,2019,'TAAHZ','5SDA','ADL','000013514','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5840,2,2019,2,2019,'TAAMC','5ICW','ADL','000012517','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5841,1,2019,1,2019,'ENGG','IT_Prac','ADL','000013311','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5842,1,2019,2,2019,'TAAGY','4PHP','ADL','000013311','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5845,1,2019,1,2019,'TAAKL','5SDA','ADL','000013514','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5847,1,2019,1,2019,'ENGG','IT_Prac','ADL','000944814','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5848,1,2019,1,2019,'TAAGW','4SEO','ADL','000011942','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5849,1,2019,2,2019,'TAADH','5TSD','ADL','000010849','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5851,2,2019,2,2019,'TAABM','4WDM','ADL','000011369','KJ','2019-04-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5852,1,2019,1,2019,'TAAHB','4SEO','ADL','000011942','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5854,1,2019,2,2019,'TAADL','5TSD','ADL','000010849','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5855,1,2019,1,2019,'TAAHE','53DA','ADL','000011942','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5857,1,2019,1,2019,'TAAKB','5AWT','ADL','000013268','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5858,1,2019,1,2019,'TAAKA','6CLP','ADL','000013514','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5859,1,2019,1,2019,'TAAHF','53DA','ADL','000011942','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5860,1,2019,1,2019,'TAAKC','5AWT','ADL','000013268','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5864,1,2019,2,2019,'TAAHD','5DVE','ADL','000011942','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5867,2,2019,2,2019,'TAABB','2WIT','ADL','000928152','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5868,1,2019,2,2019,'TAADE','5JSI','ADL','001034176','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5872,1,2019,1,2019,'TAAGC','3PRB','ADL','001034176','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5875,1,2019,2,2019,'TAAEP','5JSI','ADL','001034176','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5877,2,2019,2,2019,'TAACB','4BSWN','ADL','000012085','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5881,1,2019,1,2019,'FABRK','5WORK','ADL','000011369','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5883,1,2019,1,2019,'TAADB','4BUI','ADL','000010546','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5889,2,2019,2,2019,'TAADC','4C#B','ADL','000010849','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5890,1,2019,1,2019,'ENGG','IT_Prac','ADL','001034176','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5895,1,2019,1,2019,'TABEN','4CYBCS','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5896,1,2019,1,2019,'TAAAS','5WORK','ADL','000011369','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5898,2,2019,2,2019,'ENGG','IT_Prac','ADL','001038996','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5902,1,2019,1,2019,'TABEK','4CYCSF','ADL','000013125','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5905,2,2019,2,2019,'ENGG','IT_Prac','ADL','000013289','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5906,1,2019,1,2019,'TAACW','4DBB','ADL','000013268','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5909,1,2019,1,2019,'ENGG','IT_Prac','ADL','000011327','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5911,1,2019,1,2019,'TAAFA','4DBB','ADL','000013268','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5913,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5916,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5917,1,2019,1,2019,'TAAHA','4DBB','ADL','000013268','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5922,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5924,1,2019,1,2019,'TAAEK','4HTML5','ADL','000013311','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5927,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5930,1,2019,1,2019,'TAAEN','4HTML5','ADL','000013311','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5933,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5937,1,2019,1,2019,'TAAGN','4HTML5','ADL','000013311','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5941,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5943,1,2019,1,2019,'TAAEL','4WAP','ADL','000013311','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5945,1,2019,1,2019,'TAAGS','4HTML5','ADL','000013311','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5947,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5950,1,2019,1,2019,'TAAGT','4WAP','ADL','000013311','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5951,1,2019,1,2019,'TAACW','4DBB','ADL','000013268','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5954,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5960,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5961,1,2019,1,2019,'TAAFA','4DBB','ADL','000013268','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5965,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5968,1,2019,1,2019,'TAAHA','4DBB','ADL','000013268','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5970,1,2019,1,2019,'TAAGY','4PHP','ADL','000013311','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5973,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5976,1,2019,1,2019,'FABRK','5WORK','ADL','000011123','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5978,2,2019,2,2019,'TAABG','4DWR','ADL','000013268','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5980,1,2019,1,2019,'ENGG','IT_Prac','ADL','000012974','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5983,1,2019,1,2019,'TAAAS','5WORK','ADL','000011123','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5984,1,2019,1,2019,'ENGG','IT_Prac','ADL','000012974','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5985,2,2019,2,2019,'TAAEG','4DWR','ADL','000013268','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5991,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5994,1,2019,1,2019,'TAABS','5WORK','ADL','000011123','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5995,2,2019,2,2019,'TAAEM','4DWR','ADL','000013268','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (5998,1,2019,1,2019,'ENGG','IT_Prac','ADL','000012974','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6001,1,2019,1,2019,'TAADA','4JAB','ADL','000010546','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6003,1,2019,1,2019,'TAADM','5WORK','ADL','000010581','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6004,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6010,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6011,1,2019,2,2019,'TAAEL','4WAP','ADL','000013311','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6012,1,2019,1,2019,'TAADR','5WORK','ADL','000010581','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6017,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6021,1,2019,2,2019,'TAAGT','4WAP','ADL','000013311','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6022,1,2019,1,2019,'TAAKG','5WORK','ADL','000010581','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6023,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6026,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6028,2,2019,2,2019,'TAABG','5ICW','ADL','000013047','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6029,1,2019,1,2019,'TAADG','5JAW','ADL','000013514','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6035,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6041,2,2019,2,2019,'TAABX','5ICW','ADL','000013047','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6043,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6045,2,2019,2,2019,'TAABY','4IVM','ADL','000013490','KJ','2019-04-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6049,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6052,1,2019,1,2019,'TAABZ','4AWS','ADL','000013047','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6054,2,2019,2,2019,'TAAMC','5ICW','ADL','000013047','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6057,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6059,1,2019,1,2019,'TAAFZ','4AWS','ADL','000013047','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6062,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6063,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010901','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6067,1,2019,1,2019,'TAACX','4C#M','ADL','000013514','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6072,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6074,1,2019,1,2019,'TAADE','4C#M','ADL','000013514','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6075,1,2019,2,2019,'TAACA','4CIRS6','ADL','000013015','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6078,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6081,1,2019,2,2019,'TAACA','4CIRS6','ADL','000013015','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6083,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6084,2,2019,2,2019,'TAACZ','4JSB','ADL','001034176','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6086,1,2019,1,2019,'DAAKZ','4CMS','ADL','000011942','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6091,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6095,1,2019,1,2019,'TABDN','4CMS','ADL','000011942','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6096,1,2019,1,2019,'TAABZ','4AWS','ADL','000013047','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6101,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6103,1,2019,1,2019,'AAHSP','4CYACI','ADL','000013268','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6105,1,2019,1,2019,'TAAFZ','4AWS','ADL','000013047','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6106,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6110,1,2019,1,2019,'FABXA','4CYACI','ADL','000013268','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6115,1,2019,1,2019,'TAACE','5CRS6','ADL','000012109','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6116,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6118,1,2019,1,2019,'TABEN','4CYBCS','ADL','000012109','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6122,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6124,1,2019,1,2019,'TABEE','5CRS6','ADL','000012109','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6125,1,2019,1,2019,'TABEK','4CYCSF','ADL','000013125','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6130,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6134,1,2019,1,2019,'TABEP','4CYDAT','ADL','000012439','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6135,2,2019,2,2019,'TAACF','5CSN6','ADL','000012085','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6136,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6142,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6144,2,2019,2,2019,'TAAMF','5CSN6','ADL','000012085','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6148,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6151,1,2019,2,2019,'TAAAM','5EWD','ADL','000010901','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6155,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6161,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6162,1,2019,2,2019,'TAAER','5EWD','ADL','000010901','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6166,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6169,1,2019,2,2019,'TAAKH','5EWD','ADL','000010901','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6172,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6174,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010901','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6179,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6182,1,2019,1,2019,'TAACD','5CCN6','ADL','000013490','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6186,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6190,1,2019,1,2019,'TABEF','5CCN6','ADL','000013490','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6193,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6199,2,2019,2,2019,'TAACK','5CNW','ADL','000012085','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6201,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-12','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6206,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-12','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6209,1,2019,2,2019,'TAAES','5DWS','ADL','000010901','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6213,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-12','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6216,1,2019,2,2019,'TAAKD','5DWS','ADL','000010901','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6218,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-12','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6226,1,2019,2,2019,'TAADP','5JAM','ADL','000010581','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6227,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-12','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6232,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-12','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6233,1,2019,2,2019,'TAACR','5MITP','ADL','000011369','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6240,2,2019,2,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-04-12','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6241,1,2019,1,2019,'TAACG','6DIS','ADL','000013221','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6247,1,2019,1,2019,'TAABL','4CEP','ADL','000928152','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6249,1,2019,1,2019,'TAACM','6DIS','ADL','000013221','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6256,2,2019,2,2019,'AAHSP','4CYACI','ADL','000013268','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6257,1,2019,2,2019,'TAACC','6EWN','ADL','000012517','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6262,1,2019,2,2019,'TAACN','6EWN','ADL','000012517','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6263,2,2019,2,2019,'FABXA','4CYACI','ADL','000013268','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6269,1,2019,2,2019,'TAAHK','6EWN','ADL','000012517','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6273,1,2019,1,2019,'TABEN','4CYBCS','ADL','000012109','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6274,1,2019,2,2019,'TAAHT','6EWN','ADL','000012517','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6283,1,2019,2,2019,'TAACS','6MITP','ADL','000011369','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6284,1,2019,1,2019,'TABEK','4CYCSF','ADL','000013125','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6288,1,2019,2,2019,'TAACT','6MITP','ADL','000011369','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6293,2,2019,2,2019,'TABEP','4CYDAT','ADL','000012439','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6297,1,2019,1,2019,'ENGG','IT_Prac','ADL','000011369','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6302,1,2019,2,2019,'TABEW','4CYITS','ADL','000011123','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6304,2,2019,2,2019,'TAABY','4IVM','ADL','000012974','KJ','2019-04-18','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6308,1,2019,2,2019,'TABEG','4CYNET','ADL','000013490','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6311,2,2019,2,2019,'TAAEA','4LTSF','ADL','000010581','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6318,1,2019,1,2019,'ENGG','IT_Prac','ADL','000012439','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6319,1,2019,1,2019,'TAAEW','3CIHW','ADL','000012974','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6327,1,2019,1,2019,'ENGG','IT_Prac','ADL','000012109','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6330,1,2019,1,2019,'TAAGA','4CDE','ADL','000013047','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6332,1,2019,1,2019,'DAAKZ','4CMS','ADL','000017445','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6334,1,2019,1,2019,'TAABL','4CEP','ADL','000012763','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6337,1,2019,2,2019,'TAACA','4CIRS6','ADL','000013047','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6342,1,2019,1,2019,'TABDN','4CMS','ADL','000017445','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6347,1,2019,1,2019,'TABEN','4CYBCS','ADL','000017445','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6350,1,2019,1,2019,'TAABY','4IVM','ADL','000013490','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6351,2,2019,2,2019,'FABXA','4CYACI','ADL','000276592','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6360,2,2019,2,2019,'TAAEA','4LTSF','ADL','000013015','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6361,1,2019,1,2019,'TABEK','4CYCSF','ADL','000017445','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6365,1,2019,1,2019,'TABEN','4CYBCS','ADL','000944814','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6369,1,2019,1,2019,'TABFG','4PICTS','ADL','000857816','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6377,1,2019,1,2019,'TABEK','4CYCSF','ADL','000012085','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6379,2,2019,2,2019,'ENGG','IT_Prac','ADL','000012085','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6388,1,2019,1,2019,'ENGG','IT_Prac','ADL','000013015','KJ','2019-02-25','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6399,1,2019,1,2019,'TAABS','5WORK','ADL','000012439','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6400,1,2019,1,2019,'TAABL','4CEP','ADL','000928152','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6407,2,2019,2,2019,'TAAHN','5LXN','ADL','000012085','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6415,1,2019,1,2019,'TABEW','4CYITS','ADL','000011123','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6422,1,2019,1,2019,'TAABR','5ECS','ADL','000013221','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6424,1,2019,1,2019,'TABEG','4CYNET','ADL','000012517','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6425,1,2019,1,2019,'TAADM','5WORK','ADL','000010581','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6427,2,2019,2,2019,'ENGG','IT_Prac','ADL','000013221','KJ','2019-03-01','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6433,1,2019,1,2019,'TAACW','4DBB','ADL','000013268','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6436,1,2019,1,2019,'TAAHL','5ECS','ADL','000013221','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6438,1,2019,1,2019,'AAHSP','4CYACI','ADL','000013268','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6442,1,2019,1,2019,'TAAFA','4DBB','ADL','000013268','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6449,1,2019,1,2019,'FABXA','4CYACI','ADL','000013268','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6450,2,2019,2,2019,'TAAHP','5ISV','ADL','000013047','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6452,1,2019,1,2019,'TAAHA','4DBB','ADL','000013268','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6456,1,2019,1,2019,'TAADR','5WORK','ADL','000012439','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6461,1,2019,1,2019,'TAADA','4JAB','ADL','000017445','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6463,1,2019,1,2019,'TABEN','4CYBCS','ADL','000012109','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6466,1,2019,1,2019,'TAACA','4CIN','ADL','000013490','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6467,2,2019,2,2019,'TAAMG','5ISV','ADL','000013047','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6474,1,2019,1,2019,'TAAGA','4LXA','ADL','000857816','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6477,1,2019,1,2019,'TABEP','4CYDAT','ADL','000012439','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6478,1,2019,1,2019,'TAAEA','4CIN','ADL','000013490','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6482,1,2019,1,2019,'TAAGB','4LXA','ADL','000857816','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6483,1,2019,1,2019,'TAACB','3WNF','ADL','000013289','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6487,2,2019,2,2019,'TABES','4CYIRP','ADL','000012517','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6488,1,2019,1,2019,'TAAKG','5WORK','ADL','000011369','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6491,1,2019,1,2019,'TAAMD','4CIN','ADL','000013490','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6493,1,2019,1,2019,'TAADD','4SDB','ADL','000010849','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6494,1,2019,1,2019,'TAADT','3WNF','ADL','000013289','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6501,1,2019,1,2019,'TAADF','4SDB','ADL','000010849','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6502,1,2019,1,2019,'TABEW','4CYITS','ADL','000011123','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6503,1,2019,1,2019,'TAAME','4CIN','ADL','000013490','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6505,1,2019,1,2019,'TAAFY','3WNF','ADL','000013289','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6510,1,2019,1,2019,'TAABK','4SPRJ','ADL','000010901','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6513,2,2019,2,2019,'TABER','4CYMAN','ADL','000013221','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6515,1,2019,1,2019,'TAABZ','4AWS','ADL','000013289','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6516,1,2019,1,2019,'TAACE','5CRS6','ADL','000013490','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6520,1,2019,1,2019,'TAAFS','4SPRJ','ADL','000010901','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6521,1,2019,1,2019,'ENGG','IT_Prac','ADL','001034176','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6525,1,2019,1,2019,'TAAFZ','4AWS','ADL','000013289','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6528,1,2019,1,2019,'TABEE','5CRS6','ADL','000013490','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6529,2,2019,2,2019,'ENGG','IT_Prac','ADL','000013268','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6531,1,2019,1,2019,'TAAGD','4SPRJ','ADL','000010901','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6532,1,2019,2,2019,'TAACR','5MITP','ADL','000011369','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6537,1,2019,1,2019,'TAAGA','4CDE','ADL','000013289','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6540,1,2019,1,2019,'TABEG','4CYNET','ADL','000012517','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6541,1,2019,1,2019,'TAAKB','5AWT','ADL','000013268','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6544,1,2019,2,2019,'TAAET','5MWD','ADL','000013311','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6548,1,2019,1,2019,'TAACA','4CIN','ADL','001038996','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6551,1,2019,1,2019,'TAAKC','5AWT','ADL','000013268','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6554,2,2019,2,2019,'TABEL','4CYSEC','ADL','000013221','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6555,1,2019,2,2019,'TAAKE','5MWD','ADL','000013311','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6560,1,2019,1,2019,'TAADN','5C#W','ADL','000013514','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6561,1,2019,1,2019,'TAAEA','4CIN','ADL','001038996','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6567,1,2019,2,2019,'TAAKF','5MWD','ADL','000013311','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6569,1,2019,1,2019,'TAACD','5CCN6','ADL','000013490','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6570,2,2019,2,2019,'TABEH','4CYTST','ADL','000013490','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6574,1,2019,1,2019,'TAAMD','4CIN','ADL','001038996','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6579,1,2019,1,2019,'TABEF','5CCN6','ADL','000013490','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6582,1,2019,1,2019,'DAAMW','5PVP','ADL','000011942','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6584,1,2019,1,2019,'TAAME','4CIN','ADL','000012085','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6585,1,2019,1,2019,'ENGG','IT_Prac','ADL','000013490','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6589,1,2019,1,2019,'TAACE','5CRS6','ADL','000012109','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6592,1,2019,1,2019,'TAAHH','5PVP','ADL','000011942','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6596,1,2019,1,2019,'TAABY','4IVM','ADL','000013289','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6601,1,2019,1,2019,'TABEE','5CRS6','ADL','000012109','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6602,2,2019,2,2019,'TAABB','2WIT','ADL','000013125','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6607,1,2019,1,2019,'TAACD','5CCN6','ADL','000012085','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6610,1,2019,1,2019,'TAACF','5CSN6','ADL','000012085','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6621,1,2019,1,2019,'TAAMF','5CSN6','ADL','000012085','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6625,1,2019,1,2019,'TABEF','5CCN6','ADL','000012085','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6631,1,2019,1,2019,'TAAHD','5DVE','ADL','000011942','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6633,2,2019,2,2019,'TAAEW','3CIHW','ADL','000013015','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6636,1,2019,1,2019,'TAACE','5CRS6','ADL','000012085','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6641,1,2019,1,2019,'TAAES','5DWS','ADL','000010901','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6649,2,2019,2,2019,'TAABE','3CUD','ADL','000013125','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6651,1,2019,1,2019,'TABEE','5CRS6','ADL','001038996','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6653,1,2019,1,2019,'TAAKD','5DWS','ADL','000010901','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6662,2,2019,2,2019,'TAABF','3IOOS','ADL','000013015','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6663,1,2019,1,2019,'TAACF','5CSN6','ADL','001038996','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6664,1,2019,1,2019,'TAAAM','5EWD','ADL','000010901','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6670,1,2019,1,2019,'TAAER','5EWD','ADL','000010901','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6671,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6675,1,2019,1,2019,'TAAMF','5CSN6','ADL','000012085','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6681,1,2019,1,2019,'ENGG','IT_Prac','ADL','000857816','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6685,2,2019,2,2019,'TAAEX','3PITA','ADL','000013125','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6686,1,2019,1,2019,'TAABG','5ICW','ADL','000013289','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6689,1,2019,1,2019,'TABFG','4PICTS','ADL','000017445','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6690,1,2019,1,2019,'TAABG','5ICW','ADL','000013047','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6691,1,2019,1,2019,'ENGG','IT_Prac','ADL','000928152','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6695,1,2019,1,2019,'TAABX','5ICW','ADL','000013289','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6696,2,2019,2,2019,'TAADS','3RSDT','ADL','000013015','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6699,1,2019,1,2019,'TAABX','5ICW','ADL','000013047','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6704,1,2019,1,2019,'ENGG','IT_Prac','ADL','000013125','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6706,1,2019,1,2019,'TAAMC','5ICW','ADL','000013289','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6710,1,2019,1,2019,'TAAMC','5ICW','ADL','000013047','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6713,1,2019,1,2019,'FABRP','3WHS','ADL','000276592','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6714,1,2019,1,2019,'ENGG','IT_Prac','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6716,1,2019,1,2019,'TABFE','5IUOS','ADL','000013289','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6720,1,2019,1,2019,'TAAHP','5ISV','ADL','000013047','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6722,1,2019,1,2019,'ENGG','IT_Prac','ADL','000013268','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6725,1,2019,1,2019,'TAAHN','5LXN','ADL','000013289','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6734,1,2019,2,2019,'TAACL','6CNS','ADL','000012085','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6737,1,2019,1,2019,'TAADP','5JAM','ADL','000010581','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6742,1,2019,2,2019,'TAAHW','6CNS','ADL','000012085','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6747,1,2019,1,2019,'TAABY','4IVM','ADL','000013490','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6751,1,2019,1,2019,'TAAHX','6SUS','ADL','000013490','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6755,1,2019,1,2019,'FACNL','4SWP','ADL','000276592','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6759,1,2019,1,2019,'TAAML','6SUS','ADL','000013490','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6762,1,2019,1,2019,'ENGG','IT_Prac','ADL','000013047','KJ','2019-02-26','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6766,1,2019,1,2019,'TAAGC','3PRB','ADL','000010849','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6770,2,2019,2,2019,'ENGG','IT_Prac','ADL','000013015','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6771,1,2019,1,2019,'TAAHN','5LXN','ADL','000017445','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6775,1,2019,1,2019,'FABRP','3WHS','ADL','000276592','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6779,2,2019,2,2019,'TAAGM','3BSA','ADL','000944814','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6780,1,2019,1,2019,'TAAHZ','5SDA','ADL','000017445','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6785,1,2019,1,2019,'TAABL','4CEP','ADL','000276592','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6787,1,2019,1,2019,'TAAKL','5SDA','ADL','000017445','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6789,2,2019,2,2019,'TAAGL','3CFCH','ADL','000944814','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6794,1,2019,1,2019,'TAACW','4DBB','ADL','000012109','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6796,1,2019,1,2019,'TAACY','5TST','ADL','000017445','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6798,1,2019,1,2019,'TAAEP','5JSI','ADL','001034176','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6804,1,2019,1,2019,'TAAEW','3CIHW','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6806,1,2019,1,2019,'TAAFA','4DBB','ADL','000012109','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6808,1,2019,1,2019,'TAADK','5TST','ADL','000017445','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6809,1,2019,1,2019,'TAAHN','5LXN','ADL','000017445','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6815,1,2019,1,2019,'TAAET','5MWD','ADL','000013311','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6817,1,2019,1,2019,'TAAHA','4DBB','ADL','000012109','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6819,2,2019,2,2019,'TABBY','3CLD','ADL','000012974','KJ','2019-04-12','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6826,1,2019,1,2019,'TAAKE','5MWD','ADL','000013311','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6827,1,2019,1,2019,'TAABF','3IOOS','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6829,1,2019,1,2019,'TAAEK','4HTML5','ADL','001034176','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6834,1,2019,1,2019,'TAAKF','5MWD','ADL','000013311','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6837,1,2019,1,2019,'TAAEN','4HTML5','ADL','001034176','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6838,2,2019,2,2019,'TAAEY','3MEAS','ADL','000944814','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6839,2,2019,2,2019,'TAABC','2UAP','ADL','000928152','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6841,1,2019,1,2019,'TAACY','5TST','ADL','000010849','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6846,1,2019,1,2019,'TAAGN','4HTML5','ADL','001034176','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6848,1,2019,1,2019,'TAADK','5TST','ADL','000010849','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6851,2,2019,2,2019,'TAAFK','2UAP','ADL','000928152','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6852,1,2019,1,2019,'TAAGC','3PRB','ADL','000010546','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6855,1,2019,1,2019,'TAAGS','4HTML5','ADL','001034176','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6857,1,2019,1,2019,'TAACS','6MITP','ADL','000011369','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6860,1,2019,1,2019,'TAADS','3RSDT','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6864,1,2019,1,2019,'TAACX','4C#M','ADL','000013514','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6867,1,2019,1,2019,'TAACT','6MITP','ADL','000011369','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6871,1,2019,1,2019,'TAACB','3WNF','ADL','000012085','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6876,1,2019,1,2019,'TAADE','4C#M','ADL','000013514','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6883,1,2019,1,2019,'TAADT','3WNF','ADL','000012085','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6884,1,2019,2,2019,'TAADD','4SDB','ADL','000010849','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6890,1,2019,1,2019,'TAAFY','3WNF','ADL','000012085','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6893,1,2019,2,2019,'TAADF','4SDB','ADL','000010849','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6900,2,2019,2,2019,'TAABY','4IVM','ADL','000013047','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6902,1,2019,2,2019,'TAABK','4SPRJ','ADL','000010901','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6907,1,2019,1,2019,'ENGG','IT_Prac','ADL','000012517','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6909,1,2019,2,2019,'TAAFS','4SPRJ','ADL','000010901','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6913,1,2019,1,2019,'ENGG','IT_Prac','ADL','000012085','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6916,1,2019,2,2019,'TAAGD','4SPRJ','ADL','000010901','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6919,1,2019,1,2019,'ENGG','IT_Prac','ADL','000013221','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6924,1,2019,2,2019,'TAAAM','5EWD','ADL','000010901','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6927,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010581','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6931,1,2019,1,2019,'TAAFR','3ACA','ADL','000013268','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6932,1,2019,2,2019,'TAAER','5EWD','ADL','000010901','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6939,1,2019,2,2019,'TAAKH','5EWD','ADL','000010901','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6942,1,2019,1,2019,'TAABC','2UAP','ADL','000011942','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6944,2,2019,2,2019,'TAABB','2WIT','ADL','000928152','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6947,1,2019,1,2019,'TAACY','5TST','ADL','000010849','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6950,1,2019,1,2019,'TAAFK','2UAP','ADL','000011942','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6951,2,2019,2,2019,'TAAFR','3ACA','ADL','000011327','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6953,1,2019,1,2019,'TAADK','5TST','ADL','000010849','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6960,2,2019,2,2019,'TAAGM','3BSA','ADL','000012974','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6961,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010849','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6965,1,2019,1,2019,'ENGG','IT_Prac','ADL','000013015','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6967,2,2019,2,2019,'TAADB','4BUI','ADL','000944814','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6970,2,2019,2,2019,'TAAGL','3CFCH','ADL','000012974','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6972,1,2019,1,2019,'TAAGC','3PRB','ADL','000010546','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6975,2,2019,2,2019,'TAABL','4CEP','ADL','000012763','KJ','2019-04-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6979,1,2019,1,2019,'FABRP','3WHS','ADL','000928152','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6980,1,2019,1,2019,'TAAEW','3CIHW','ADL','000012974','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6982,1,2019,1,2019,'TAAGC','3PRB','ADL','000010901','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6988,1,2019,2,2019,'DAAKZ','4CMS','ADL','000011942','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6989,2,2019,2,2019,'TAABE','3CUD','ADL','000928152','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6990,1,2019,1,2019,'TAADB','4BUI','ADL','000010546','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6997,2,2019,2,2019,'TAADC','4C#B','ADL','000010546','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (6999,1,2019,2,2019,'TABDN','4CMS','ADL','000011942','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7000,1,2019,1,2019,'TAABF','3IOOS','ADL','000012974','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7006,2,2019,2,2019,'CABRE','4DWL','ADL','000011369','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7008,2,2019,2,2019,'TAAEY','3MEAS','ADL','000012974','KJ','2019-04-08','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7009,1,2019,1,2019,'TAABL','4CEP','ADL','000928152','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7015,2,2019,2,2019,'TAAGX','4DWL','ADL','000011369','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7016,1,2019,1,2019,'TAACW','4DBB','ADL','000013268','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7018,2,2019,2,2019,'TAAEX','3PITA','ADL','000928152','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7021,1,2019,1,2019,'TAAEK','4HTML5','ADL','000011942','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7023,1,2019,1,2019,'TAAFA','4DBB','ADL','000013268','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7024,1,2019,1,2019,'TAAGC','3PRB','ADL','000011327','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7028,1,2019,1,2019,'TAAEN','4HTML5','ADL','000011942','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7029,1,2019,1,2019,'TAADS','3RSDT','ADL','000012974','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7030,1,2019,1,2019,'TAAHA','4DBB','ADL','000013268','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7033,1,2019,1,2019,'TAAGN','4HTML5','ADL','000011942','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7035,1,2019,1,2019,'TAAEK','4HTML5','ADL','000010849','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7037,1,2019,1,2019,'TAAEK','4HTML5','ADL','000010901','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7038,1,2019,1,2019,'TAAGS','4HTML5','ADL','000011942','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7039,1,2019,1,2019,'TAAEN','4HTML5','ADL','000010849','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7043,1,2019,1,2019,'TAAEN','4HTML5','ADL','000010901','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7044,2,2019,2,2019,'TAACZ','4JSB','ADL','000011942','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7045,1,2019,1,2019,'TAAGN','4HTML5','ADL','000010849','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7048,1,2019,1,2019,'TAAGN','4HTML5','ADL','000010901','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7049,1,2019,1,2019,'FACNL','4SWP','ADL','000928152','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7050,1,2019,1,2019,'TAAGS','4HTML5','ADL','000010849','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7053,1,2019,1,2019,'TAAGS','4HTML5','ADL','000010901','KJ','2019-02-15','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7055,1,2019,1,2019,'TAAFB','4VGC','ADL','000011369','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7058,2,2019,2,2019,'TAACZ','4JSB','ADL','000010901','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7059,2,2019,2,2019,'TAACZ','4JSB','ADL','000011942','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7062,1,2019,1,2019,'DAASN','5DIW','ADL','000011369','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7063,1,2019,1,2019,'ENGG','IT_Prac','ADL','000010546','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7065,1,2019,1,2019,'ENGG','IT_Prac','ADL','000013514','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7066,1,2019,1,2019,'TAADB','4BUI','ADL','000010546','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7067,1,2019,1,2019,'TAABB','2WIT','ADL','000013015','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7070,1,2019,1,2019,'TAAFD','5DIW','ADL','000011369','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7072,1,2019,1,2019,'TAADC','4C#B','ADL','000017445','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7073,1,2019,1,2019,'TAACX','4C#M','ADL','000013514','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7076,1,2019,1,2019,'TAABL','4CEP','ADL','000012763','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7078,1,2019,2,2019,'TAABH','43DM','ADL','000011942','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7079,1,2019,1,2019,'TAAGC','3PRB','ADL','000010849','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7080,1,2019,1,2019,'TAADE','4C#M','ADL','000013514','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7082,1,2019,1,2019,'TAACZ','4CNS','ADL','000017445','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7084,2,2019,2,2019,'FABRP','3WHS','ADL','000276592','KJ','2019-03-06','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7085,1,2019,2,2019,'TAAFE','43DM','ADL','000011942','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7087,1,2019,1,2019,'TAADA','4JAB','ADL','000010581','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7092,1,2019,2,2019,'FACBW','4ACN','ADL','000013015','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7093,1,2019,1,2019,'CABRE','4DWL','ADL','000011369','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7094,1,2019,1,2019,'TAABL','4CEP','ADL','000928152','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7097,1,2019,2,2019,'TAADD','4SDB','ADL','000013268','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7098,1,2019,1,2019,'TAAGX','4DWL','ADL','000011369','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7100,1,2019,2,2019,'DAAKZ','4CMS','ADL','000011942','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7102,1,2019,2,2019,'TAADY','4ACR','ADL','000013015','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7103,1,2019,2,2019,'TAADF','4SDB','ADL','000013268','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7104,2,2019,2,2019,'TAABG','4DWR','ADL','000013268','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7107,1,2019,2,2019,'TABDN','4CMS','ADL','000011942','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7109,2,2019,2,2019,'TAAEG','4DWR','ADL','000013268','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7110,1,2019,1,2019,'TAACY','5TST','ADL','000010849','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7112,1,2019,1,2019,'TAAGA','4CDE','ADL','000944814','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7114,1,2019,1,2019,'DAAKR','4DVP','ADL','000011369','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7115,2,2019,2,2019,'TAAEM','4DWR','ADL','000013268','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7117,1,2019,1,2019,'TAADK','5TST','ADL','000010849','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7118,2,2019,2,2019,'TAABL','4CEP','ADL','000276592','KJ','2019-03-06','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7119,1,2019,1,2019,'FABRH','4DVP','ADL','000011369','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7120,1,2019,1,2019,'TAAEK','4HTML5','ADL','000013311','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7124,2,2019,2,2019,'TAACZ','4CNS','ADL','000013221','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7126,1,2019,1,2019,'TAAEN','4HTML5','ADL','000013311','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7127,1,2019,1,2019,'ENGG','IT_Prac','ADL','000013514','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7130,1,2019,1,2019,'TAAGN','4HTML5','ADL','000013311','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7132,1,2019,2,2019,'TAADN','5C#W','ADL','000013514','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7133,2,2019,2,2019,'TABFH','4CNS','ADL','000013221','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7135,1,2019,1,2019,'TAAGS','4HTML5','ADL','000013311','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7137,1,2019,2,2019,'TAAHC','5DD','ADL','000010849','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7138,1,2019,1,2019,'TAABY','4IVM','ADL','000013490','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7140,1,2019,2,2019,'TAABG','4DCR','ADL','000013015','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7143,1,2019,1,2019,'TAACZ','4JSB','ADL','000017445','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7145,1,2019,2,2019,'TAADH','5TSD','ADL','000010849','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7146,1,2019,1,2019,'TAAGW','4SEO','ADL','000011942','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7149,1,2019,2,2019,'FACAK','4DWP','ADL','000013015','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7151,1,2019,2,2019,'TAADL','5TSD','ADL','000010849','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7152,1,2019,1,2019,'TAAHB','4SEO','ADL','000011942','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7155,1,2019,2,2019,'TAAHY','5IOSMD','ADL','000010901','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7156,1,2019,2,2019,'FACHP','4ICI','ADL','000013015','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7159,1,2019,1,2019,'TAAEH','4WAU','ADL','001034176','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7161,1,2019,2,2019,'TAADG','5JAW','ADL','000013514','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7163,1,2019,2,2019,'TAADX','4IRCP','ADL','000276592','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7165,1,2019,1,2019,'TAAGZ','4WAU','ADL','001034176','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7168,1,2019,2,2019,'TAAHZ','5SDA','ADL','000013514','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7169,1,2019,1,2019,'TAAEP','5JAWB','ADL','000013514','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7170,2,2019,2,2019,'TAAEA','4LTSF','ADL','000013015','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7174,1,2019,2,2019,'TAAKL','5SDA','ADL','000013514','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7178,1,2019,2,2019,'TABFD','4POTO','ADL','000857816','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7180,1,2019,2,2019,'TAAKA','6CLP','ADL','000013514','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7184,1,2019,2,2019,'TABFA','4PRHS','ADL','000276592','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7187,1,2019,1,2019,'TAAGC','3PRB','ADL','000010901','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7191,1,2019,1,2019,'FABRP','3WHS','ADL','000276592','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7192,1,2019,1,2019,'TABFB','4STDA','ADL','000944814','KJ','2019-02-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7196,1,2019,1,2019,'TAAEK','4HTML5','ADL','000013311','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7197,2,2019,2,2019,'FACNL','4SWP','ADL','000276592','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7201,1,2019,1,2019,'TAAEN','4HTML5','ADL','000013311','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7204,2,2019,2,2019,'TAABG','5ICW','ADL','000013490','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7208,1,2019,1,2019,'TAAGN','4HTML5','ADL','000013311','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7210,2,2019,2,2019,'TAABX','5ICW','ADL','000013490','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7213,1,2019,1,2019,'TAAGS','4HTML5','ADL','000013311','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7216,2,2019,2,2019,'TAAMC','5ICW','ADL','000013490','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7223,1,2019,1,2019,'TAAGC','3PRB','ADL','000944814','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7233,2,2019,2,2019,'TAACB','4BSWN','ADL','000012085','KJ','2019-04-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7236,2,2019,2,2019,'TAADB','4BUI','ADL','000010546','KJ','2019-04-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7238,2,2019,2,2019,'TAADC','4C#B','ADL','000017445','KJ','2019-04-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7241,2,2019,2,2019,'TAACZ','4CNS','ADL','000017445','KJ','2019-04-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7244,2,2019,2,2019,'TABFH','4CNS','ADL','000017445','KJ','2019-04-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7247,2,2019,2,2019,'CABRE','4DWL','ADL','000011369','KJ','2019-04-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7250,2,2019,2,2019,'TAAGX','4DWL','ADL','000011369','KJ','2019-04-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7252,2,2019,2,2019,'TAAEK','4HTML5','ADL','000013311','KJ','2019-04-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7255,2,2019,2,2019,'TAAEN','4HTML5','ADL','000013311','KJ','2019-04-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7258,2,2019,2,2019,'TAAGN','4HTML5','ADL','000013311','KJ','2019-04-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7261,2,2019,2,2019,'TAAGS','4HTML5','ADL','000013311','KJ','2019-04-14','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7264,2,2019,2,2019,'TAACZ','4JSB','ADL','000017445','KJ','2019-04-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7265,2,2019,2,2019,'TAAGW','4SEO','ADL','000011942','KJ','2019-04-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7268,2,2019,2,2019,'TAAHB','4SEO','ADL','000011942','KJ','2019-04-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7274,1,2019,1,2019,'TAAFB','4VGC','ADL','000011369','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7277,2,2019,2,2019,'TAAEH','4WAU','ADL','001034176','KJ','2019-04-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7279,2,2019,2,2019,'TAAGZ','4WAU','ADL','001034176','KJ','2019-04-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7426,1,2019,1,2019,'FABRS','5WHSM','ADL','000013605','KJ','2019-04-12','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7428,2,2019,2,2019,'FABRS','5WHSM','ADL','000013605','KJ','2019-04-12','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7497,1,2019,1,2019,'FABZM','4CYWHS','ADL','000013605','KJ','2019-04-12','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7498,2,2019,2,2019,'FABZM','4CYWHS','ADL','000013605','KJ','2019-04-12','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7584,2,2019,2,2019,'TABFK','4CYMIR','ADL','000013268','KJ','2019-04-11','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7585,1,2019,1,2019,'TAAKH','5EWD','ADL','000010901','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7587,1,2019,1,2019,'TAAMG','5ISV','ADL','000013047','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (7588,1,2019,1,2019,'TAADE','5JSI','ADL','001034176','KJ','2019-02-16','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (14578,1,2019,1,2019,'TABFG','4PICTS','ADL','000857816','KJ','2019-01-01','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (14622,1,2019,1,2019,'TAAGA','4CDE','ADL','000010581','KJ','2019-01-01','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (14637,2,2019,2,2019,'TAAEA','LTSF','ADL','000010581','KJ','2019-01-01','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (17313,1,2019,2,2019,'TAADL','5TSD','ADL','000010581','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (18788,1,2019,2,2019,'TAAEW','3CIHW','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (18791,1,2019,2,2019,'TAABF','3IOOS','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (18796,1,2019,2,2019,'TAADS','3RSDT','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (18799,1,2019,2,2019,'TAAFY','3WNF','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (18800,1,2019,2,2019,'TAADT','3WNF','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (18802,1,2019,2,2019,'TAACB','4BSWN','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (18804,1,2019,2,2019,'FABRP','3WHS','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (18806,1,2019,2,2019,'FACNL','4SWP','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (18808,1,2019,2,2019,'TAABB','2WIT','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (18811,1,2019,2,2019,'TAABE','3CUD','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (18816,1,2019,2,2019,'TAAGN','4HTML5','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (18818,1,2019,2,2019,'TAAGS','4HTML5','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (18819,1,2019,2,2019,'TAAGC','3PRB','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (19851,1,2019,1,2019,'TABDN','4CMS','ADL','000010581','KJ','2019-02-22','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (19960,2,2019,2,2019,'TAACB','4BSWN','ADL','000012974','KJ','2019-04-12','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (19962,1,2019,1,2019,'TABFG','4PICTS','ADL','000010581','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (20327,1,2019,2,2019,'TAAGL','3CFCH','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (20328,1,2019,2,2019,'TAAEY','3MEAS','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (20329,1,2019,2,2019,'TAAGM','3BSA','ADL','000012974','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (20370,1,2019,2,2019,'TAAKL','5SDA','ADL','000010581','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (20417,1,2019,2,2019,'TAAHC','5DD','ADL','000010581','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (20454,1,2019,2,2019,'TAACR','5MITP','ADL','000010581','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (20516,1,2019,1,2019,'TAACD','5CCN6','ADL','000010581','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (20518,1,2019,1,2019,'TABEF','5CCN6','ADL','000010581','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (20784,2,2019,2,2019,'TAAGC','3PRB','ADL','000011123','KJ','2019-01-01','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21126,1,2019,1,2019,'TAABR','5ECS','ADL','000010581','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21128,1,2019,1,2019,'TAAHL','5ECS','ADL','000010581','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21129,1,2019,1,2019,'TAAFZ','4AWS','ADL','000010581','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21164,1,2019,1,2019,'TAACE','5CRS6','ADL','000010581','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21165,1,2019,1,2019,'TABEE','5CRS6','ADL','000010581','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21314,1,2019,2,2019,'TAAKF','5MWD','ADL','000010581','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21315,1,2019,1,2019,'TAAKB','5AWT','ADL','000010581','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21317,1,2019,1,2019,'TAAKC','5AWT','ADL','000010581','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21338,1,2019,1,2019,'TAABL','4CEP','ADL','000010581','KJ','2019-02-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21428,1,2019,2,2019,'TAAHZ','5SDA','ADL','000010581','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21429,1,2019,2,2019,'TAAKL','5SDA','ADL','000010581','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21543,1,2019,1,2019,'TAABL','4CEP','ADL','000010581','KJ','2019-11-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21546,1,2019,1,2019,'TAABR','5ECS','ADL','000010581','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21548,1,2019,1,2019,'TAAHL','5ECS','ADL','000010581','KJ','2019-12-02','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21986,2,2019,2,2019,'TAAMD','4CIN','ADL','000010581','KJ','2019-03-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21987,2,2019,2,2019,'TAAEA','4LTSF','ADL','000010581','KJ','2019-03-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21988,2,2019,2,2019,'TAAME','4CIN','ADL','000010581','KJ','2019-03-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21989,2,2019,2,2019,'TAACW','4DBB','ADL','000010581','KJ','2019-03-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21993,2,2019,2,2019,'TAADT','4DBB','ADL','000010581','KJ','2019-03-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (21996,2,2019,2,2019,'TAACB','4BSWN','ADL','000010581','KJ','2019-03-13','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (22257,2,2019,2,2019,'TAABL','4CEP','ADL','000010581','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (22258,2,2019,2,2019,'TABEN','4CYBCS','ADL','000010581','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (22259,2,2019,2,2019,'TABEK','4CYCSF','ADL','000010581','KJ','2019-04-10','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (22260,2,2019,2,2019,'TABEW','4CYITS','ADL','000010581','KJ','2019-04-09','2019-01-01');
INSERT INTO crn_detail(CRN,TermCodeStart,TermYearStart,TermCodeEnd,TermYearEnd,TafeCompCode,SubjectCode,CampusCode,LecturerID,DepartmentCode,FreezeDate,DateCreated) VALUES (22261,2,2019,2,2019,'TABEG','4CYNET','ADL','000010581','KJ','2019-04-08','2019-01-01');

/*!40000 ALTER TABLE `crn_detail` ENABLE KEYS */;
UNLOCK TABLES;

-- -----------------------------------------------------
-- Table `db_tafebuddy`.`day_of_week`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`day_of_week` (
  `DayCode` INT(1) NOT NULL,
  `DayShortName` CHAR(3) NOT NULL,
  `DayLongName` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`DayCode`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

--
-- Dumping data for table `day_of_week`
--

LOCK TABLES `day_of_week` WRITE;
/*!40000 ALTER TABLE `day_of_week` DISABLE KEYS */;
INSERT INTO `day_of_week` VALUES (1,'Mon','Monday'),(2,'Tue','Tuesday'),(3,'Wed','Wednesday'),(4,'Thu','Thursday'),(5,'Fri','Friday'),(6,'Sat','Saturday'),(7,'Sun','Sunday');
/*!40000 ALTER TABLE `day_of_week` ENABLE KEYS */;
UNLOCK TABLES;

-- -----------------------------------------------------
-- Table `db_tafebuddy`.`crn_session_timetable`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`crn_session_timetable` (
  `CRN` VARCHAR(32) NOT NULL,
  `TermCodeStart` INT(1) NOT NULL,
  `TermYearStart` INT(4) NOT NULL,
  `DayCode` INT(1) NOT NULL,
  `StartTime` TIME NOT NULL,
  `EndTime` TIME NOT NULL,
  `Room` VARCHAR(16) NULL DEFAULT NULL,
  `Building` VARCHAR(16) NULL DEFAULT NULL,
  `CampusCode` CHAR(3) NOT NULL,
  PRIMARY KEY (`CRN`, `DayCode`, `StartTime`),
  INDEX `FK_Session_CRN` (`CRN` ASC, `TermCodeStart` ASC, `TermYearStart` ASC),
  INDEX `FK_Session_TermStart` (`TermCodeStart` ASC, `TermYearStart` ASC),
  INDEX `FK_Session_DayCode` (`DayCode` ASC),
  INDEX `FK_Session_CampusCode` (`CampusCode` ASC),
  CONSTRAINT `FK_Session_CRN`
    FOREIGN KEY (`CRN` , `TermCodeStart` , `TermYearStart`)
    REFERENCES `db_tafebuddy`.`crn_detail` (`CRN` , `TermCodeStart` , `TermYearStart`)
    ON UPDATE CASCADE,
  CONSTRAINT `FK_Session_CampusCode`
    FOREIGN KEY (`CampusCode`)
    REFERENCES `db_tafebuddy`.`campus` (`CampusCode`)
    ON UPDATE CASCADE,
  CONSTRAINT `FK_Session_DayCode`
    FOREIGN KEY (`DayCode`)
    REFERENCES `db_tafebuddy`.`day_of_week` (`DayCode`)
    ON UPDATE CASCADE,
  CONSTRAINT `FK_Session_TermStart`
    FOREIGN KEY (`TermCodeStart` , `TermYearStart`)
    REFERENCES `db_tafebuddy`.`term_datetime` (`TermCode` , `TermYear`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


--
-- Dumping data for table `crn_session_timetable`
--

LOCK TABLES `crn_session_timetable` WRITE;
/*!40000 ALTER TABLE `crn_session_timetable` DISABLE KEYS */;
INSERT INTO `crn_session_timetable` VALUES ('14578',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('14622',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('14637',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('17313',1,2019,1,'00:14:00','00:16:00','B.B04','ADL-B','ADL'),('18788',1,2019,3,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('18788',1,2019,3,'00:11:30','00:13:30','B.B02','ADL-B','ADL'),('18791',1,2019,3,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('18791',1,2019,3,'00:11:30','00:13:30','B.B02','ADL-B','ADL'),('18796',1,2019,3,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('18796',1,2019,3,'00:11:30','00:13:30','B.B02','ADL-B','ADL'),('18799',1,2019,3,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('18799',1,2019,3,'00:11:30','00:13:30','B.B02','ADL-B','ADL'),('18800',1,2019,3,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('18800',1,2019,3,'00:11:30','00:13:30','B.B02','ADL-B','ADL'),('18802',1,2019,3,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('18802',1,2019,3,'00:11:30','00:13:00','B.B02','ADL-B','ADL'),('18804',1,2019,3,'00:14:00','00:16:00','A.203','ADL-A','ADL'),('18806',1,2019,3,'00:14:00','00:16:00','A.203','ADL-A','ADL'),('18808',1,2019,3,'00:14:00','00:16:00','A.203','ADL-A','ADL'),('18811',1,2019,3,'00:14:00','00:16:00','A.203','ADL-A','ADL'),('18816',1,2019,3,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('18816',1,2019,3,'00:11:30','00:13:00','B.B02','ADL-B','ADL'),('18818',1,2019,3,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('18818',1,2019,3,'00:11:30','00:13:30','B.B02','ADL-B','ADL'),('18819',1,2019,3,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('18819',1,2019,3,'00:11:30','00:13:30','B.B02','ADL-B','ADL'),('19851',1,2019,5,'00:09:30','00:16:30','B.B04','ADL-B','ADL'),('19960',2,2019,5,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('19962',1,2019,2,'00:11:30','00:13:30','A.204','ADL-A','ADL'),('20327',1,2019,3,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('20327',1,2019,3,'00:11:30','00:13:30','B.B02','ADL-B','ADL'),('20370',1,2019,2,'00:16:30','00:18:30','B.B04','ADL-B','ADL'),('20417',1,2019,1,'00:09:00','00:11:00','B.B04','ADL-B','ADL'),('20516',1,2019,1,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('20516',1,2019,2,'00:11:30','00:13:30','A.203','ADL-A','ADL'),('20518',1,2019,1,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('20518',1,2019,2,'00:11:30','00:13:30','A.203','ADL-A','ADL'),('20784',2,2019,3,'00:09:00','00:16:30','Z.111','ADL-Z','ADL'),('21126',1,2019,2,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('21126',1,2019,3,'00:11:30','00:13:30','A.203','ADL-A','ADL'),('21128',1,2019,2,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('21128',1,2019,3,'00:11:30','00:13:30','A.203','ADL-A','ADL'),('21129',1,2019,1,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('21129',1,2019,4,'00:14:00','00:16:00','A.105','ADL-A','ADL'),('21164',1,2019,3,'00:09:00','00:11:00','A.204','ADL-A','ADL'),('21164',1,2019,5,'00:09:00','00:11:00','A.103','ADL-A','ADL'),('21165',1,2019,3,'00:09:00','00:11:00','A.204','ADL-A','ADL'),('21165',1,2019,5,'00:09:00','00:11:00','A.103','ADL-A','ADL'),('21314',1,2019,1,'00:11:30','00:13:30','A.113','ADL-A','ADL'),('21315',1,2019,3,'00:09:00','00:11:00','A.106','ADL-A','ADL'),('21317',1,2019,3,'00:09:00','00:11:00','A.106','ADL-A','ADL'),('21338',1,2019,3,'00:11:30','00:13:30','A.106','ADL-A','ADL'),('21428',1,2019,2,'00:16:30','00:18:30','B.B04','ADL-B','ADL'),('21429',1,2019,2,'00:16:30','00:18:30','B.B04','ADL-B','ADL'),('21543',1,2019,1,'00:11:30','00:13:30','A.106','ADL-A','ADL'),('21546',1,2019,2,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('21546',1,2019,3,'00:11:30','00:13:30','A.203','ADL-A','ADL'),('21548',1,2019,2,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('21548',1,2019,3,'00:11:30','00:13:00','A.203','ADL-A','ADL'),('21986',2,2019,2,'00:16:30','00:18:30','Z.111','ADL-Z','ADL'),('21986',2,2019,4,'00:11:30','00:13:30','Z.111','ADL-Z','ADL'),('21987',2,2019,2,'00:16:30','00:18:30','Z.111','ADL-Z','ADL'),('21987',2,2019,4,'00:11:30','00:13:30','Z.111','ADL-Z','ADL'),('21988',2,2019,2,'00:16:30','00:18:30','Z.111','ADL-Z','ADL'),('21988',2,2019,4,'00:11:30','00:13:30','Z.111','ADL-Z','ADL'),('21989',2,2019,2,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('21993',2,2019,2,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('21996',2,2019,2,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('22257',2,2019,3,'00:14:00','00:16:00','A.210','ADL-A','ADL'),('22258',2,2019,2,'00:11:30','00:13:30','A.210','ADL-A','ADL'),('22258',2,2019,5,'00:09:00','00:11:00','A.210','ADL-A','ADL'),('22259',2,2019,3,'00:11:30','00:13:30','A.210','ADL-A','ADL'),('22259',2,2019,4,'00:11:30','00:13:30','A.210','ADL-A','ADL'),('22260',2,2019,2,'00:14:00','00:16:00','B.B03','ADL-B','ADL'),('22261',2,2019,1,'00:16:30','00:18:30','A.203','ADL-A','ADL'),('22261',2,2019,5,'00:11:30','00:13:30','A.203','ADL-A','ADL'),('5798',2,2019,2,'00:09:00','00:11:00','A.112','ADL-A','ADL'),('5799',2,2019,2,'00:09:00','00:11:00','A.112','ADL-A','ADL'),('5800',2,2019,2,'00:09:00','00:11:00','A.112','ADL-A','ADL'),('5801',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5802',2,2019,2,'00:09:00','00:11:00','A.112','ADL-A','ADL'),('5803',1,2019,2,'00:16:30','00:18:30','A.111','ADL-A','ADL'),('5804',2,2019,2,'00:09:00','00:11:00','A.112','ADL-A','ADL'),('5806',1,2019,4,'00:16:30','00:18:30','A.111','ADL-A','ADL'),('5807',2,2019,2,'00:09:00','00:11:00','A.112','ADL-A','ADL'),('5808',1,2019,1,'00:11:30','00:13:30','A.105','ADL-A','ADL'),('5808',1,2019,2,'00:11:30','00:13:30','A.103','ADL-A','ADL'),('5809',2,2019,2,'00:09:00','00:11:00','A.112','ADL-A','ADL'),('5810',2,2019,1,'00:11:30','00:13:30','A.105','ADL-A','ADL'),('5810',2,2019,2,'00:11:30','00:13:30','A.103','ADL-A','ADL'),('5811',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5813',1,2019,3,'00:11:30','00:13:30','A.113','ADL-A','ADL'),('5814',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5815',2,2019,1,'00:11:30','00:13:30','A.105','ADL-A','ADL'),('5815',2,2019,2,'00:11:30','00:13:30','A.103','ADL-A','ADL'),('5816',2,2019,1,'00:11:30','00:13:30','B.B03','ADL-B','ADL'),('5817',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5818',2,2019,3,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('5819',2,2019,2,'00:14:00','00:16:00','A.105','ADL-A','ADL'),('5820',2,2019,2,'00:09:00','00:11:00','A.106','ADL-A','ADL'),('5823',2,2019,3,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('5824',1,2019,2,'00:14:00','00:16:00','A.103','ADL-A','ADL'),('5825',2,2019,1,'00:11:30','00:13:30','A.106','ADL-A','ADL'),('5826',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5827',2,2019,3,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('5828',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5829',2,2019,1,'00:11:30','00:13:30','A.106','ADL-A','ADL'),('5830',2,2019,1,'00:09:00','00:11:00','A.103','ADL-A','ADL'),('5830',2,2019,2,'00:09:00','00:11:00','A.103','ADL-A','ADL'),('5831',2,2019,3,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('5832',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5833',1,2019,4,'00:11:30','00:13:30','A.111','ADL-A','ADL'),('5835',2,2019,1,'00:09:00','00:11:00','A.103','ADL-A','ADL'),('5835',2,2019,2,'00:09:00','00:11:00','A.103','ADL-A','ADL'),('5836',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5837',2,2019,2,'00:09:00','00:11:00','B.B02','ADL-B','ADL'),('5837',2,2019,4,'00:09:00','00:11:00','A.106','ADL-A','ADL'),('5839',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5840',2,2019,1,'00:09:00','00:11:00','A.103','ADL-A','ADL'),('5840',2,2019,2,'00:09:00','00:11:00','A.103','ADL-A','ADL'),('5841',1,2019,5,'00:09:00','00:11:00','A.112','ADL-A','ADL'),('5842',1,2019,1,'00:14:00','00:16:00','A.112','ADL-A','ADL'),('5845',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5847',1,2019,4,'00:16:30','00:18:30','A.103','ADL-A','ADL'),('5848',1,2019,3,'00:16:30','00:18:30','A.111','ADL-A','ADL'),('5849',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5851',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5852',1,2019,3,'00:16:30','00:18:30','A.111','ADL-A','ADL'),('5854',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5855',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5857',1,2019,3,'00:09:00','00:11:00','A.106','ADL-A','ADL'),('5858',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5859',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5860',1,2019,3,'00:09:00','00:11:00','A.106','ADL-A','ADL'),('5864',1,2019,2,'00:14:00','00:16:00','A.111','ADL-A','ADL'),('5867',2,2019,4,'00:14:00','00:16:00','A.112','ADL-A','ADL'),('5868',1,2019,2,'00:11:30','00:13:30','B.B04','ADL-B','ADL'),('5872',1,2019,5,'00:11:30','00:13:30','A.113','ADL-A','ADL'),('5875',1,2019,2,'00:11:30','00:13:30','B.B04','ADL-B','ADL'),('5877',2,2019,4,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('5883',1,2019,1,'00:11:30','00:13:30','B.B03','ADL-B','ADL'),('5889',2,2019,2,'00:11:30','00:13:30','B.B02','ADL-B','ADL'),('5889',2,2019,5,'00:14:00','00:16:00','B.B04','ADL-B','ADL'),('5890',1,2019,1,'00:18:00','00:20:00','B.B02','ADL-B','ADL'),('5895',1,2019,2,'00:09:00','00:11:00','A.204','ADL-A','ADL'),('5895',1,2019,3,'00:14:00','00:16:00','A.204','ADL-A','ADL'),('5898',2,2019,3,'00:18:00','00:21:00','A.204','ADL-A','ADL'),('5902',1,2019,4,'00:16:30','00:18:30','A.105','ADL-A','ADL'),('5902',1,2019,5,'00:14:00','00:16:00','A.105','ADL-A','ADL'),('5905',2,2019,4,'00:18:00','00:21:00','A.204','ADL-A','ADL'),('5906',1,2019,4,'00:11:30','00:13:30','A.112','ADL-A','ADL'),('5909',1,2019,2,'00:18:00','00:20:00','B.B02','ADL-B','ADL'),('5911',1,2019,4,'00:11:30','00:13:30','A.112','ADL-A','ADL'),('5913',1,2019,1,'00:14:00','00:16:00','A.218','ADL-A','ADL'),('5916',1,2019,1,'00:14:00','00:16:00','A.113','ADL-A','ADL'),('5917',1,2019,4,'00:11:30','00:13:30','A.112','ADL-A','ADL'),('5922',1,2019,1,'00:14:00','00:16:00','A.106','ADL-A','ADL'),('5924',1,2019,1,'00:09:00','00:11:00','A.113','ADL-A','ADL'),('5927',1,2019,2,'00:11:30','00:13:30','A.204','ADL-A','ADL'),('5930',1,2019,1,'00:09:00','00:11:00','A.113','ADL-A','ADL'),('5933',1,2019,2,'00:11:30','00:13:30','A.112','ADL-A','ADL'),('5937',1,2019,1,'00:09:00','00:11:00','A.113','ADL-A','ADL'),('5941',1,2019,2,'00:14:00','00:16:00','A.113','ADL-A','ADL'),('5943',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5945',1,2019,1,'00:09:00','00:11:00','A.113','ADL-A','ADL'),('5947',1,2019,2,'00:11:30','00:13:30','A.106','ADL-A','ADL'),('5950',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5951',1,2019,1,'00:09:00','00:11:00','A.112','ADL-A','ADL'),('5954',1,2019,2,'00:11:30','00:13:30','B.B02','ADL-B','ADL'),('5960',1,2019,2,'00:09:00','00:11:00','A.112','ADL-A','ADL'),('5961',1,2019,1,'00:09:00','00:11:00','A.112','ADL-A','ADL'),('5965',1,2019,2,'00:09:00','00:11:00','A.113','ADL-A','ADL'),('5968',1,2019,1,'00:09:00','00:11:00','A.112','ADL-A','ADL'),('5970',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('5973',1,2019,3,'00:11:30','00:13:30','A.105','ADL-A','ADL'),('5978',2,2019,1,'00:11:30','00:13:30','A.112','ADL-A','ADL'),('5980',1,2019,3,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('5984',1,2019,3,'00:14:00','00:16:00','A.203','ADL-A','ADL'),('5985',2,2019,1,'00:11:30','00:13:30','A.112','ADL-A','ADL'),('5991',1,2019,3,'00:09:00','00:11:00','B.B02','ADL-B','ADL'),('5995',2,2019,1,'00:11:30','00:13:30','A.112','ADL-A','ADL'),('5998',1,2019,3,'00:11:30','00:13:30','B.B02','ADL-B','ADL'),('6001',1,2019,2,'00:14:00','00:16:00','B.B04','ADL-B','ADL'),('6003',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6004',1,2019,3,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('6010',1,2019,3,'00:14:00','00:16:00','A.105','ADL-A','ADL'),('6011',1,2019,4,'00:11:30','00:13:30','A.113','ADL-A','ADL'),('6012',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6017',1,2019,4,'00:14:00','00:16:00','A.203','ADL-A','ADL'),('6021',1,2019,4,'00:11:30','00:13:30','A.113','ADL-A','ADL'),('6023',1,2019,4,'00:14:00','00:16:00','B.B02','ADL-B','ADL'),('6026',1,2019,4,'00:14:00','00:16:00','A.112','ADL-A','ADL'),('6028',2,2019,2,'00:11:30','00:13:30','A.105','ADL-A','ADL'),('6028',2,2019,3,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('6029',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6035',1,2019,5,'00:14:00','00:16:00','A.218','ADL-A','ADL'),('6041',2,2019,2,'00:11:30','00:13:30','A.105','ADL-A','ADL'),('6041',2,2019,3,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('6043',1,2019,5,'00:14:00','00:16:00','A.112','ADL-A','ADL'),('6045',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6049',1,2019,5,'00:14:00','00:16:00','A.113','ADL-A','ADL'),('6052',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6054',2,2019,2,'00:11:30','00:13:30','A.105','ADL-A','ADL'),('6054',2,2019,3,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('6057',1,2019,5,'00:09:00','00:11:00','A.106','ADL-A','ADL'),('6059',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6062',1,2019,5,'00:14:00','00:16:00','A.204','ADL-A','ADL'),('6063',1,2019,3,'00:11:30','00:13:30','A.111','ADL-A','ADL'),('6067',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6072',1,2019,5,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('6074',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6075',1,2019,1,'00:14:00','00:16:00','A.203','ADL-A','ADL'),('6075',1,2019,3,'00:09:00','00:11:00','A.218','ADL-A','ADL'),('6078',1,2019,5,'00:14:00','00:16:00','A.106','ADL-A','ADL'),('6081',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6083',2,2019,1,'00:14:00','00:16:00','B.B03','ADL-B','ADL'),('6084',2,2019,1,'00:09:00','00:11:00','B.B02','ADL-B','ADL'),('6086',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6091',2,2019,1,'00:09:00','00:11:00','A.113','ADL-A','ADL'),('6095',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6096',1,2019,1,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('6096',1,2019,4,'00:14:00','00:16:00','A.105','ADL-A','ADL'),('6101',2,2019,2,'00:09:00','00:11:00','B.B02','ADL-B','ADL'),('6103',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6105',1,2019,1,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('6105',1,2019,4,'00:14:00','00:16:00','A.105','ADL-A','ADL'),('6106',2,2019,2,'00:14:00','00:16:00','A.103','ADL-A','ADL'),('6110',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6115',1,2019,3,'00:09:00','00:11:00','A.204','ADL-A','ADL'),('6115',1,2019,5,'00:09:00','00:11:00','A.103','ADL-A','ADL'),('6116',2,2019,2,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('6118',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6122',2,2019,3,'00:09:00','00:11:00','B.B03','ADL-B','ADL'),('6124',1,2019,3,'00:09:00','00:11:00','A.204','ADL-A','ADL'),('6124',1,2019,5,'00:09:00','00:11:00','A.103','ADL-A','ADL'),('6125',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6130',2,2019,3,'00:11:30','00:13:30','B.B04','ADL-B','ADL'),('6134',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6135',2,2019,3,'00:09:00','00:11:00','A.204','ADL-A','ADL'),('6135',2,2019,5,'00:14:00','00:16:00','A.204','ADL-A','ADL'),('6136',2,2019,3,'00:09:00','00:11:00','A.103','ADL-A','ADL'),('6142',2,2019,3,'00:11:30','00:13:30','A.103','ADL-A','ADL'),('6144',2,2019,3,'00:09:00','00:11:00','A.204','ADL-A','ADL'),('6144',2,2019,5,'00:14:00','00:16:00','A.204','ADL-A','ADL'),('6148',2,2019,3,'00:14:00','00:16:00','A.103','ADL-A','ADL'),('6151',1,2019,4,'00:09:00','00:11:00','B.B03','ADL-B','ADL'),('6155',2,2019,3,'00:09:00','00:11:00','A.112','ADL-A','ADL'),('6161',2,2019,3,'00:09:00','00:11:00','A.113','ADL-A','ADL'),('6162',1,2019,4,'00:09:00','00:11:00','B.B03','ADL-B','ADL'),('6166',2,2019,3,'00:14:00','00:16:00','A.113','ADL-A','ADL'),('6169',1,2019,4,'00:09:00','00:11:00','B.B03','ADL-B','ADL'),('6172',2,2019,3,'00:14:00','00:16:00','A.106','ADL-A','ADL'),('6174',1,2019,3,'00:16:30','00:18:30','B.B02','ADL-B','ADL'),('6179',2,2019,4,'00:09:00','00:11:00','A.204','ADL-A','ADL'),('6182',1,2019,1,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('6182',1,2019,2,'00:11:30','00:13:30','A.203','ADL-A','ADL'),('6186',2,2019,4,'00:14:00','00:16:00','A.204','ADL-A','ADL'),('6190',1,2019,1,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('6190',1,2019,2,'00:11:30','00:13:30','A.203','ADL-A','ADL'),('6193',2,2019,4,'00:14:00','00:16:00','A.105','ADL-A','ADL'),('6199',2,2019,1,'00:14:00','00:16:00','A.103','ADL-A','ADL'),('6199',2,2019,2,'00:11:30','00:13:30','A.112','ADL-A','ADL'),('6201',2,2019,5,'00:14:00','00:16:00','A.203','ADL-A','ADL'),('6206',2,2019,5,'00:09:00','00:11:00','A.218','ADL-A','ADL'),('6209',1,2019,2,'00:14:00','00:16:00','A.113','ADL-A','ADL'),('6213',2,2019,5,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('6218',2,2019,5,'00:11:30','00:13:30','A.105','ADL-A','ADL'),('6226',1,2019,4,'00:11:30','00:13:30','B.B04','ADL-B','ADL'),('6227',2,2019,5,'00:14:00','00:16:00','A.105','ADL-A','ADL'),('6232',2,2019,5,'00:09:00','00:11:00','A.113','ADL-A','ADL'),('6240',2,2019,5,'00:11:30','00:13:30','A.106','ADL-A','ADL'),('6241',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6247',1,2019,3,'00:09:00','00:11:00','A.112','ADL-A','ADL'),('6256',2,2019,2,'00:09:00','00:11:00','A.113','ADL-A','ADL'),('6256',2,2019,2,'00:11:30','00:13:30','A.113','ADL-A','ADL'),('6257',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6262',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6263',2,2019,2,'00:09:00','00:11:00','A.113','ADL-A','ADL'),('6263',2,2019,2,'00:11:30','00:13:30','A.113','ADL-A','ADL'),('6269',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6273',1,2019,3,'00:14:00','00:16:00','A.218','ADL-A','ADL'),('6273',1,2019,3,'00:16:30','00:18:30','A.218','ADL-A','ADL'),('6274',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6283',1,2019,4,'00:14:00','00:16:00','B.B03','ADL-B','ADL'),('6284',1,2019,4,'00:11:30','00:13:30','A.105','ADL-A','ADL'),('6284',1,2019,5,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('6288',1,2019,4,'00:14:00','00:16:00','B.B03','ADL-B','ADL'),('6293',2,2019,4,'00:14:00','00:16:00','B.B02','ADL-B','ADL'),('6297',1,2019,4,'00:16:30','00:18:30','B.B03','ADL-B','ADL'),('6302',1,2019,5,'00:11:30','00:13:30','B.B04','ADL-B','ADL'),('6304',2,2019,4,'00:11:30','00:13:30','A.106','ADL-A','ADL'),('6308',1,2019,1,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('6308',1,2019,4,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('6311',2,2019,3,'00:11:35','00:13:35','Z.111','ADL-Z','ADL'),('6318',1,2019,5,'00:14:00','00:16:00','B.B03','ADL-B','ADL'),('6319',1,2019,4,'00:11:30','00:13:30','A.203','ADL-A','ADL'),('6319',1,2019,5,'00:14:00','00:16:00','A.203','ADL-A','ADL'),('6327',1,2019,1,'00:14:00','00:16:00','A.204','ADL-A','ADL'),('6330',1,2019,2,'00:14:00','00:16:00','A.204','ADL-A','ADL'),('6330',1,2019,4,'00:09:00','00:11:00','A.204','ADL-A','ADL'),('6332',1,2019,2,'00:13:00','00:16:00','Z.111','ADL-Z','ADL'),('6332',1,2019,3,'00:09:00','00:12:00','Z.111','ADL-Z','ADL'),('6334',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6337',1,2019,3,'00:11:30','00:13:30','A.204','ADL-A','ADL'),('6337',1,2019,5,'00:09:00','00:11:00','A.204','ADL-A','ADL'),('6342',1,2019,2,'00:13:00','00:16:00','Z.111','ADL-Z','ADL'),('6342',1,2019,3,'00:09:00','00:12:00','Z.111','ADL-Z','ADL'),('6347',1,2019,2,'00:13:00','00:16:00','Z.111','ADL-Z','ADL'),('6347',1,2019,3,'00:09:00','00:12:00','Z.111','ADL-Z','ADL'),('6350',1,2019,5,'00:11:30','00:13:30','A.203','ADL-A','ADL'),('6351',2,2019,3,'00:11:30','00:13:30','B.B02','ADL-B','ADL'),('6351',2,2019,3,'00:14:00','00:16:00','B.B02','ADL-B','ADL'),('6360',2,2019,1,'00:11:30','00:13:30','A.204','ADL-A','ADL'),('6361',1,2019,2,'00:13:00','00:16:00','Z.111','ADL-Z','ADL'),('6361',1,2019,3,'00:09:00','00:12:00','Z.111','ADL-Z','ADL'),('6365',1,2019,1,'00:09:00','00:11:00','A.204','ADL-A','ADL'),('6365',1,2019,2,'00:16:30','00:18:30','A.204','ADL-A','ADL'),('6369',1,2019,1,'00:11:30','00:13:30','A.204','ADL-A','ADL'),('6377',1,2019,4,'00:11:30','00:13:30','A.204','ADL-A','ADL'),('6377',1,2019,4,'00:14:00','00:16:00','A.204','ADL-A','ADL'),('6379',2,2019,4,'00:14:00','00:16:00','A.218','ADL-A','ADL'),('6388',1,2019,1,'00:09:00','00:11:00','A.103','ADL-A','ADL'),('6400',1,2019,1,'00:11:30','00:13:30','A.106','ADL-A','ADL'),('6407',2,2019,2,'00:14:00','00:16:00','A.204','ADL-A','ADL'),('6407',2,2019,4,'00:11:30','00:13:30','A.204','ADL-A','ADL'),('6415',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6422',1,2019,2,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('6422',1,2019,3,'00:11:30','00:13:30','A.203','ADL-A','ADL'),('6424',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6425',1,2019,5,'00:09:00','00:11:00','B.B02','ADL-B','ADL'),('6425',1,2019,5,'00:11:30','00:13:30','B.B03','ADL-B','ADL'),('6427',2,2019,5,'00:14:00','00:16:00','A.103','ADL-A','ADL'),('6433',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6436',1,2019,2,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('6436',1,2019,3,'00:11:30','00:13:30','A.203','ADL-A','ADL'),('6438',1,2019,1,'00:11:30','00:13:30','A.103','ADL-A','ADL'),('6438',1,2019,1,'00:14:00','00:16:00','A.103','ADL-A','ADL'),('6442',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6449',1,2019,1,'00:11:30','00:13:30','A.103','ADL-A','ADL'),('6449',1,2019,1,'00:14:00','00:16:00','A.103','ADL-A','ADL'),('6450',2,2019,1,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('6450',2,2019,4,'00:11:30','00:13:30','A.105','ADL-A','ADL'),('6452',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6456',1,2019,5,'00:09:00','00:11:00','B.B03','ADL-B','ADL'),('6456',1,2019,5,'00:11:30','00:13:30','B.B02','ADL-B','ADL'),('6461',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6463',1,2019,4,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('6463',1,2019,4,'00:14:00','00:16:00','A.218','ADL-A','ADL'),('6466',1,2019,3,'00:09:00','00:12:00','Z.111','ADL-Z','ADL'),('6467',2,2019,1,'00:09:00','00:11:00','A.105','ADL-A','ADL'),('6467',2,2019,4,'00:11:30','00:13:30','A.105','ADL-A','ADL'),('6474',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6477',1,2019,5,'00:11:30','00:13:30','A.105','ADL-A','ADL'),('6478',1,2019,3,'00:09:00','00:12:00','Z.111','ADL-Z','ADL'),('6482',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6483',1,2019,4,'00:18:30','00:20:30','A.103','ADL-A','ADL'),('6487',2,2019,2,'00:11:30','00:13:30','A.203','ADL-A','ADL'),('6487',2,2019,5,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('6491',1,2019,3,'00:09:00','00:12:00','Z.111','ADL-Z','ADL'),('6493',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6494',1,2019,4,'00:18:30','00:20:30','A.103','ADL-A','ADL'),('6501',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6502',1,2019,5,'00:14:00','00:16:00','B.B04','ADL-B','ADL'),('6503',1,2019,3,'00:09:00','00:12:00','Z.111','ADL-Z','ADL'),('6505',1,2019,4,'00:18:30','00:20:30','A.103','ADL-A','ADL'),('6510',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6513',2,2019,3,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6513',2,2019,4,'00:09:00','00:11:00','A.113','ADL-A','ADL'),('6515',1,2019,4,'00:18:30','00:20:30','A.103','ADL-A','ADL'),('6516',1,2019,3,'00:09:00','00:12:00','Z.111','ADL-Z','ADL'),('6520',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6521',1,2019,4,'00:14:00','00:16:00','B.B04','ADL-B','ADL'),('6525',1,2019,4,'00:18:30','00:20:30','A.103','ADL-A','ADL'),('6528',1,2019,3,'00:09:00','00:12:00','Z.111','ADL-Z','ADL'),('6529',2,2019,4,'00:14:00','00:16:00','A.203','ADL-A','ADL'),('6531',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6537',1,2019,4,'00:18:30','00:20:30','A.103','ADL-A','ADL'),('6540',1,2019,2,'00:11:30','00:13:30','A.105','ADL-A','ADL'),('6540',1,2019,2,'00:14:00','00:16:00','A.105','ADL-A','ADL'),('6541',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6544',1,2019,1,'00:11:30','00:13:30','A.113','ADL-A','ADL'),('6548',1,2019,3,'00:18:30','00:20:30','A.204','ADL-A','ADL'),('6551',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6554',2,2019,1,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('6554',2,2019,3,'00:11:30','00:13:30','A.203','ADL-A','ADL'),('6555',1,2019,1,'00:11:30','00:13:30','A.113','ADL-A','ADL'),('6560',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6561',1,2019,3,'00:18:30','00:20:30','A.204','ADL-A','ADL'),('6567',1,2019,1,'00:11:30','00:13:30','A.113','ADL-A','ADL'),('6569',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6570',2,2019,2,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('6570',2,2019,4,'00:11:30','00:13:30','A.203','ADL-A','ADL'),('6574',1,2019,3,'00:18:30','00:20:30','A.204','ADL-A','ADL'),('6579',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6582',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6584',1,2019,3,'00:18:30','00:20:30','A.204','ADL-A','ADL'),('6585',1,2019,4,'00:14:00','00:16:00','A.210','ADL-A','ADL'),('6589',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6592',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6596',1,2019,4,'00:18:30','00:20:30','A.103','ADL-A','ADL'),('6601',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6602',2,2019,4,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('6607',1,2019,3,'00:18:30','00:20:30','A.204','ADL-A','ADL'),('6610',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6621',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6625',1,2019,3,'00:18:30','00:20:30','A.204','ADL-A','ADL'),('6631',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6633',2,2019,3,'00:14:00','00:16:00','A.203','ADL-A','ADL'),('6633',2,2019,5,'00:11:30','00:13:30','A.203','ADL-A','ADL'),('6636',1,2019,3,'00:18:30','00:20:30','A.204','ADL-A','ADL'),('6641',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6649',2,2019,4,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('6651',1,2019,3,'00:18:30','00:20:30','A.204','ADL-A','ADL'),('6662',2,2019,3,'00:14:00','00:16:00','A.203','ADL-A','ADL'),('6662',2,2019,5,'00:11:30','00:13:30','A.203','ADL-A','ADL'),('6663',1,2019,3,'00:18:30','00:20:30','A.204','ADL-A','ADL'),('6664',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6670',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6671',1,2019,1,'00:09:00','00:11:00','A.106','ADL-A','ADL'),('6675',1,2019,3,'00:18:30','00:20:30','A.204','ADL-A','ADL'),('6681',1,2019,1,'00:14:00','00:16:00','A.105','ADL-A','ADL'),('6685',2,2019,4,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('6686',1,2019,4,'00:18:30','00:20:30','A.103','ADL-A','ADL'),('6689',1,2019,2,'00:13:00','00:16:00','Z.111','ADL-Z','ADL'),('6689',1,2019,3,'00:09:00','00:12:00','Z.111','ADL-Z','ADL'),('6690',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6691',1,2019,4,'00:09:00','00:11:00','A.106','ADL-A','ADL'),('6695',1,2019,4,'00:18:30','00:20:30','A.103','ADL-A','ADL'),('6696',2,2019,3,'00:14:00','00:16:00','A.203','ADL-A','ADL'),('6696',2,2019,5,'00:11:30','00:13:30','A.203','ADL-A','ADL'),('6699',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6704',1,2019,4,'00:14:00','00:16:00','A.106','ADL-A','ADL'),('6706',1,2019,4,'00:18:30','00:20:30','A.103','ADL-A','ADL'),('6710',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6713',1,2019,4,'00:11:30','00:13:30','B.B02','ADL-B','ADL'),('6714',1,2019,2,'00:14:00','00:16:00','A.106','ADL-A','ADL'),('6716',1,2019,4,'00:18:30','00:20:30','A.103','ADL-A','ADL'),('6720',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6722',1,2019,3,'00:14:00','00:16:00','A.112','ADL-A','ADL'),('6725',1,2019,4,'00:18:30','00:20:30','A.103','ADL-A','ADL'),('6734',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6737',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6742',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6747',1,2019,2,'00:09:00','00:11:00','A.203','ADL-A','ADL'),('6751',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6755',1,2019,4,'00:11:30','00:13:30','B.B02','ADL-B','ADL'),('6759',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6762',1,2019,2,'00:09:00','00:11:00','A.103','ADL-A','ADL'),('6766',1,2019,4,'00:11:30','00:13:30','A.210','ADL-A','ADL'),('6770',2,2019,1,'00:09:00','00:11:00','A.218','ADL-A','ADL'),('6771',1,2019,2,'00:13:00','00:16:00','Z.111','ADL-Z','ADL'),('6775',1,2019,4,'00:09:00','00:11:00','A.112','ADL-A','ADL'),('6780',1,2019,3,'00:09:00','00:12:00','Z.111','ADL-Z','ADL'),('6785',1,2019,4,'00:09:00','00:11:00','A.112','ADL-A','ADL'),('6787',1,2019,3,'00:09:00','00:12:00','Z.111','ADL-Z','ADL'),('6789',2,2019,2,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('6789',2,2019,5,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('6794',1,2019,3,'00:11:30','00:13:30','A.112','ADL-A','ADL'),('6796',1,2019,2,'00:13:00','00:16:00','Z.111','ADL-Z','ADL'),('6796',1,2019,3,'00:09:00','00:12:00','Z.111','ADL-Z','ADL'),('6798',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6804',1,2019,2,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('6804',1,2019,5,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('6806',1,2019,3,'00:11:30','00:13:30','A.112','ADL-A','ADL'),('6808',1,2019,2,'00:13:00','00:16:00','Z.111','ADL-Z','ADL'),('6808',1,2019,3,'00:09:00','00:12:00','Z.111','ADL-Z','ADL'),('6809',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6815',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6817',1,2019,3,'00:11:30','00:13:30','A.112','ADL-A','ADL'),('6819',2,2019,5,'00:14:00','00:16:00','A.106','ADL-A','ADL'),('6826',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6827',1,2019,2,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('6827',1,2019,5,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('6829',1,2019,1,'00:14:00','00:16:00','B.B02','ADL-B','ADL'),('6834',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6837',1,2019,1,'00:14:00','00:16:00','B.B02','ADL-B','ADL'),('6839',2,2019,1,'00:14:00','00:16:00','Z.111','ADL-Z','ADL'),('6839',2,2019,3,'00:11:30','00:13:30','Z.111','ADL-Z','ADL'),('6841',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6846',1,2019,1,'00:14:00','00:16:00','B.B02','ADL-B','ADL'),('6848',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6851',2,2019,1,'00:14:00','00:16:00','Z.111','ADL-Z','ADL'),('6851',2,2019,3,'00:11:30','00:13:30','Z.111','ADL-Z','ADL'),('6852',1,2019,3,'00:11:30','00:13:30','B.B04','ADL-B','ADL'),('6855',1,2019,1,'00:14:00','00:16:00','B.B02','ADL-B','ADL'),('6857',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6860',1,2019,2,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('6860',1,2019,5,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('6864',1,2019,1,'00:11:30','00:13:30','B.B02','ADL-B','ADL'),('6867',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6871',1,2019,1,'00:09:00','00:11:00','A.218','ADL-A','ADL'),('6871',1,2019,5,'00:09:00','00:11:00','A.218','ADL-A','ADL'),('6876',1,2019,1,'00:11:30','00:13:30','B.B02','ADL-B','ADL'),('6883',1,2019,1,'00:09:00','00:11:00','A.218','ADL-A','ADL'),('6883',1,2019,5,'00:09:00','00:11:00','A.218','ADL-A','ADL'),('6884',1,2019,3,'00:14:00','00:16:00','B.B03','ADL-B','ADL'),('6890',1,2019,1,'00:09:00','00:11:00','A.218','ADL-A','ADL'),('6890',1,2019,5,'00:09:00','00:11:00','A.218','ADL-A','ADL'),('6893',1,2019,3,'00:14:00','00:16:00','B.B03','ADL-B','ADL'),('6900',2,2019,1,'00:14:00','00:16:00','A.113','ADL-A','ADL'),('6902',1,2019,2,'00:11:30','00:13:30','B.B03','ADL-B','ADL'),('6907',1,2019,5,'00:11:30','00:13:30','A.103','ADL-A','ADL'),('6909',1,2019,2,'00:11:30','00:13:30','B.B03','ADL-B','ADL'),('6913',1,2019,2,'00:16:30','00:18:30','A.203','ADL-A','ADL'),('6916',1,2019,2,'00:11:30','00:13:30','B.B03','ADL-B','ADL'),('6919',1,2019,2,'00:14:00','00:16:00','A.203','ADL-A','ADL'),('6924',1,2019,4,'00:14:00','00:16:00','A.113','ADL-A','ADL'),('6927',1,2019,4,'00:09:00','00:11:00','B.B04','ADL-B','ADL'),('6931',1,2019,3,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('6932',1,2019,4,'00:14:00','00:16:00','A.113','ADL-A','ADL'),('6939',1,2019,4,'00:14:00','00:16:00','A.113','ADL-A','ADL'),('6942',1,2019,3,'00:14:00','00:16:00','B.B02','ADL-B','ADL'),('6942',1,2019,5,'00:09:00','00:11:00','A.113','ADL-A','ADL'),('6944',2,2019,4,'00:14:00','00:16:00','A.112','ADL-A','ADL'),('6947',1,2019,5,'00:11:30','00:13:30','A.112','ADL-A','ADL'),('6950',1,2019,3,'00:14:00','00:16:00','B.B02','ADL-B','ADL'),('6950',1,2019,5,'00:09:00','00:11:00','A.113','ADL-A','ADL'),('6951',2,2019,1,'00:14:00','00:16:00','A.218','ADL-A','ADL'),('6951',2,2019,3,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('6953',1,2019,5,'00:11:30','00:13:30','A.112','ADL-A','ADL'),('6961',1,2019,1,'00:16:30','00:18:30','B.B04','ADL-B','ADL'),('6965',1,2019,5,'00:16:00','00:18:00','A.105','ADL-A','ADL'),('6967',2,2019,1,'00:14:00','00:16:00','B.B02','ADL-B','ADL'),('6970',2,2019,1,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('6970',2,2019,4,'00:09:00','00:11:00','A.218','ADL-A','ADL'),('6972',1,2019,5,'00:09:00','00:11:00','B.B04','ADL-B','ADL'),('6975',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('6979',1,2019,4,'00:11:30','00:13:30','A.106','ADL-A','ADL'),('6980',1,2019,1,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('6980',1,2019,4,'00:09:00','00:11:00','A.218','ADL-A','ADL'),('6982',1,2019,1,'00:09:00','00:11:00','B.B02','ADL-B','ADL'),('6988',1,2019,1,'00:11:30','00:13:30','A.111','ADL-A','ADL'),('6989',2,2019,4,'00:14:00','00:16:00','A.112','ADL-A','ADL'),('6990',1,2019,3,'00:09:00','00:11:00','B.B03','ADL-B','ADL'),('6997',2,2019,1,'00:11:30','00:13:30','B.B04','ADL-B','ADL'),('6997',2,2019,5,'00:09:00','00:11:00','B.B04','ADL-B','ADL'),('6999',1,2019,1,'00:11:30','00:13:30','A.111','ADL-A','ADL'),('7000',1,2019,1,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('7000',1,2019,4,'00:09:00','00:11:00','A.218','ADL-A','ADL'),('7006',2,2019,3,'00:09:00','00:11:00','A.111','ADL-A','ADL'),('7009',1,2019,3,'00:11:30','00:13:30','A.106','ADL-A','ADL'),('7015',2,2019,3,'00:09:00','00:11:00','A.111','ADL-A','ADL'),('7016',1,2019,2,'00:14:00','00:16:00','A.112','ADL-A','ADL'),('7018',2,2019,4,'00:14:00','00:16:00','A.112','ADL-A','ADL'),('7021',1,2019,4,'00:09:00','00:11:00','A.113','ADL-A','ADL'),('7023',1,2019,2,'00:14:00','00:16:00','A.112','ADL-A','ADL'),('7024',1,2019,3,'00:09:00','00:11:00','A.113','ADL-A','ADL'),('7028',1,2019,4,'00:09:00','00:11:00','A.113','ADL-A','ADL'),('7029',1,2019,1,'00:11:30','00:13:30','A.218','ADL-A','ADL'),('7029',1,2019,4,'00:09:00','00:11:00','A.218','ADL-A','ADL'),('7030',1,2019,2,'00:14:00','00:16:00','A.112','ADL-A','ADL'),('7033',1,2019,4,'00:09:00','00:11:00','A.113','ADL-A','ADL'),('7035',1,2019,2,'00:11:30','00:13:30','A.113','ADL-A','ADL'),('7037',1,2019,5,'00:11:30','00:13:30','A.106','ADL-A','ADL'),('7038',1,2019,4,'00:09:00','00:11:00','A.113','ADL-A','ADL'),('7039',1,2019,2,'00:11:30','00:13:30','A.113','ADL-A','ADL'),('7043',1,2019,5,'00:11:30','00:13:30','A.106','ADL-A','ADL'),('7044',2,2019,4,'00:09:00','00:11:00','A.112','ADL-A','ADL'),('7045',1,2019,2,'00:11:30','00:13:30','A.113','ADL-A','ADL'),('7048',1,2019,5,'00:11:30','00:13:30','A.106','ADL-A','ADL'),('7049',1,2019,4,'00:11:30','00:13:30','A.106','ADL-A','ADL'),('7050',1,2019,2,'00:11:30','00:13:30','A.113','ADL-A','ADL'),('7053',1,2019,5,'00:11:30','00:13:30','A.106','ADL-A','ADL'),('7055',1,2019,2,'00:11:30','00:13:30','A.111','ADL-A','ADL'),('7058',2,2019,4,'00:11:30','00:13:30','B.B02','ADL-B','ADL'),('7059',2,2019,3,'00:09:00','00:11:00','A.106','ADL-A','ADL'),('7062',1,2019,1,'00:09:00','00:11:00','A.111','ADL-A','ADL'),('7063',1,2019,2,'00:09:00','00:11:00','B.B04','ADL-B','ADL'),('7065',1,2019,1,'00:16:00','00:18:00','B.B03','ADL-B','ADL'),('7066',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7067',1,2019,6,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7072',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7073',1,2019,3,'00:09:00','00:11:00','B.B04','ADL-B','ADL'),('7076',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7078',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7079',1,2019,4,'00:09:00','00:11:00','A.103','ADL-A','ADL'),('7080',1,2019,3,'00:09:00','00:11:00','B.B04','ADL-B','ADL'),('7082',1,2019,6,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7084',2,2019,3,'00:11:30','00:13:30','A.103','ADL-A','ADL'),('7085',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7087',1,2019,3,'00:14:00','00:16:00','B.B04','ADL-B','ADL'),('7092',1,2019,6,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7093',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7094',1,2019,3,'00:14:00','00:16:00','A.106','ADL-A','ADL'),('7097',1,2019,4,'00:09:00','00:11:00','B.B02','ADL-B','ADL'),('7098',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7100',1,2019,4,'00:14:00','00:16:00','A.111','ADL-A','ADL'),('7102',1,2019,6,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7103',1,2019,4,'00:09:00','00:11:00','B.B02','ADL-B','ADL'),('7104',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7107',1,2019,4,'00:14:00','00:16:00','A.111','ADL-A','ADL'),('7109',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7110',1,2019,2,'00:09:00','00:11:00','A.218','ADL-A','ADL'),('7112',1,2019,4,'00:11:30','00:13:30','A.103','ADL-A','ADL'),('7112',1,2019,5,'00:11:30','00:13:30','A.210','ADL-A','ADL'),('7114',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7115',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7117',1,2019,2,'00:09:00','00:11:00','A.218','ADL-A','ADL'),('7118',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7119',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7120',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7124',2,2019,4,'00:11:30','00:13:30','A.103','ADL-A','ADL'),('7124',2,2019,5,'00:09:00','00:11:00','A.103','ADL-A','ADL'),('7126',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7127',1,2019,2,'00:14:00','00:16:00','B.B02','ADL-B','ADL'),('7130',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7132',1,2019,2,'00:09:00','00:11:00','B.B03','ADL-B','ADL'),('7133',2,2019,4,'00:11:30','00:13:30','A.103','ADL-A','ADL'),('7133',2,2019,5,'00:09:00','00:11:00','A.103','ADL-A','ADL'),('7135',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7137',1,2019,1,'00:09:00','00:11:00','B.B04','ADL-B','ADL'),('7138',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7140',1,2019,6,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7143',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7145',1,2019,1,'00:14:00','00:16:00','B.B04','ADL-B','ADL'),('7146',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7149',1,2019,6,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7151',1,2019,1,'00:14:00','00:16:00','B.B04','ADL-B','ADL'),('7152',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7155',1,2019,3,'00:14:00','00:16:00','A.111','ADL-A','ADL'),('7156',1,2019,6,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7159',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7161',1,2019,1,'00:09:00','00:11:00','B.B03','ADL-B','ADL'),('7163',1,2019,6,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7165',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7168',1,2019,2,'00:16:30','00:18:30','B.B04','ADL-B','ADL'),('7169',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7170',2,2019,4,'00:09:00','00:11:00','A.103','ADL-A','ADL'),('7174',1,2019,2,'00:16:30','00:18:30','B.B04','ADL-B','ADL'),('7178',1,2019,6,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7180',1,2019,4,'00:11:30','00:13:30','B.B03','ADL-B','ADL'),('7184',1,2019,6,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7187',1,2019,1,'00:11:30','00:13:30','A.112','ADL-A','ADL'),('7191',1,2019,3,'00:14:00','00:16:00','A.113','ADL-A','ADL'),('7192',1,2019,4,'00:14:00','00:16:00','A.103','ADL-A','ADL'),('7196',1,2019,2,'00:09:00','00:11:00','A.106','ADL-A','ADL'),('7197',2,2019,3,'00:09:00','00:11:00','B.B02','ADL-B','ADL'),('7201',1,2019,2,'00:09:00','00:11:00','A.106','ADL-A','ADL'),('7204',2,2019,4,'00:14:00','00:16:00','A.105','ADL-A','ADL'),('7204',2,2019,5,'00:14:00','00:16:00','A.105','ADL-A','ADL'),('7208',1,2019,2,'00:09:00','00:11:00','A.106','ADL-A','ADL'),('7210',2,2019,4,'00:14:00','00:16:00','A.105','ADL-A','ADL'),('7210',2,2019,5,'00:14:00','00:16:00','A.105','ADL-A','ADL'),('7213',1,2019,2,'00:09:00','00:11:00','A.106','ADL-A','ADL'),('7216',2,2019,4,'00:14:00','00:16:00','A.105','ADL-A','ADL'),('7216',2,2019,5,'00:14:00','00:16:00','A.105','ADL-A','ADL'),('7223',1,2019,1,'00:14:00','00:16:00','B.B03','ADL-B','ADL'),('7233',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7236',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7238',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7241',2,2019,6,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7244',2,2019,6,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7247',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7250',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7252',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7255',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7258',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7261',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7264',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7265',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7268',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7274',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7277',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7279',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7497',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7498',2,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7584',2,2019,4,'00:14:00','00:16:00','A.203','ADL-A','ADL'),('7585',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7587',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL'),('7588',1,2019,1,'00:09:00','00:11:00','Z.111','ADL-Z','ADL');
/*!40000 ALTER TABLE `crn_session_timetable` ENABLE KEYS */;
UNLOCK TABLES;

-- -----------------------------------------------------
-- Table `db_tafebuddy`.`qualification`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`qualification` (
  `QualCode` VARCHAR(20) NOT NULL,
  `NationalQualCode` VARCHAR(32) NOT NULL,
  `TafeQualCode` VARCHAR(32) NOT NULL,
  `QualName` VARCHAR(100) NOT NULL,
  `TotalUnits` INT(11) NOT NULL,
  `CoreUnits` INT(11) NOT NULL,
  `ElectedUnits` INT(11) NOT NULL DEFAULT '0',
  `ReqListedElectedUnits` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`QualCode`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

--
-- Dumping data for table `qualification`
--

LOCK TABLES `qualification` WRITE;
/*!40000 ALTER TABLE `qualification` DISABLE KEYS */;
INSERT INTO `qualification` VALUES ('AD_CST11','ICA60511','TP00279','Advanced Diploma of Computer Systems Technology',18,12,6,3),('AD_CST15','ICT60515','TP00754','Advanced Diploma of Computer Systems Technology',18,12,3,3),('AD_NETSEC11','ICA60211','TP00124','Advanced Diploma of Network Security',12,5,7,5),('AD_NETSEC15','ICT60215','TP00753','Advanced Diploma of Network Security',12,5,2,5),('C1_IDM11','ICA10111','TP00100','Certificate I in Information, Digital Media and Technology',6,4,2,0),('C1_IDM15','ICT10115','TP00734','Certificate I in Information, Digital Media and Technology',6,4,2,0),('C2_IDM11','ICA20111','TP00101','Certificate II in Information, Digital Media and Technology',14,7,7,4),('C2_IDM15','ICT20115','TP00735','Certificate II in Information, Digital Media and Technology',14,7,0,7),('C3_IDM11_APP','ICA30111','TP00102','Certificate III Prgm in Information, Digital Media and Technology (Applications)',17,6,11,5),('C3_IDM11_DM','ICA30111','TP00102','Certificate III in Information, Digital Media and Technology - Digital Media Version',17,6,11,5),('C3_IDM11_GEN','ICA30111','TP00102','Certificate III in Information, Digital Media and Technology - General Version',17,6,11,5),('C3_IDM11_NET','ICA30111','TP00102','Certificate III in Information, Digital Media and Technology -  Networking Version',17,6,11,5),('C3_IDM11_PRG','ICA30111','TP00102','Certificate III in Information, Digital Media and Technology - Programming Version',17,6,11,5),('C3_IDM11_WEB','ICA30111','TP00102','Certificate III in Information, Digital Media and Technology - Web Technologies version',17,6,11,5),('C3_IDM15','ICT30115','TP00736','Certificate III in Information, Digital Media and Technology',17,6,2,9),('C3_IDM15_APP','ICT30115','TP00736','Certificate III Prgm in Information, Digital Media and Technology (Applications)',17,6,11,5),('C3_IDM15_DM','ICT30115','TP00736','Certificate III Prgm in Information, Digital Media and Technology  (Digital Media)',17,6,11,5),('C3_IDM15_GEN','ICT30115','TP00736','Certificate III Prgm in Information, Digital Media and Technology  (General)',17,6,11,5),('C3_IDM15_NET','ICT30115','TP00736','Certificate III Prgm in Information, Digital Media and Technology  (Networking)',17,6,11,5),('C3_IDM15_PRG','ICT30115','TP00736','Certificate III Prgm in Information, Digital Media and Technology  (Programming)',17,6,11,5),('C3_IDM15_WEB','ICT30115','TP00736','Certificate III Prgm in Information, Digital Media and Technology  (Web Design)',17,6,11,5),('C4_CST11','ICA41011','TP00652','Certificate IV in Computer System Technology',20,12,8,4),('C4_CST15','ICT41015','TP00744','Certificate IV in Computer System Technology',20,12,8,4),('C4_CySec18','22334VIC','22334VIC','Certificate IV in Cyber Security',16,10,0,6),('C4_DM11','ICA40811','TP00119','Certificate IV in Digital Media Technologies',17,7,10,5),('C4_DM15','ICT40815','TP00742','Certificate IV in Digital Media Technologies',17,7,2,8),('C4_IT11','ICA40111','TP00114','Certificate IV in Information Technology',20,5,15,5),('C4_IT15','ICT40115','TP00737','Certificate IV in Information Technology',20,5,5,10),('C4_NET11','ICA40411','TP00117','Certificate IV in Information Technology Networking',17,8,9,6),('C4_NET15','ICT40415','TP00740','Certificate IV in Information Technology Networking',17,8,3,6),('C4_PRG11','ICA40511','TP00118','Certificate IV in Programming',18,10,8,0),('C4_PRG15','ICT40515','TP00741','Certificate IV in Programming',18,10,3,5),('C4_WBT11','ICA40311','TP00116','Certificate IV in Web-Based Technologies',22,8,14,5),('C4_WBT15','ICT40315','TP00739','Certificate IV in Web-Based Technologies',22,8,3,11),('D_DM11','ICA50911','TP00123','Diploma of Digital Media Technologies',18,7,11,0),('D_DM15','ICT50915','TP00751','Diploma of Digital Media Technologies',18,7,4,7),('D_NET11','ICA50411','TP00120','Diploma of Information Technology Networking',16,5,11,0),('D_NET15','ICT50415','TP00748','Diploma of Information Technology Networking',16,5,3,8),('D_SD11','ICA50711','TP00122','Diploma of Software Development',16,10,6,0),('D_SD15','ICT50715','TP00750','Diploma of Software Development',16,10,3,3),('D_WEB11','ICA50611','TP00121','Diploma of Website Development',20,8,12,0),('D_WEB15','ICT50615','TP00749','Diploma of Website Development',20,8,4,8),('SS_HWTech11','ICASS00019','SK00031','Hardware Technician Skill Set',6,6,0,0),('SS_HWTech15','ICTSS00048','SK00066','Hardware Technician Skill Set',6,6,0,0);
/*!40000 ALTER TABLE `qualification` ENABLE KEYS */;
UNLOCK TABLES;

-- -----------------------------------------------------
-- Table `db_tafebuddy`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`student` (
  `StudentID` VARCHAR(9) NOT NULL,
  `GivenName` VARCHAR(64) NOT NULL,
  `LastName` VARCHAR(64) NOT NULL,
  `EmailAddress` VARCHAR(64) NOT NULL,
  PRIMARY KEY (`StudentID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('000724247','Martin','Perez','m_perez@hotmail.com');
INSERT INTO `student` VALUES ('000896534','Sally','Smith','sally.smith@student.tafesa.edu.au');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;


-- -----------------------------------------------------
-- Table `db_tafebuddy`.`student_grade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`student_grade` (
  `StudentID` VARCHAR(9) NOT NULL,
  `CRN` VARCHAR(32) NOT NULL,
  `TafeCompCode` VARCHAR (10) NOT NULL,
  `TermCode` INT(1) NOT NULL,
  `TermYear` INT(4) NOT NULL,
  `Grade` VARCHAR(2) NULL DEFAULT NULL,
  `GradeDate` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`StudentID`, `CRN`, `TermCode`, `TermYear`),
  INDEX `FK_StudentGrade_CRN` (`CRN` ASC, `TermCode` ASC, `TermYear` ASC),
  INDEX `FK_StudentGrade_TermStart` (`TermCode` ASC, `TermYear` ASC),
  CONSTRAINT `FK_StudentGrade_CRN`
    FOREIGN KEY (`CRN` , `TermCode` , `TermYear`)
    REFERENCES `db_tafebuddy`.`crn_detail` (`CRN` , `TermCodeStart` , `TermYearStart`)
    ON UPDATE CASCADE,
  CONSTRAINT `FK_StudentGrade_Student`
    FOREIGN KEY (`StudentID`)
    REFERENCES `db_tafebuddy`.`student` (`StudentID`)
    ON UPDATE CASCADE,
  CONSTRAINT `FK_StudentGrade_TermStart`
    FOREIGN KEY (`TermCode` , `TermYear`)
    REFERENCES `db_tafebuddy`.`term_datetime` (`TermCode` , `TermYear`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


--
-- Dumping data for table `student_grade`
--

LOCK TABLES `student_grade` WRITE;
/*!40000 ALTER TABLE `student_grade` DISABLE KEYS */;
/* Term 1 results for student for Cert III software */
INSERT INTO `student_grade` VALUES ('000724247','6942','TAABC',1,2019,'PA','2018-04-03');
INSERT INTO `student_grade` VALUES ('000724247','6319','TAAEW',1,2019,'PA','2018-04-03');
INSERT INTO `student_grade` VALUES ('000724247','6827','TAABF',1,2019,'PA','2018-04-03');
INSERT INTO `student_grade` VALUES ('000724247','6766','TAAGC',1,2019,'PA','2018-04-03');
INSERT INTO `student_grade` VALUES ('000724247','6860','TAADS',1,2019,'PA','2018-04-03');
INSERT INTO `student_grade` VALUES ('000724247','6713','FABRP',1,2019,'PA','2016-04-03');
INSERT INTO `student_grade` VALUES ('000724247','6855','TAAGS',1,2019,'PA','2016-04-03');
INSERT INTO `student_grade` VALUES ('000724247','6846','TAAGN',1,2019,'PA','2016-04-03');
INSERT INTO `student_grade` VALUES ('000724247','6755','FACNL',1,2019,'PA','2016-04-03');

/* Term 2 results for student for Cert III software */
INSERT INTO `student_grade` VALUES ('000724247','6944','TAABB',2,2019,'PA','2016-05-31');
INSERT INTO `student_grade` VALUES ('000724247','6951','TAAFR',2,2019,'PA','2016-05-31');
INSERT INTO `student_grade` VALUES ('000724247','6789','TAAGL',2,2019,'PA','2016-05-31');
INSERT INTO `student_grade` VALUES ('000724247','6649','TAABE',2,2019,'PA','2016-05-31');
INSERT INTO `student_grade` VALUES ('000724247','6838','TAAEY',2,2019,'PA','2016-05-31');
INSERT INTO `student_grade` VALUES ('000724247','6779','TAAGM',2,2019,'PA','2016-05-31');
INSERT INTO `student_grade` VALUES ('000724247','6685','TAAEX',2,2019,'PA','2016-05-31');
INSERT INTO `student_grade` VALUES ('000724247','7044','TAACZ',2,2019,'PA','2016-05-31');

/* Term 1 results for student for Cert IV Networking */
INSERT INTO `student_grade` VALUES ('000896534','6075','TAACA',1,2019,'F','2016-04-10');
INSERT INTO `student_grade` VALUES ('000896534','6319','TAAEW',1,2019,'W','2016-04-10');
INSERT INTO `student_grade` VALUES ('000896534','6330','TAAGA',1,2019,'PA','2016-04-10');
INSERT INTO `student_grade` VALUES ('000896534','6350','TAABY',1,2019,'PA','2016-04-10');
INSERT INTO `student_grade` VALUES ('000896534','6689','TABFG',1,2019,'NS','2016-04-10');

/* Term 2 results for student for Cert IV Networking */
INSERT INTO `student_grade` VALUES ('000896534','7233','TAACB',2,2019,'NS','2016-05-31');
INSERT INTO `student_grade` VALUES ('000896534','7170','TAAEA',2,2019,'W','2016-05-31');
INSERT INTO `student_grade` VALUES ('000896534','5835','TAABX',2,2019,'PA','2016-05-31');
INSERT INTO `student_grade` VALUES ('000896534','6028','TAABG',2,2019,'PA','2016-05-31');

/*!40000 ALTER TABLE `student_grade` ENABLE KEYS */;
UNLOCK TABLES;

-- -----------------------------------------------------
-- Table `db_tafebuddy`.`student_studyplan`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`student_studyplan` (
  `StudentID` VARCHAR(9) NOT NULL,
  `QualCode` VARCHAR(20) NOT NULL,
  `TermCodeStart` INT(1) NOT NULL,
  `TermYearStart` INT(4) NOT NULL,
  `EnrolmentType` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`StudentID`, `QualCode`),
  INDEX `FK_StudentStudyplan_QualCode` (`QualCode` ASC),
  INDEX `FK_StudentStudyplan_TermStart` (`TermCodeStart` ASC, `TermYearStart` ASC),
  CONSTRAINT `FK_StudentStudyplan_QualCode`
    FOREIGN KEY (`QualCode`)
    REFERENCES `db_tafebuddy`.`qualification` (`QualCode`)
    ON UPDATE CASCADE,
  CONSTRAINT `FK_StudentStudyplan_StudentID`
    FOREIGN KEY (`StudentID`)
    REFERENCES `db_tafebuddy`.`student` (`StudentID`),
  CONSTRAINT `FK_StudentStudyplan_TermStart`
    FOREIGN KEY (`TermCodeStart` , `TermYearStart`)
    REFERENCES `db_tafebuddy`.`term_datetime` (`TermCode` , `TermYear`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


--
-- Dumping data for table `student_studyplan`
--

LOCK TABLES `student_studyplan` WRITE;
/*!40000 ALTER TABLE `student_studyplan` DISABLE KEYS */;

/* Semester 1, 2019 study plans for students.
Cert III Software, all completed with passes */
INSERT INTO `student_studyplan` VALUES ('000724247','C3_IDM15',1,2019,'WR');

/* Cert IV Networking, mixture of passes, fails, withdraws and NS */
INSERT INTO `student_studyplan` VALUES ('000896534','C4_NET15',1,2019,'WR');

/*!40000 ALTER TABLE `student_studyplan` ENABLE KEYS */;
UNLOCK TABLES;

-- -----------------------------------------------------
-- Table `db_tafebuddy`.`studyplan_qualification`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`studyplan_qualification` (
  `StudyPlanCode` VARCHAR(20) NOT NULL,
  `QualCode` VARCHAR(20) NOT NULL,
  `Priority` INT(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`StudyPlanCode`),
  INDEX `FK_StudyPlanQual_QualCode` (`QualCode` ASC),
  CONSTRAINT `FK_StudyPlanQual_QualCode`
    FOREIGN KEY (`QualCode`)
    REFERENCES `db_tafebuddy`.`qualification` (`QualCode`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

--
-- Dumping data for table `studyplan_qualification`
--

LOCK TABLES `studyplan_qualification` WRITE;
/*!40000 ALTER TABLE `studyplan_qualification` DISABLE KEYS */;
/*!40000 ALTER TABLE `studyplan_qualification` ENABLE KEYS */;
UNLOCK TABLES;

-- -----------------------------------------------------
-- Table `db_tafebuddy`.`studyplan_subject`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`studyplan_subject` (
  `StudyPlanCode` VARCHAR(20) NOT NULL,
  `SubjectCode` VARCHAR(32) NOT NULL,
  `TimingSemester` INT(11) NOT NULL DEFAULT '1',
  `TimingSemesterTerm` INT(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`StudyPlanCode`, `SubjectCode`),
  INDEX `FK_StudyPlanSubject_SubjectCode` (`SubjectCode` ASC),
  CONSTRAINT `FK_StudyPlanSubject_StudyPlanCode`
    FOREIGN KEY (`StudyPlanCode`)
    REFERENCES `db_tafebuddy`.`studyplan_qualification` (`StudyPlanCode`)
    ON UPDATE CASCADE,
  CONSTRAINT `FK_StudyPlanSubject_SubjectCode`
    FOREIGN KEY (`SubjectCode`)
    REFERENCES `db_tafebuddy`.`subject` (`SubjectCode`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

--
-- Dumping data for table `studyplan_subject`
--

LOCK TABLES `studyplan_subject` WRITE;
/*!40000 ALTER TABLE `studyplan_subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `studyplan_subject` ENABLE KEYS */;
UNLOCK TABLES;

-- -----------------------------------------------------
-- Table `db_tafebuddy`.`subject_competency`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`subject_competency` (
  `SubjectCode` VARCHAR(32) NOT NULL,
  `TafeCompCode` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`SubjectCode`, `TafeCompCode`),
  INDEX `FK_SubjComp_TafeCompCode` (`TafeCompCode` ASC),
  CONSTRAINT `FK_SubjComp_SubjectCode`
    FOREIGN KEY (`SubjectCode`)
    REFERENCES `db_tafebuddy`.`subject` (`SubjectCode`)
    ON UPDATE CASCADE,
  CONSTRAINT `FK_SubjComp_TafeCompCode`
    FOREIGN KEY (`TafeCompCode`)
    REFERENCES `db_tafebuddy`.`competency` (`TafeCompCode`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

LOCK TABLES `subject_competency` WRITE;
/*!40000 ALTER TABLE `subject_competency` DISABLE KEYS */;
INSERT INTO `subject_competency` VALUES ('SC_2PSI','AAHCY'),('SC_1OPC','AAHME'),('SC_CBW','AAHME'),('4CYACI','AAHSP'),('4DWL','CABRE'),('4DVP','DAAKR'),('4MWA','DAAKZ'),('5PVP','DAAMW'),('5DIW','DAASN'),('IT_Tutorial','ENGG'),('2WHS','FABNX'),('4DVP','FABRH'),('5WORK','FABRK'),('5WORK1','FABRK'),('5WORK2','FABRK'),('2SWP','FABRL'),('3WHS','FABRP'),('5WHSM','FABRS'),('4CYACI','FABXA'),('4MWA','FABXC'),('4CYWHS','FABZM'),('4DWP','FACAK'),('4ACN','FACBW'),('4ICI','FACHP'),('3SWP','FACNL'),('4SWP','FACNL'),('5EWD','TAAAM'),('5WORK','TAAAS'),('5WORK1','TAAAS'),('5WORK2','TAAAS'),('1OPC','TAAAW'),('SC_1OPC','TAAAW'),('SC_CBW','TAAAW'),('1OWP','TAAAX'),('SC_1OWP','TAAAX'),('1INE','TAAAY'),('SC_1INE','TAAAY'),('1UDD','TAAAZ'),('SC_1UDD','TAAAZ'),('2IOS','TAABA'),('SC_2IOS','TAABA'),('2WIT','TAABB'),('2UAP','TAABC'),('SC_2UAP','TAABC'),('2DMP','TAABD'),('SC_2DMP','TAABD'),('3CUD','TAABE'),('3ESS','TAABF'),('3IOOS','TAABF'),('4DCR','TAABG'),('4DWR','TAABG'),('5ICW','TAABG'),('5ICW_INT','TAABG'),('43DM','TAABH'),('4SPRJ','TAABK'),('4CEP','TAABL'),('4WDM','TAABM'),('5ECS','TAABR'),('5ECS_INT','TAABR'),('5WORK','TAABS'),('5WORK1','TAABS'),('5WORK2','TAABS'),('5ICW','TAABX'),('5ICW_GEN','TAABX'),('5ICW_INT','TAABX'),('4IVM','TAABY'),('4AWS','TAABZ'),('4IMWS','TAABZ'),('4IMWS_INT','TAABZ'),('4CIN','TAACA'),('4CIRS6','TAACA'),('3WNF','TAACB'),('4BSWN','TAACB'),('6EWD','TAACC'),('6EWN','TAACC'),('5CCN6','TAACD'),('5CCN6_INT','TAACD'),('5CSN','TAACD'),('5CRS','TAACE'),('5CRS6','TAACE'),('5CRS6_INT','TAACE'),('5CRS','TAACF'),('5CSN6','TAACF'),('5CSN6_INT','TAACF'),('6DIS','TAACG'),('5CNW','TAACK'),('6CNS','TAACL'),('6DIS','TAACM'),('6EWN','TAACN'),('6EWS','TAACN'),('4SSP','TAACP'),('5MITP','TAACR'),('6MITP','TAACS'),('6MITP','TAACT'),('4DBB','TAACW'),('4DBB_GEN','TAACW'),('4C#M','TAACX'),('4TST','TAACY'),('5TST','TAACY'),('4APN','TAACZ'),('4JSB','TAACZ'),('4JAB','TAADA'),('4BUI','TAADB'),('4C#B','TAADC'),('4SDB','TAADD'),('4C#M','TAADE'),('52DA','TAADE'),('5JSI','TAADE'),('4SDB','TAADF'),('5JAW','TAADG'),('5TSD','TAADH'),('5TST','TAADK'),('5TSD','TAADL'),('5WORK','TAADM'),('5WORK1','TAADM'),('5WORK2','TAADM'),('5C#W','TAADN'),('5JAM','TAADP'),('5WORK','TAADR'),('5WORK1','TAADR'),('5WORK2','TAADR'),('3ESS','TAADS'),('3RSDT','TAADS'),('3WNF','TAADT'),('4IRCP','TAADX'),('4ACR','TAADY'),('4CIN','TAAEA'),('4LTSF','TAAEA'),('2SMT','TAAEF'),('SC_2SMT','TAAEF'),('4DWR','TAAEG'),('4WAU','TAAEH'),('4HTML5','TAAEK'),('4WAP','TAAEL'),('4DWR','TAAEM'),('4HTML5','TAAEN'),('4html5_GEN','TAAEN'),('52DA','TAAEP'),('5JAWB','TAAEP'),('5JSI','TAAEP'),('5EWD','TAAER'),('5DWS','TAAES'),('5PHP','TAAES'),('5MWD','TAAET'),('3CIHW','TAAEW'),('3ESS','TAAEW'),('3PITA','TAAEX'),('3MEAS','TAAEY'),('3SPT','TAAEY'),('4DBB','TAAFA'),('4SPRJ','TAAFA'),('4VGC','TAAFB'),('42DA','TAAFC'),('5DIW','TAAFD'),('43DM','TAAFE'),('1OPP','TAAFF'),('SC_1OPP','TAAFF'),('1PPT','TAAFG'),('SC_1PPT','TAAFG'),('2UAP','TAAFK'),('SC_2UAP','TAAFK'),('2IOS','TAAFL'),('SC_2IOS','TAAFL'),('2OPD','TAAFM'),('SC_2OPD','TAAFM'),('3ACA','TAAFR'),('SC_3ACA','TAAFR'),('4SPRJ','TAAFS'),('4DMT','TAAFT'),('3WSF','TAAFW'),('3WSF','TAAFX'),('3WNF','TAAFY'),('4AWS','TAAFZ'),('4CDE','TAAGA'),('4LXA','TAAGA'),('4LXA','TAAGB'),('4SCCM','TAAGB'),('4SCCM_INT','TAAGB'),('3PRB','TAAGC'),('4SPRJ','TAAGD'),('2CUH','TAAGE'),('SC_2CUH','TAAGE'),('2CUH','TAAGF'),('SC_2CUH','TAAGF'),('2PSI','TAAGG'),('SC_2PSI','TAAGG'),('2PSI','TAAGH'),('SC_2PSI','TAAGH'),('2CUH','TAAGK'),('SC_2CUH','TAAGK'),('3CFCH','TAAGL'),('3SPT','TAAGL'),('3PBSA','TAAGM'),('3SPT','TAAGM'),('4HTML5','TAAGN'),('4MWA','TAAGP'),('4HTML5','TAAGS'),('4WAP','TAAGT'),('4SEO','TAAGW'),('4DWL','TAAGX'),('4PHP','TAAGY'),('5PHP','TAAGY'),('4WAU','TAAGZ'),('4DBB','TAAHA'),('4SEO','TAAHB'),('5DD','TAAHC'),('5DVE','TAAHD'),('53DA','TAAHE'),('53DA','TAAHF'),('5NIST','TAAHH'),('5PVP','TAAHH'),('6EWD','TAAHK'),('6EWN','TAAHK'),('5ECS','TAAHL'),('5ECS_INT','TAAHL'),('5LXN','TAAHN'),('5ISV','TAAHP'),('5EVC','TAAHR'),('5EVC','TAAHS'),('6EWD','TAAHT'),('6EWN','TAAHT'),('6CNS','TAAHW'),('6SUS','TAAHX'),('5IOSMD','TAAHY'),('5SDA','TAAHZ'),('6CLP','TAAKA'),('5AWT','TAAKB'),('5AWT','TAAKC'),('5MWD','TAAKE'),('5MWD','TAAKF'),('5WORK','TAAKG'),('5WORK1','TAAKG'),('5WORK2','TAAKG'),('5EWD','TAAKH'),('5CSN','TAAKK'),('5SDA','TAAKL'),('1OSS','TAAKM'),('5ICW','TAAMC'),('5ICW_GEN','TAAMC'),('5ICW_INT','TAAMC'),('4CIN','TAAMD'),('4CIN','TAAME'),('4IMWS','TAAME'),('4IMWS_INT','TAAME'),('5CRS','TAAMF'),('5CSN6','TAAMF'),('5CSN6_INT','TAAMF'),('5ISV','TAAMG'),('5CCN','TAAMH'),('5CCN','TAAMK'),('6SUS','TAAML'),('3CLD','TABBY'),('4CMS','TABDN'),('5CRS6','TABEE'),('5CRS6_INT','TABEE'),('5CCN6','TABEF'),('5CCN6_INT','TABEF'),('4CYNET','TABEG'),('4CYTST','TABEH'),('4CYCSF','TABEK'),('4CYSEC','TABEL'),('4CYPRO','TABEM'),('4CYBCS','TABEN'),('4CYDAT','TABEP'),('4CYMAN','TABER'),('4CYIRP','TABES'),('4CYWEB','TABET'),('4CYITS','TABEW'),('4PRHS','TABFA'),('4STDA','TABFB'),('4SCCM','TABFC'),('4SCCM_INT','TABFC'),('4POTO','TABFD'),('5IUOS','TABFE'),('4CMDB','TABFF'),('4PICTS','TABFG'),('4CNS','TABFH'),('4CYMIR','TABFK');
/*!40000 ALTER TABLE `subject_competency` ENABLE KEYS */;
UNLOCK TABLES;


-- -----------------------------------------------------
-- Table `db_tafebuddy`.`subject_qualification`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`subject_qualification` (
  `QualCode` VARCHAR(20) NOT NULL,
  `SubjectCode` VARCHAR(32) NOT NULL,
  `UsageType` VARCHAR(20) NULL,
  PRIMARY KEY (`QualCode`, `SubjectCode`),
  INDEX `FK_SubjQual_SubjectCode` (`SubjectCode` ASC),
  CONSTRAINT `FK_SubjQual_QualCode`
    FOREIGN KEY (`QualCode`)
    REFERENCES `db_tafebuddy`.`qualification` (`QualCode`)
    ON UPDATE CASCADE,
  CONSTRAINT `FK_SubjQual_SubjectCode`
    FOREIGN KEY (`SubjectCode`)
    REFERENCES `db_tafebuddy`.`subject` (`SubjectCode`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

LOCK TABLES `subject_qualification` WRITE;
/*!40000 ALTER TABLE `subject_qualification` DISABLE KEYS */;

INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C1_IDM11','1INE','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C1_IDM15','1INE','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C1_IDM11','1OPC','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C1_IDM15','1OPC','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C1_IDM11','1OPP','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C1_IDM15','1OPP','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C1_IDM11','1OSS','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C1_IDM15','1OSS','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C1_IDM11','1OWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C1_IDM15','1OWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C1_IDM11','1PPT','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C1_IDM15','1PPT','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C1_IDM11','1UDD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C1_IDM15','1UDD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2APT','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','2APT','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2CHP','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','2CHP','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2CUH','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','2CUH','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2CWN','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2DMP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','2DMP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2DOD','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2IOS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','2IOS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2ISA','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','2ISA','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2OAP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','2OAP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2OPD','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','2OPD','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2OSH','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','2OSH','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2PIA','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','2PIA','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2PSI','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','2PSI','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2SDS','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2SMT','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','2SMT','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_DM','2SMT','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_WEB','2SMT','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_DM','2SMT','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_WEB','2SMT','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','2SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2UAP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','2UAP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_APP','2UAP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','2UAP','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_APP','2UAP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','2WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','2WIT','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','2WIT','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','2WIT','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','2WIT','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_APP','3ACA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','3ACA','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_APP','3ACA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','3CFCH','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','3CIHW','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','3CIHW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','3CIHW','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET15','3CIHW','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','3CIHW','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','3CLD','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_APP','3CSA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_APP','3CSA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_APP','3CUD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_DM','3CUD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_GEN','3CUD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_NET','3CUD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_PRG','3CUD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_WEB','3CUD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','3CUD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_APP','3CUD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_DM','3CUD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_GEN','3CUD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_NET','3CUD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_PRG','3CUD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_WEB','3CUD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','3DIW','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','3DIW','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_DM','3DIW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_WEB','3DIW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_DM','3DIW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_WEB','3DIW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_APP','3DMT','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST15','3ESS','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('SS_HWTech15','3ESS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','3IOOS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','3ITE','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_GEN','3ITE','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_NET','3ITE','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_GEN','3ITE','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_NET','3ITE','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST11','3ITE','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET11','3ITE','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET11','3ITE','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('SS_HWTech11','3ITE','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_APP','3ITE1','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_DM','3ITE1','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_PRG','3ITE1','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_WEB','3ITE1','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_APP','3ITE1','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_DM','3ITE1','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_PRG','3ITE1','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_WEB','3ITE1','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT11','3ITE1','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG11','3ITE1','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','3ITE1','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_PRG','3ITE2','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_PRG','3ITE2','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','3MEAS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','3PBSA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_APS05','3PITA',NULL);
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_GEN','3PITA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_NET','3PITA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_PRG','3PITA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','3PITA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_GEN','3PITA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_NET','3PITA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_PRG','3PITA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('SS_HWTech11','3PITA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('SS_HWTech15','3PITA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_APP','3PRB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_DM','3PRB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_GEN','3PRB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_PRG','3PRB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_WEB','3PRB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','3PRB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_APP','3PRB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_DM','3PRB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_GEN','3PRB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_PRG','3PRB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_WEB','3PRB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST11','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST15','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM11','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM15','3PRB','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT11','3PRB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET15','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG11','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG15','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT11','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','3PRB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_DM','3PVW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_WEB','3PVW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_DM','3PVW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_WEB','3PVW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','3RSDT','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('SS_HWTech15','3SPT','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_APP','3SSC','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_APP','3SSC','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','3SWP','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','3SWP','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_APP','3SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_DM','3SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_NET','3SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_PRG','3SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_WEB','3SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_APP','3SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_DM','3SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_NET','3SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_PRG','3SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_WEB','3SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST11','3SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST15','3SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT11','3SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','3WHS','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM11','3WHS','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C2_IDM15','3WHS','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_APP','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_DM','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_GEN','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_NET','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_PRG','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_WEB','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_APP','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_DM','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_GEN','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_NET','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_PRG','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_WEB','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST11','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST15','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM11','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM15','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT11','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET11','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET15','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG11','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG15','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT11','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','3WHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','3WHS','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','3WHS','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','3WNF','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_GEN','3WNF','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_NET','3WNF','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','3WNF','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_GEN','3WNF','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_NET','3WNF','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST11','3WNF','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST15','3WNF','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT11','3WNF','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','3WNF','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET11','3WNF','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET11','3WNF','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('SS_HWTech11','3WNF','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('SS_HWTech15','3WNF','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','3WSF','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_NET','3WSF','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_NET','3WSF','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST11','3WSF','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST15','3WSF','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET11','3WSF','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET11','3WSF','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM11','42DA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT11','42DA','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','42DA','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','42DA','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM11','43DM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM15','43DM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','43DM','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4ACN','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4ACR','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG05','4AP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','4AWS','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET11','4AWS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET11','4AWS','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','4BSWN','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4BSWN','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET15','4BSWN','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','4BSWN','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4BUI','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG15','4BUI','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','4BUI','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST11','4C#B','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST15','4C#B','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4C#B','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG11','4C#B','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG15','4C#B','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','4C#B','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','4C#B','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG11','4C#M','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG15','4C#M','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','4C#M','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','4C#M','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','4CDE','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4CDE','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET15','4CDE','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','4CDE','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','4CEP','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_GEN','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_PRG','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_GEN','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_PRG','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST11','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST15','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CySec18','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM11','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM15','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT11','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET11','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET15','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG11','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG15','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT11','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET11','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','4CEP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','4CIN','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','4CIN','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST11','4CIN','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST15','4CIN','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT11','4CIN','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET11','4CIN','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET11','4CIN','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','4CIRS6','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','4CIRS6','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4CIRS6','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET15','4CIRS6','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','4CIRS6','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','4CMDB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET15','4CMDB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','4CMDB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM15','4CMS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4CMS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','4CMS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','4CMS','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','4CMS','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','4CNS','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4CNS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET15','4CNS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','4CNS','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CySec18','4CYACI','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','4CYBCS','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CySec18','4CYBCS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4CYBCS','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CySec18','4CYCSF','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4CYCSF','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CySec18','4CYDAT','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CySec18','4CYIRP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CySec18','4CYITS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CySec18','4CYMAN','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CySec18','4CYMIR','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CySec18','4CYNET','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CySec18','4CYPRO','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CySec18','4CYSEC','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CySec18','4CYTST','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CySec18','4CYWEB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CySec18','4CYWHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','4DBB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT11','4DBB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4DBB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG11','4DBB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG15','4DBB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT11','4DBB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','4DBB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','4DBB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','4DBB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','4DBB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','4DBB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','4DBB_GEN','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM11','4DIW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT11','4DIW','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','4DIW','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','4DIW','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST15','4DMT','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4DMT','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST11','4DTP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST15','4DTP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM11','4DVP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM15','4DVP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','4DVP','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','4DVP','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM11','4DWL','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM15','4DWL','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT11','4DWL','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','4DWL','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','4DWL','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','4DWL','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4DWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT11','4DWR','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','4DWR','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','4DWR','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','4DWR','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT11','4EHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','4EHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT11','4FTP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','4FTP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','4HTML5','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_APP','4HTML5','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_DM','4HTML5','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_GEN','4HTML5','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_PRG','4HTML5','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_WEB','4HTML5','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','4HTML5','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_APP','4HTML5','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_DM','4HTML5','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_GEN','4HTML5','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_PRG','4HTML5','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_WEB','4HTML5','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST11','4HTML5','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST15','4HTML5','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM11','4HTML5','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM15','4HTML5','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT11','4HTML5','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4HTML5','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG11','4HTML5','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG15','4HTML5','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT11','4HTML5','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','4HTML5','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','4HTML5','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','4HTML5','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','4HTML5','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','4HTML5','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','4HTML5','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','4HTML5','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','4HTML5_GEN','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST11','4HW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST15','4HW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4ICI','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','4IMWS','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','4IMWS','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET15','4IMWS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','4IMWS','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','4IMWS_INT','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4IRCP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','4IVM','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','4IVM','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','4IVM','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_NET','4IVM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','4IVM','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_NET','4IVM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST11','4IVM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST15','4IVM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT11','4IVM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET11','4IVM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET15','4IVM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET11','4IVM','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','4IVM','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','4JAB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','4JAB','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT11','4JAB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG11','4JAB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG15','4JAB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','4JAB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','4JAB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','4JSB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','4JSB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_APP','4JSB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_DM','4JSB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_PRG','4JSB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_WEB','4JSB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','4JSB','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_APP','4JSB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_DM','4JSB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_PRG','4JSB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_WEB','4JSB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST11','4JSB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM11','4JSB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM15','4JSB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT11','4JSB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4JSB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG11','4JSB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG15','4JSB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT11','4JSB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','4JSB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','4JSB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','4JSB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','4JSB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','4JSB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','4JSB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','4JSB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','4LTSF','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4LTSF','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET15','4LTSF','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','4LXA','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST11','4LXA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST15','4LXA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET11','4LXA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET11','4LXA','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_DM','4MWA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_PRG','4MWA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_WEB','4MWA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_DM','4MWA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_PRG','4MWA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_WEB','4MWA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM11','4MWA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT11','4MWA','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','4MWA','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','4MWA','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','4MWA','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT11','4PHP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','4PHP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','4PHP','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','4PHP','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','4PICTS','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4PICTS','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET15','4PICTS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','4PICTS','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4POTO','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4PRHS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','4SCCM','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4SCCM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET15','4SCCM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','4SCCM_INT','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG11','4SDB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG15','4SDB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','4SDB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','4SDB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT11','4SEO','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','4SEO','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','4SEO','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','4SEO','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG11','4SPRJ','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG15','4SPRJ','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM11','4SSP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM15','4SSP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','4SSP','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','4SSP','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','4SSP','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4STDA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_GEN','4SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15','4SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_GEN','4SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','4SWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG11','4TST','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','4TST','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM11_PRG','4UMLB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C3_IDM15_PRG','4UMLB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT11','4UMLB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG11','4UMLB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','4UMLB','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM11','4VGC','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM15','4VGC','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','4VGC','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','4VGC','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','4VGC','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','4WAP','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','4WAP','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST11','4WAP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST15','4WAP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT11','4WAP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT11','4WAP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','4WAP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','4WAP','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','4WAP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT11','4WAU','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','4WAU','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','4WAU','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','4WAU','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM11','4WDM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM15','4WDM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','4WDM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','4WDM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','52DA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','52DA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','53DA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','53DA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','5AWT','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','5AWT','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','5C#W','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','5C#W','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','5CCN','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET11','5CCN','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','5CCN6','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','5CCN6','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','5CCN6','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','5CCN6_INT','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','5CNW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','5CNW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','5CNW','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','5CNW','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET11','5CNW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','5CNW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','5CRS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','5CRS','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET11','5CRS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','5CRS6','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','5CRS6','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','5CRS6','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','5CRS6_INT','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','5CSN','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','5CSN','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET11','5CSN','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','5CSN6','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','5CSN6','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','5CSN6','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','5CSN6_INT','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','5DD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','5DD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_DM15','5DIW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_WBT15','5DIW','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','5DIW','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','5DIW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','5DMP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','5DMP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','5DVE','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','5DVE','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','5DVE','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','5DVE','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','5DWS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','5DWS','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','5DWS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','5DWS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','5ECS','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','5ECS','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET11','5ECS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','5ECS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','5ECS_INT','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','5EDI','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','5EDI','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','5EVC','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','5EVC','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET11','5EVC','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','5EWD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','5EWD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG11','5EWD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG15','5EWD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','5EWD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','5EWD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','5ICW','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','5ICW','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','5ICW','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST11','5ICW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_CST15','5ICW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','5ICW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET11','5ICW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET15','5ICW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET11','5ICW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','5ICW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','5ICW_INT','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','5IOSMD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','5IOSMD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','5ISV','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','5ISV','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET11','5ISV','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','5ISV','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','5ITPM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','5IUOS','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_NET15','5IUOS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','5IUOS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','5JAM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','5JAM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','5JAM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','5JAM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','5JAW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','5JAW','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','5JAWB','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','5JSI','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','5JSI','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','5JSI','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','5LXN','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','5LXN','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET11','5LXN','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_NET15','5LXN','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','5MITP','Underpinning');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','5MITP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','5MITP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','5MITP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','5MWD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','5MWD','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','5MWD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','5MWD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','5MWD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','5MWD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','5MWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','5MWP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','5NIST','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','5PHP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','5PVP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','5PVP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','5SDA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','5SDA','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','5TSD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','5TSD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_IT15','5TST','Elective');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('C4_PRG15','5TST','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','5TST','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM11','5WHSM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','5WHSM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB11','5WHSM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','5WHSM','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','5WORK','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_DM15','5WORK1','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','5WORK1','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','5WORK1','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','5WORK2','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_WEB15','5WORK2','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','6CLP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD15','6CLP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','6CNS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','6CNS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','6DIS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','6DIS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','6DIS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','6DIS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','6EWD','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','6EWN','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','6EWN','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','6EWS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','6EWS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','6MITP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST15','6MITP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('D_SD11','6MITP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_CST11','6SIMP','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC11','6SUS','Required');
INSERT INTO subject_qualification(QualCode,SubjectCode,UsageType) VALUES ('AD_NETSEC15','6SUS','Required');

/*!40000 ALTER TABLE `subject_qualification` ENABLE KEYS */;
UNLOCK TABLES;



-- -----------------------------------------------------
-- Table `db_tafebuddy`.`competency_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`competency_type` (
  `CompTypeCode` VARCHAR(5) NOT NULL,
  `CompTypeDescription` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`CompTypeCode`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

--
-- Dumping data for table `competency_type`
--

LOCK TABLES `competency_type` WRITE;
/*!40000 ALTER TABLE `competency_type` DISABLE KEYS */;
INSERT INTO `competency_type` VALUES ('C','Core'),('C_APP','Core for App Stream in C3'),('C_SUP','Core for Support'),('E','Elective'),('LE','Listed Elective'),('VP','Vocational Placement');
/*!40000 ALTER TABLE `competency_type` ENABLE KEYS */;
UNLOCK TABLES;


-- -----------------------------------------------------
-- Table `db_tafebuddy`.`competency_qualification`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `db_tafebuddy`.`competency_qualification` (
  `QualCode` VARCHAR(20) NOT NULL,
  `NationalCompCode` VARCHAR(20) NOT NULL,
  `CompTypeCode` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`QualCode`, `NationalCompCode`),
  INDEX `fk_competency_qualification_competency_type1_idx` (`CompTypeCode` ASC),
  INDEX `fk_competency_qualification_competency1_idx` (`NationalCompCode` ASC),
  CONSTRAINT `fk_competency_qualification_competency_type1`
    FOREIGN KEY (`CompTypeCode`)
    REFERENCES `db_tafebuddy`.`competency_type` (`CompTypeCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_competency_qualification_competency1`
    FOREIGN KEY (`NationalCompCode`)
    REFERENCES `db_tafebuddy`.`competency` (`NationalCompCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;





LOCK TABLES `competency_qualification` WRITE;
/*!40000 ALTER TABLE `competency_qualification` DISABLE KEYS */;


INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','BSBCRT401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','BSBCRT401A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','BSBCRT501','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','BSBCRT501A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','BSBCRT501A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','BSBCUS402','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_DM','BSBEBU401','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_WEB','BSBEBU401','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_DM','BSBEBU401A','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_WEB','BSBEBU401A','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','BSBEBU401A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','BSBEBU401A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','BSBMGT403','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','BSBOHS201A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','BSBOHS302B','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','BSBOHS302B','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','BSBOHS302B','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','BSBOHS509A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','BSBOHS509A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CySec18','BSBRES401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','BSBSUS201','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','BSBSUS201A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','BSBSUS301','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','BSBSUS301','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','BSBSUS301','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','BSBSUS301','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','BSBSUS301A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_APP','BSBSUS301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_DM','BSBSUS301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_GEN','BSBSUS301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_NET','BSBSUS301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_PRG','BSBSUS301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_WEB','BSBSUS301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','BSBSUS301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','BSBSUS301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','BSBSUS301A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','BSBSUS301A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','BSBSUS401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_APP','BSBSUS401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_DM','BSBSUS401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_GEN','BSBSUS401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_NET','BSBSUS401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_PRG','BSBSUS401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_WEB','BSBSUS401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','BSBSUS401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','BSBSUS401','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','BSBSUS401','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','BSBWHS201','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','BSBWHS304','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','BSBWHS304','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_APP','BSBWHS304','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_DM','BSBWHS304','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_GEN','BSBWHS304','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_NET','BSBWHS304','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_PRG','BSBWHS304','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_WEB','BSBWHS304','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','BSBWHS304','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','BSBWHS304','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','BSBWHS304','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET15','BSBWHS304','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG15','BSBWHS304','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','BSBWHS304','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','BSBWHS304','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','BSBWHS304A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_APP','BSBWHS304A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_DM','BSBWHS304A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_GEN','BSBWHS304A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_NET','BSBWHS304A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_PRG','BSBWHS304A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_WEB','BSBWHS304A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','BSBWHS304A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','BSBWHS304A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','BSBWHS304A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','BSBWHS304A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','BSBWHS304A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','BSBWHS304A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','BSBWHS304A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CySec18','BSBWHS401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','BSBWHS501','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','BSBWHS501','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','BSBWHS501A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','BSBWOR404','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','CUACAM301','C_IM');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_DM','CUADIG301','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_WEB','CUADIG301','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','CUADIG401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','CUADIG405','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','CUADIG405','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','CUAPOS401','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','CUAPPM407','C_IM');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','CUAPPM407','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','CUAPPM407','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','CUFCAM301A','C_IM');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','CUFCAM301A','C_IM');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_DM','CUFDIG301A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_WEB','CUFDIG301A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_DM','CUFDIG301A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_WEB','CUFDIG301A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','CUFDIG401A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','CUFDIG401A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','CUFPOS401A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','CUFPOS401A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','CUFPPM404A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','CUFPPM404A','C_IM');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','CUFPPM404A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','CUFPPM404A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','CUFPPM404A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','CUVPHI504A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','CUVPHI504A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','CUVPHI519A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','CUVPHI519A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','CUVPHI519A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','ICADBS403A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICADBS403A','C_DD');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD11','ICADBS502A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST11','ICADBS504A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','ICADBS504A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICADBS504A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','ICADBS504A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICADBS504A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','ICADMT401A','C_IM');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','ICADMT402A','C_IM');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICADMT402A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','ICADMT403A','C_IM');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICADMT403A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','ICADMT501A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICADMT501A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','ICAGAM413A','C_IM');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','ICAGAM504A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICAGAM504A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','ICAGAM516A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','ICAGAM517A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C1_IDM11','ICAICT101A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C1_IDM11','ICAICT102A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C1_IDM11','ICAICT103A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C1_IDM11','ICAICT104A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C1_IDM11','ICAICT105A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C1_IDM11','ICAICT106A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C1_IDM11','ICAICT107A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','ICAICT201A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','ICAICT202A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_APP','ICAICT202A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_DM','ICAICT202A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_GEN','ICAICT202A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_NET','ICAICT202A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_PRG','ICAICT202A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_WEB','ICAICT202A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICAICT202A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','ICAICT203A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_APP','ICAICT203A','C_APP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','ICAICT204A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','ICAICT205A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','ICAICT206A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_APP','ICAICT206A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','ICAICT207A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','ICAICT210A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_APP','ICAICT301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_DM','ICAICT301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_GEN','ICAICT301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_NET','ICAICT301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_PRG','ICAICT301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_WEB','ICAICT301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_APP','ICAICT302A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_DM','ICAICT302A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_GEN','ICAICT302A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_NET','ICAICT302A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_PRG','ICAICT302A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_WEB','ICAICT302A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('SS_HWTech11','ICAICT302A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_GEN','ICAICT303A','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_NET','ICAICT303A','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_PRG','ICAICT303A','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('SS_HWTech11','ICAICT303A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_APP','ICAICT304A','C_APP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_APP','ICAICT307A','C_APP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_APP','ICAICT308A','C_APP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_PRG','ICAICT401A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','ICAICT401A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICAICT401A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','ICAICT401A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICAICT401A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICAICT401A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','ICAICT403A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','ICAICT404A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','ICAICT406A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICAICT406A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','ICAICT408A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_APP','ICAICT409A','C_APP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_GEN','ICAICT418A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_PRG','ICAICT418A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','ICAICT418A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','ICAICT418A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICAICT418A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','ICAICT418A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','ICAICT418A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICAICT418A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','ICAICT418A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICAICT418A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD11','ICAICT418A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICAICT418A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','ICAICT419A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','ICAICT419A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','ICAICT421A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','ICAICT4I8A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICAICT503A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICAICT511A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICAICT511A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST11','ICAICT514A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','ICAICT514A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICAICT514A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','ICAICT515A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICAICT515A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICAICT609A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_NET','ICANWK303A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_NET','ICANWK304A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_GEN','ICANWK305A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_NET','ICANWK305A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','ICANWK305A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','ICANWK401A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','ICANWK401A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICANWK401A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_NET','ICANWK402A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','ICANWK402A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICANWK402A','E_NET');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','ICANWK402A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','ICANWK403A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','ICANWK404A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICANWK404A','E_NET');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','ICANWK404A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_GEN','ICANWK405A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_NET','ICANWK405A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','ICANWK405A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICANWK405A','E_NET');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','ICANWK405A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','ICANWK406A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','ICANWK408A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','ICANWK408A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','ICANWK411A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','ICANWK411A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK501A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICANWK501A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK502A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK504A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','ICANWK504A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICANWK504A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK505A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','ICANWK505A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICANWK505A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST11','ICANWK506A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK506A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICANWK506A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST11','ICANWK507A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK507A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICANWK507A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST11','ICANWK508A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK508A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICANWK508A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST11','ICANWK509A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK509A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK518A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICANWK518A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK525B','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICANWK525B','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICANWK526A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK527B','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICANWK527B','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST11','ICANWK529A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK529A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICANWK529A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK535A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICANWK535A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK601A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST11','ICANWK602A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK602A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK605A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST11','ICANWK607A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK607A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK608A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICANWK616A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','ICAPMG401A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','ICAPMG501A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICAPMG501A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST11','ICAPMG608A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST11','ICAPMG609A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD11','ICAPMG609A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_APP','ICAPRG301A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_DM','ICAPRG301A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_GEN','ICAPRG301A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_PRG','ICAPRG301A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_WEB','ICAPRG301A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICAPRG301A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICAPRG402A','E_PRG');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','ICAPRG402A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','ICAPRG403A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','ICAPRG404A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_APP','ICAPRG405A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_DM','ICAPRG405A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_PRG','ICAPRG405A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_WEB','ICAPRG405A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','ICAPRG405A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICAPRG405A','E_PRG');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','ICAPRG405A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICAPRG405A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICAPRG406A','E_PRG');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','ICAPRG406A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','ICAPRG410A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','ICAPRG410A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICAPRG413A','E_PRG');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','ICAPRG413A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','ICAPRG414A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','ICAPRG414A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','ICAPRG415A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','ICAPRG418A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD11','ICAPRG418A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','ICAPRG419A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICAPRG425A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD11','ICAPRG501A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD11','ICAPRG502A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD11','ICAPRG503A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD11','ICAPRG504A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD11','ICAPRG505A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD11','ICAPRG506A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD11','ICAPRG520A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD11','ICAPRG523A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST11','ICAPRG527A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD11','ICAPRG527A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD11','ICAPRG529A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD11','ICAPRG603A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD11','ICASAD505A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','ICASAS202A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','ICASAS203A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','ICASAS206A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','ICASAS207A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','ICASAS209A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_APP','ICASAS301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_DM','ICASAS301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_GEN','ICASAS301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_NET','ICASAS301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_PRG','ICASAS301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_WEB','ICASAS301A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_APP','ICASAS303A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_DM','ICASAS303A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_GEN','ICASAS303A','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_NET','ICASAS303A','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_PRG','ICASAS303A','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_WEB','ICASAS303A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_GEN','ICASAS304A','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_NET','ICASAS304A','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_PRG','ICASAS304A','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_GEN','ICASAS305A','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_NET','ICASAS305A','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_PRG','ICASAS305A','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('SS_HWTech11','ICASAS305A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_GEN','ICASAS306A','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_NET','ICASAS306A','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_PRG','ICASAS306A','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('SS_HWTech11','ICASAS306A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_GEN','ICASAS307A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_NET','ICASAS307A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','ICASAS307A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICASAS307A','E_NET');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','ICASAS307A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('SS_HWTech11','ICASAS307A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','ICASAS425A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','ICASAS426A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICASAS426A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','ICASAS426A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICASAS503A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICASAS504A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','ICAWEB201A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_DM','ICAWEB201A','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_WEB','ICAWEB201A','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','ICAWEB301A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_APP','ICAWEB301A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_DM','ICAWEB301A','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_PRG','ICAWEB301A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_WEB','ICAWEB301A','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_DM','ICAWEB302A','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_PRG','ICAWEB302A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_WEB','ICAWEB302A','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM11','ICAWEB303A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_DM','ICAWEB303A','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_WEB','ICAWEB303A','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICAWEB401A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICAWEB402A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICAWEB403A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_APP','ICAWEB409A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_DM','ICAWEB409A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_WEB','ICAWEB409A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','ICAWEB409A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICAWEB409A','E_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICAWEB409A','C_DD');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','ICAWEB410A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICAWEB410A','E_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICAWEB410A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','ICAWEB411A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICAWEB411A','E_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICAWEB411A','C_DD');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICAWEB413A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICAWEB414A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICAWEB415A','C_DD');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICAWEB421A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICAWEB422A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICAWEB424A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICAWEB425A','C_DD');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_APP','ICAWEB429A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_DM','ICAWEB429A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_GEN','ICAWEB429A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_PRG','ICAWEB429A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM11_WEB','ICAWEB429A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM11','ICAWEB429A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICAWEB429A','E_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICAWEB429A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','ICAWEB429A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST11','ICAWEB501A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','ICAWEB501A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICAWEB501A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST11','ICAWEB502A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG11','ICAWEB502A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICAWEB502A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST11','ICAWEB503A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','ICAWEB503A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICAWEB503A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICAWEB504A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST11','ICAWEB505A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICAWEB505A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST11','ICAWEB506A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICAWEB506A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICAWEB508A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICAWEB509A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT11','ICAWEB510A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICAWEB510A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST11','ICAWEB516A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM11','ICAWEB516A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB11','ICAWEB516A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG15','ICTDBS403','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTDBS403','C_DD');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD15','ICTDBS502','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST15','ICTDBS504','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG15','ICTDBS504','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTDBS504','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','ICTDBS504','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTDBS504','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','ICTDMT401','C_IM');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTDMT401','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','ICTDMT403','C_IM');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTDMT403','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','ICTDMT501','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTDMT501','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','ICTGAM413','C_IM');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','ICTGAM504','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','ICTGAM517','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C1_IDM15','ICTICT101','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C1_IDM15','ICTICT102','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C1_IDM15','ICTICT103','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C1_IDM15','ICTICT104','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C1_IDM15','ICTICT105','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C1_IDM15','ICTICT106','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C1_IDM15','ICTICT107','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','ICTICT201','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','ICTICT202','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTICT202','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_APP','ICTICT202','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_DM','ICTICT202','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_GEN','ICTICT202','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_NET','ICTICT202','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_PRG','ICTICT202','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_WEB','ICTICT202','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTICT202','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','ICTICT203','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTICT203','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_APP','ICTICT203','C_APP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','ICTICT204','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','ICTICT205','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','ICTICT206','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_APP','ICTICT206','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','ICTICT210','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTICT301','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_APP','ICTICT301','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_DM','ICTICT301','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_GEN','ICTICT301','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_NET','ICTICT301','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_PRG','ICTICT301','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_WEB','ICTICT301','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTICT302','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_APP','ICTICT302','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_DM','ICTICT302','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_GEN','ICTICT302','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_NET','ICTICT302','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_PRG','ICTICT302','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_WEB','ICTICT302','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('SS_HWTech15','ICTICT302','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTICT303','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_GEN','ICTICT303','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_NET','ICTICT303','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_PRG','ICTICT303','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('SS_HWTech15','ICTICT303','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_APP','ICTICT304','C_APP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_APP','ICTICT307','C_APP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTICT308','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_APP','ICTICT308','C_APP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_PRG','ICTICT401','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTICT401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTICT401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET15','ICTICT401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTICT401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET15','ICTICT401','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG15','ICTICT403','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','ICTICT404','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG15','ICTICT408','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_APP','ICTICT409','C_APP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTICT409','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTICT415','E_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_PRG','ICTICT418','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTICT418','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CySec18','ICTICT418','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','ICTICT418','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTICT418','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET15','ICTICT418','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG15','ICTICT418','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTICT418','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','ICTICT418','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET15','ICTICT418','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD15','ICTICT418','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTICT418','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','ICTICT419','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','ICTICT419','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTICT421','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTICT422','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET15','ICTICT422','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC15','ICTICT511','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET15','ICTICT511','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','ICTICT514','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTICT514','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','ICTICT515','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTICT515','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC15','ICTICT609','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_NET','ICTNWK303','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_NET','ICTNWK304','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTNWK305','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_GEN','ICTNWK305','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_NET','ICTNWK305','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTNWK306','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTNWK401','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTNWK401','E_NET');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET15','ICTNWK401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTNWK402','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_NET','ICTNWK402','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTNWK402','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTNWK402','E_NET');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET15','ICTNWK402','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET15','ICTNWK403','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICTNWK403','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTNWK404','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTNWK404','E_NET');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET15','ICTNWK404','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTNWK405','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_GEN','ICTNWK405','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_NET','ICTNWK405','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTNWK405','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTNWK405','E_NET');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET15','ICTNWK405','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET15','ICTNWK406','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTNWK407','E_NET');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET15','ICTNWK407','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTNWK408','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTNWK408','E_NET');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET15','ICTNWK408','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET15','ICTNWK409','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTNWK411','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTNWK411','E_NET');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET15','ICTNWK411','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET15','ICTNWK501','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC15','ICTNWK502','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC15','ICTNWK504','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET15','ICTNWK505','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST15','ICTNWK506','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET15','ICTNWK506','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST15','ICTNWK507','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET15','ICTNWK507','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST15','ICTNWK508','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC15','ICTNWK508','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET15','ICTNWK508','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST15','ICTNWK509','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC15','ICTNWK509','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC15','ICTNWK525','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET15','ICTNWK525','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC15','ICTNWK527','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST15','ICTNWK529','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET15','ICTNWK529','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC15','ICTNWK601','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST15','ICTNWK602','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC15','ICTNWK602','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC15','ICTNWK605','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST15','ICTNWK607','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC15','ICTNWK607','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC15','ICTNWK608','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET15','ICTNWK613','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC15','ICTNWK616','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','ICTPMG401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','ICTPMG501','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD15','ICTPMG501','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTPMG501','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST15','ICTPMG608','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST15','ICTPMG609','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTPRG301','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_APP','ICTPRG301','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_DM','ICTPRG301','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_GEN','ICTPRG301','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_PRG','ICTPRG301','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_WEB','ICTPRG301','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','ICTPRG301','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTPRG402','E_PRG');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG15','ICTPRG402','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG15','ICTPRG403','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTPRG404','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG15','ICTPRG404','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTPRG405','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_APP','ICTPRG405','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_DM','ICTPRG405','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_PRG','ICTPRG405','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_WEB','ICTPRG405','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTPRG405','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','ICTPRG405','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTPRG405','E_PRG');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG15','ICTPRG405','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTPRG405','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST15','ICTPRG406','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTPRG406','E_PRG');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG15','ICTPRG406','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CySec18','ICTPRG407','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTPRG410','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTPRG410','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG15','ICTPRG410','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET15','ICTPRG412','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG15','ICTPRG413','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTPRG414','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTPRG414','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG15','ICTPRG414','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG15','ICTPRG415','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG15','ICTPRG418','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','ICTPRG418','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD15','ICTPRG418','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTPRG418','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG15','ICTPRG419','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD15','ICTPRG501','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD15','ICTPRG502','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD15','ICTPRG503','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD15','ICTPRG504','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD15','ICTPRG505','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD15','ICTPRG506','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD15','ICTPRG520','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD15','ICTPRG523','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST15','ICTPRG527','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD15','ICTPRG527','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD15','ICTPRG529','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD15','ICTPRG604','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_SD15','ICTSAD505','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','ICTSAS202','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','ICTSAS203','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','ICTSAS206','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','ICTSAS207','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','ICTSAS209','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTSAS301','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_APP','ICTSAS301','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_DM','ICTSAS301','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_GEN','ICTSAS301','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_NET','ICTSAS301','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_PRG','ICTSAS301','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_WEB','ICTSAS301','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('SS_HWTech15','ICTSAS301','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTSAS303','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_APP','ICTSAS303','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_DM','ICTSAS303','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_GEN','ICTSAS303','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_NET','ICTSAS303','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_PRG','ICTSAS303','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_WEB','ICTSAS303','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTSAS304','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_GEN','ICTSAS304','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_NET','ICTSAS304','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_PRG','ICTSAS304','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTSAS305','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_GEN','ICTSAS305','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_NET','ICTSAS305','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_PRG','ICTSAS305','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('SS_HWTech15','ICTSAS305','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTSAS306','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_GEN','ICTSAS306','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_NET','ICTSAS306','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_PRG','ICTSAS306','C_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('SS_HWTech15','ICTSAS306','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTSAS307','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_GEN','ICTSAS307','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_NET','ICTSAS307','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTSAS307','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTSAS307','E_NET');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('SS_HWTech15','ICTSAS307','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CySec18','ICTSAS409','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTSAS410','E_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTSAS412','E_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTSAS420','E_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTSAS421','E_SUP');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTSAS425','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTSAS426','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTSAS426','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET15','ICTSAS426','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTSAS503','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTSAS504','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET15','ICTSAS518','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET15','ICTSAS518','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC15','ICTSUS501','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET15','ICTSUS501','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICTSUS5187A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICTSUS5187A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC15','ICTSUS601','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICTSUS6233A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTTEN416','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTTEN416','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET15','ICTTEN416','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTTEN417','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTTEN417','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','ICTTEN4198A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTTEN4198A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICTTEN4198A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','ICTTEN4198A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST11','ICTTEN4199A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTTEN4199A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT11','ICTTEN4199A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','ICTTEN4199A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET15','ICTTEN422','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST15','ICTTEN514','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTTEN514','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET15','ICTTEN514','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_NET11','ICTTEN5201A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICTTEN5201A','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICTTEN5217A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICTTEN5217A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET15','ICTTEN611','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICTTEN6172A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICTTEN6172A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_NETSEC11','ICTTEN6206A','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_NET11','ICTTEN6206A','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','ICTWEB201','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_DM','ICTWEB201','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_WEB','ICTWEB201','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','ICTWEB301','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTWEB301','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_APP','ICTWEB301','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_DM','ICTWEB301','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_GEN','ICTWEB301','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_PRG','ICTWEB301','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_WEB','ICTWEB301','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','ICTWEB301','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_DM','ICTWEB302','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_PRG','ICTWEB302','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_WEB','ICTWEB302','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C2_IDM15','ICTWEB303','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_DM','ICTWEB303','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_WEB','ICTWEB303','C_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTWEB401','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTWEB402','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTWEB403','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15','ICTWEB409','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_APP','ICTWEB409','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_DM','ICTWEB409','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_WEB','ICTWEB409','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','ICTWEB409','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTWEB409','E_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTWEB409','C_DD');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTWEB410','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTWEB410','E_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTWEB410','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST15','ICTWEB411','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CST15','ICTWEB411','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTWEB411','E_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTWEB411','C_DD');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTWEB411','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTWEB413','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTWEB414','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTWEB415','C_DD');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_DM15','ICTWEB416','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTWEB416','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTWEB416','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTWEB422','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTWEB424','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTWEB425','C_DD');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_APP','ICTWEB429','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_DM','ICTWEB429','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_GEN','ICTWEB429','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_PRG','ICTWEB429','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C3_IDM15_WEB','ICTWEB429','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','ICTWEB429','E_WEB');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTWEB429','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','ICTWEB429','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST15','ICTWEB501','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','ICTWEB501','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTWEB501','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST15','ICTWEB502','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_PRG15','ICTWEB502','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTWEB502','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST15','ICTWEB503','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTWEB503','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('AD_CST15','ICTWEB505','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','ICTWEB505','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTWEB505','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTWEB506','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTWEB508','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTWEB509','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_WBT15','ICTWEB510','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTWEB510','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_DM15','ICTWEB516','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('D_WEB15','ICTWEB516','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CySec18','RIICOM301D','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CySec18','VU21988','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CySec18','VU21989','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CySec18','VU21990','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','VU21990','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CySec18','VU21991','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CySec18','VU21992','C');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CySec18','VU21993','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_IT15','VU21993','E');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CySec18','VU21994','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CySec18','VU21995','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CySec18','VU21996','LE');
INSERT INTO competency_qualification(QualCode,NationalCompCode,CompTypeCode) VALUES ('C4_CySec18','VU21997','LE');

/*!40000 ALTER TABLE `competency_qualification` ENABLE KEYS */;
UNLOCK TABLES;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
