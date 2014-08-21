user = User.create(name: "admin", email: "admin@env.io", password: "change_me")
user.admin = true
user.save

Category.create( name: "Agriculture")
Category.create(
	name: "Biomedical"
)
Category.create(
	name: "Displays"
)
Category.create(
	name: "Electronics"
)
Category.create(
	name: "Energy"
)
Category.create(
	name: "Communications"
)
Category.create(
	name: "Manufacturing"
)
Category.create(
	name: "Materials"
)
Category.create(
	name: "Military"
)
Category.create(
	name: "Neuroscience"
)
Category.create(
	name: "Robotics"
)	
Category.create(
	name: "Transport"
)	
Category.create(
	name: "Space"
)	    
Category.create(
	name: "Social"
)	    
Category.create(
	name: "Other"
)

Card.create(
name: "3D Display",
approved: true,
short_desc: "Also known as stereo display, which conveys depth perception through binocular vision, or offsetting images for the right and left eyes. ".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/3D_Display.jpg"))
)
Card.create(
name: "Aerial Wireless Network",
approved: true,short_desc: "Solves the problem of limited internet access across the globe with balloon systems or drones.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Aerial Wireless Network.jpg"))
)
Card.create( name: "Agricultural Drones",
approved: true,short_desc: "With advanced sensors and imaging capabilities, relatively cheap drones can improve water usage, pest management, and assess crop conditions, damage and yields.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Agricultural Drones.jpg"))
)
Card.create(
name: "Air & Soil Sensors",
approved: true,short_desc: "Enables precision agriculture by providing real-time information of the conditions of a farm, forest or body of water. ".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Air & Soil Sensors.jpg"))
)
Card.create(
name: "Artificial Organs",
approved: true,short_desc: "Restores a specific function or group of functions in the body by replacing a natural organ with a manmade device. ".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Artificial Organs.jpg"))
)
Card.create(
name: "Artificial Photosynthesis",
approved: true,short_desc: "Replicates the natural process of photosynthesis by harvesting sunlight and splitting molecules into carbohydrates, oxygen and hydrogen -- sources of energy.  Could become an essential source of fuel for transportation".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Artificial Photosynthesis.jpg"))
)
Card.create(
name: "Artificial Retinas",
approved: true,short_desc: "By replacing lost photoceptors with cameras or light-sensitive diodes connected to an implanted chip, new retinas restore light and shapes for the blind.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Artificial Retinas.jpg"))
)
Card.create(
name: "Attention Economies",
approved: true,short_desc: "With the rise of the internet, attention has become a limited resource. When attention is paid, spent, given, taken – or transacted – it becomes influence, which then develops as capital and as an economic system. Platforms like Klout and Scup have been developed to monitor and measure one's influence online.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Attention-Economies.jpg"))
)
Card.create(
name: "Augmented Reality",
approved: true,short_desc: "A live view of real-world environment whose elements are augmented by computer-generated sensory input such as sound, video, metadata or graphics.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Augmented-Reality.jpg"))
)
Card.create(
name: "Autonomous Cars",
approved: true,short_desc: "Vehicles capable of sensing and navigating its environment could significantly improve safety as human error won't cause accidents. Connectivity and responsive GPS routing would drastically reduce traffic, and the attention required for driving could be used for other activities, like work or socializing.  ".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Autonomous Cars.jpg"))
)
Card.create(
name: "Big Data Intelligence",
approved: true,short_desc: "Database programs and systems that proactively make decisions and meta-decisions about how to process, capture and store data by analyzing its content.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Big-Data-Intelligence.jpg"))
)
Card.create(
name: "Big Data Skin Patches",
approved: true,short_desc: "Adhesive biosensors that act a a \"digital health feedback system\" to monitor vital and biological signs for precision health and medical decision-making.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Big Data Skin Patches.jpg"))
)
Card.create(
name: "Biohacking",
approved: true,short_desc: "By engaging biology with a hacker ethic, one can manage one's own biology using a combination of medical, nutritional and electronic techniques. ".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Biohacking.jpg"))
)
Card.create(
name: "Biologically Extended Senses",
approved: true,short_desc: "If one considers the brain evolved to handle one construction of reality, it can now creating new cognitive perceptions by overlay multiple local and remote experiences simultaneously. Biological senses can be enhanced and produced artificially, which adapt and transform to address different kinds of stimuli for specific purposes.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Biologically Extended Senses.jpg"))
)
Card.create(
name: "Biomaterials",
approved: true,short_desc: "Derived either from nature or synthesized in the laboratory, biomaterials can be used to enhance or replace natural functions in the body. Already used to a small degree, biomaterials have the potential of improving drug delivery Card.create(by permitting extended drug release) or grafting in transplants.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Biomaterials.jpg"))
)
Card.create(
name: "Biometric Sensors",
approved: true,short_desc: "Relays data from the body through telecommunications. Potential applications include monitoring blood levels, infections and vaccine efficacy .".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Biometric Sensors.jpg"))
)
Card.create(
name: "Bionic Implants",
approved: true,short_desc: "Microscopic technological structures that extract biometric information from an organism to analyze its performance and improve specific functions with assisted feedback. In terms of personal biometry, bionic implants can empower preventive medicine and develop customized solutions for specific organisms and diseases.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Bionic Implants.jpg"))
)
Card.create(
name: "Botsourcing",
approved: true,short_desc: "Assigns tasks Card.create(physical or digital) that would otherwise be performed by humans to an autonomous software agent.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Botsourcing.jpg"))
)
Card.create(
name: "Carbon Sequestration",
approved: true,short_desc: "Long-term storage of carbon dioxide or other forms of carbon can prevent the accumulation of greenhouse gases and mitigate global warming. ".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Carbon Sequestration.jpg"))
)
Card.create(
name: "Centimeter-Scale Global Positioning",
approved: true,short_desc: "User to locate millimeter-scale objects on people, surfaces and environments.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Centimeter-Scale Global Positioning.jpg"))
)
Card.create(
name: "Climate Engineering",
approved: true,short_desc: "Counteracts the effects of global warming by manipulating greenhouse gas emissions and the Earth's climate.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Climate Engineering.jpg"))
)
Card.create(
name: "Clothes-Embedded Sensors",
approved: true,short_desc: "Enables tracking of activity, biometrics and ambient data from clothes worn by an individual.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Clothes-Embedded-Sensors.jpg"))
)
Card.create(
name: "Cloudsourcing",
approved: true,short_desc: "Outsources tasks to a distributed group of people and/or AI agents. Unlike traditional people-only crowdsourcing, cloudsourcing engages from both software and humans in the task. ".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Cloudsourcing.jpg"))
)
Card.create(
name: "Controlled Self-Assembly",
approved: true,short_desc: "Machines that manipulate individual atoms with organism-like self-replicating abilities. These bottom-up, atomically precise 3D printers would be able to carefully create sequences of DNA, RNA or protein.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Controlled Self-Assembly.jpg"))
)
Card.create(
name: "Depth Imagining",
approved: true,short_desc: "Depth Card.create(or range) imaging is a collection of techniques used to produce a 2D image showing the distance to points in a scene from a specific point. The resulting image can be used to reproduce a 3D scene on screen.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Depth Imagining.jpg"))
)
Card.create(
name: "Digital Bartering Systems",
approved: true,short_desc: "The reputation of an individual or an institution can be easily measured and assessed online through comments, pageviews, reviews, reposts and likes. These components can be exchanged between individuals and groups to develop valuable online presence. ".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Digital Bartering Systems.jpg"))
)
Card.create(
name: "Digital Currencies",
approved: true,short_desc: "An alternative, electronic curency that is traded online without middlemen, central banks or backed by national fiat. Digital curencies differ from virtual money in virtual economies as they are used in transactions for real goods and services.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Digital Currencies.jpg"))
)
Card.create(
name: "Digital Identification",
approved: true,short_desc: "Identifies a person or a thing and the relationship to the system. It has become faster and more pervasive with biometric sensors and facial recognition devices.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Digital Identification.jpg"))
)
Card.create(
name: "Distributed Power Generation",
approved: true,short_desc: "Generates electricity from many small energy sources instead of large centralized facilities. Centralized power plants oﬀer economies of scale, but waste power during transmission, and are cannot rapidly adapt to grid needs.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Distributed Power Generation.jpg"))
)
Card.create(
name: "Drone Delivery",
approved: true,short_desc: "Transports objects though networks of small unmanned flying vehicles.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Drone-Delivery.jpg"))
)
Card.create(
name: "E-textiles",
approved: true,short_desc: "Fabrics embedded with digital components, such as microcontrollers, sensors, and actuators.  Electronic textiles are distinct from wearable computing because emphasis is placed on the seamless integration of textiles with electronic elements. E-textiles can be particularly exciting for interior design.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/E-textiles.jpg"))
)
Card.create(
name: "EEG Brain-to-computer Interfaces",
approved: true,short_desc: "Electroencephalography remains the most feasible practice of executing and implementing brain to brain interfaces. It represents the best temporal-resolution tool for getting a picture of the brain in action, is portable, non-invasive and extremely affordable compared to other methods.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/EEG-Brain-to-computer-Interfaces.jpg"))
)
Card.create(
name: "Embodied Interfaces",
approved: true,short_desc: "Based on the principle that the brain evolved to handle one construction of reality, but now can overlay multiple local and remote experiences simultaneously, creating new cognitive perceptions. Biological senses can be enhanced and produced artificially, which adapt and transform to address different kinds of stimuli for specific purposes.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Embodied Interfaces.jpg"))
)
Card.create(
name: "Emotion Tracking",
approved: true,short_desc: "Uses sensors, computer vision and algorithms to identify likely emotions displayed by individuals in a crowd. Could help track behavior in airports and high-risk facilities. ".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Emotion-Tracking.jpg"))
)
Card.create(
name: "Energy Harvesting",
approved: true,short_desc: "Captures energy from external sources Card.create(e.g. solar power, thermal energy, wind energy, salinity gradients, and kinetic energy) and stores it in small cells for wireless devices, like those used in wearable electronics and wireless sensor networks.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Enernet.jpg"))
)
Card.create(
name: "Enernet",
approved: true,short_desc: "The “internet for energy”, where power generators and sensors are connected in a dedicated network to maximize output and efficiency.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Eyewear-embedded Screens.jpg"))
)
Card.create(
name: "Eyewear-embedded Screens",
approved: true,short_desc: "Miniaturized Head-Up Display Card.create(HUD) embedded in the user's eyewear. ".truncate(250),

)
Card.create(
name: "First-Generation Smart Grid",
approved: true,short_desc: "Records real-time consumption of energy and relays it to the utility for monitoring and billing. Can be used for remote load-balancing -- disabling non-essential devices at peak usage.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/First-Generation Smart Grid.jpg"))
)
Card.create(
name: "Flexible Screens",
approved: true,short_desc: "Display devices which can be rolled up or folded.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Flexible-Screens.jpg"))
)
Card.create(
name: "Fuel Cells",
approved: true,short_desc: "Unlike batteries, fuel cells require a constant source of fuel and oxygen to run, but they can produce electricity continually for as long as these inputs are supplied. They displace the need for natural gas turbines, and are ideally used for stationary power generation or large passenger vehicles such as buses.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Fuel Cells.jpg"))
)
Card.create(
name: "Gene Therapy",
approved: true,short_desc: "The insertion, alteration, or removal of genes within an individual’s cells and biological tissues to treat disease.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Gene-Therapy.jpg"))
)
Card.create(
name: "Genetically Designed Food",
approved: true,short_desc: "The creation of entirely new strains of food animals and plants in order to better address biological and physiological needs. A departure from genetically modified food, genetically designed food would be engineered from the ground up.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Genetically Designed Food.jpg"))
)
Card.create(
name: "Genome Editing",
approved: true,short_desc: "The creation of primates with intentional mutations. This could provide powerful new ways to study complex and genetically baffling brain disorders.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Genome Editing.jpg"))
)
Card.create(
name: "Gesture Recognition",
approved: true,short_desc: "Enables humans to interface with the machine and interact naturally without any mechanical devices.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Gesture Recognition.jpg"))
)
Card.create(
name: "Graphene",
approved: true,short_desc: "A substance composed of pure carbon with atoms arranged in a regular hexagonal pattern similar to graphite, but in a one-atom thick sheet. The material is both incredibly light and strong.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Graphene.jpg"))
)
Card.create(
name: "In-vitro Meat",
approved: true,short_desc: "An animal flesh product that has never been part of a complete, living animal. Also known as \"laboratory-grown\" meat.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/In-vitro Meat.jpg"))
)
Card.create(
name: "Infrastructural Health Sensors",
approved: true,short_desc: "Monitors vibrations and material conditions in buildings, bridges, factories, farms and other infrastructure. Coupled with an intelligent network could feed crucial information back to maintenance crews or robots.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Infrastructural Health Sensors.jpg"))
)
Card.create(
name: "Labs-On-Chips",
approved: true,short_desc: "Devices that integrates one or several laboratory functions on a single chip of only millimeters to a few square centimeters in size. LOCs deal with the handling of extremely small fluid volumes down to less than picoliters. They are safer platforms for chemical, radioactive or biological studies.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Labs-On-Chips.jpg"))
)
Card.create(
name: "Machine Translation",
approved: true,short_desc: "Translates text or speech from one natural language to another.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Machine Translation.jpg"))
)
Card.create(
name: "Machine Vision",
approved: true,short_desc: "Provides imaging-based automatic inspection, process control and robot guidance in industrial applications.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Machine-Vision.jpg"))
)
Card.create(
name: "Machine-augmented Cognition",
approved: true,short_desc: "Refers to the effective use of information technology to augment human cognition using intelligence amplifying system of tools. Information retrieved from the brain would then be used to feedback necessary stimulus to accomplish determined brain functions.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Machine-augmented Cognition.jpg"))
)
Card.create(
name: "Macroscale 3D Printers",
approved: true,short_desc: "Enables large-scale prototyping. Could print houses, bicycles or artwork.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Macroscale 3D Printers.jpg"))
)
Card.create(
name: "Medical Nanobots",
approved: true,short_desc: "Emulates living biological organisms/functions mechanically or chemically. Medical nanonbots may be used to enhance or treat the body's functions be mimicking organic systems, then re-programming and adapting to different conditions.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Medical Nanobots.jpg"))
)
Card.create(
name: "Medical Tricorder",
approved: true,short_desc: "Portable scanning devices used to self-diagnose medical conditions within seconds and take basic vital measurements.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Medical Tricorder.jpg"))
)
Card.create(
name: "Mesh Networking",
approved: true,short_desc: "A network topology in which each node relays data for the network.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Mesh Networking.jpg"))
)
Card.create(
name: "Meter-Scale Global Positioning",
approved: true,short_desc: "Used to locate centimeter-scale objects inside buildings and venues.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Micro Nuclear Reactors.jpg"))
)
Card.create(
name: "Micro Nuclear Reactors",
approved: true,short_desc: "A small, sealed version of a nuclear reactor Card.create(approximately a few tens of meters in length) capable of being shipped or flown to a site. At the moment, they can provide 10 MW of power, and will be able to provide 50 MW in the near future.".truncate(250),

)
Card.create(
name: "Microscale 3D Printers",
approved: true,short_desc: "Enables precision prototyping that could produce electronics, food, medicine, fibers or biological tissue. ".truncate(250),

)
Card.create(
name: "Modular Electronics",
approved: true,short_desc: "Subdivides a system into parts to drive multiple functionalities in different systems. The modular approach enables customization and augmetnation through flexible design.".truncate(250),

)
Card.create(
name: "Molecular Sensor",
approved: true,short_desc: "A tiny spectrometer that retrieves instant, relevant data about the chemical make-up of materials.".truncate(250),

)
Card.create(
name: "MOOCs",
approved: true,short_desc: "An online course designed for large-scale participation and open access.".truncate(250),

)
Card.create(
name: "Nanomedicine",
approved: true,short_desc: "The medical application of nanotechnology, which could include materials, sensors, or even molecules.".truncate(250),

)
Card.create(
name: "Nanoscale 3D Printers",
approved: true,short_desc: "Enables directly manipulating individual groups of molecules. Could print food, medicine or body parts.".truncate(250),

)
Card.create(
name: "Neural Network Image Recognition",
approved: true,short_desc: "Hundreds of thousands of processor cores can be programmed algorithmically to identify an image. For example -- it can identify a cat based on thousands of cat pictures.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Neural Network Image Recognition.jpg"))
)
Card.create(
name: "Neurogaming",
approved: true,short_desc: "Integrates the nervous system into the gaming experience by using new sensor technologies, output systems, and game design techniques.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Neurogaming.jpg"))
)
Card.create(
name: "Neuroprosthetics",
approved: true,short_desc: "Neural devices that can substitute damaged motor, sensory or cognitive modalities. Applications may include neural repair, advanced cognitive features and extended physiological senses.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Neuroprosthetics.jpg"))
)
Card.create(
name: "Open Health Records",
approved: true,short_desc: "Captures the state of the patient at all times and is available to anyone. Designed so a patient's history would be open, ensuring data is accurate, appropriate and accessible.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Open-Health-Records.jpg"))
)
Card.create(
name: "Open-Source Governance",
approved: true,short_desc: "A political philosophy which advocates for open source and open content applications to democratic principles, so any interested citizen may contribute to the creation of policy -- as with a wiki document.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Open-source Governance.jpg"))
)
Card.create(
name: "Organ Printing",
approved: true,short_desc: "Combines cellular engineering, material methods, suitable biochemical and physio-chemical factors to improve or replace biological functions. The term is associated with tools that may repair or replace portions of or whole tissues.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Organ Printing.jpg"))
)
Card.create(
name: "Personal Area Networks",
approved: true,short_desc: "Works around the vicinity of the user, enabling close-range bandwidth and information sharing.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Personal Area Networks.jpg"))
)
Card.create(
name: "Personal Rapid Transit",
approved: true,short_desc: "A form of public transport featuring small automated vehicles operating on a network of specially-built guideways. PRT is a type of automated guideway transit Card.create(AGT), which also includes larger vehicles, to small subway systems.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Personal Rapid Transit.jpg"))
)
Card.create(
name: "Personalized Medicine",
approved: true,short_desc: "The application of molecular and genomic analysis, and systems biology to analyze a patient's disease, to then utilize targeted, integrated treatments to address the disease".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Personalized Medicine.jpg"))
)
Card.create(
name: "Photovoltaic Glass",
approved: true,short_desc: "Glass integrated with solar cells to converts solar energy into electricity -- the power for an entire building could be generated through its roof and surfaces.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Photovoltaic Glass.jpg"))
)
Card.create(
name: "Pico ors",
approved: true,short_desc: "Miniature ors in handheld devices such as mobile phones, personal digital assistants and digital cameras.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Pico Projectors.jpg"))
)
Card.create(
name: "Piezoelectric Power Generation",
approved: true,short_desc: "Electricity resulting from pressure or mechanical stress.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Piezoelectric-Power-Generation.jpg"))
)
Card.create(
name: "Powered Exoskeleton",
approved: true,short_desc: "A framework designed to assist and protect individuals in dangerous environments, such as combat soldiers, construction workers, firefighters, rescue teams, etc.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Powered-Exoskeleton.jpg"))
)
Card.create(
name: "Precision Agriculture",
approved: true,short_desc: "Farming management based on observing Card.create(and responding to) intra-field variations. With satellite imagery and advanced sensors, farmers can optimize returns on inputs while preserving resources at ever larger scales. Further understanding of crop variability, geolocated weather data and precise sensors should allow improved automated decision-making and complementary planting techniques.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Precision Agriculture.jpg"))
)
Card.create(
name: "Prenatal Gene Manipulation",
approved: true,short_desc: "A direct manipulation of an embryo/fetus genome using biotechnology.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Prenatal Gene Manipulation.jpg"))
)
Card.create(
name: "Printed Electronics",
approved: true,short_desc: "Electrically functional or optical inks are deposited on the material, creating active or passive devices, such as thin ﬁlm transistors or resistors. Printed electronics is expected to facilitate widespread, very low-cost, low-performance electronics for applications such as ﬂexible displays, smart labels, decorative and animated posters, and active clothing that do not require high performance.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Printed Electronics.jpg"))
)
Card.create(
name: "Proactive Software Agents",
approved: true,short_desc: "Software applications with the capacity of discerning and predicting likely future needs of the user. Intelligently scheduling meetings, sorting email and selectively notifying the user are potential usages.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Proactive Software Agents.jpg"))
)
Card.create(
name: "Reactive Materials",
approved: true,short_desc: "Have one or more properties that can be significantly changed in a controlled fashion by external stimuli, such as stress, temperature, moisture, pH, electric or".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Reactive Materials.jpg"))
)
Card.create(
name: "Reputation Economies",
approved: true,short_desc: "As the network provides more opportunities for individual influence through comments, reviews and likes, it provides more context, cause and character for decision-making.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Reputation Economies.jpg"))
)
Card.create(
name: "Robotic Farm Swarms",
approved: true,short_desc: "The hypothetical combination of dozens or hundreds of agricultural robots with thousands of microscopic sensors, which together would monitor, predict, cultivate and extract crops from the land with practically no human intervention. Small-scale implementations are already on the horizon.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Robotic Farm Swarms.jpg"))
)
Card.create(
name: "Seasteading",
approved: true,short_desc: "Permanent dwellings at sea outside the territories claimed by governments of any standing nation.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Seasteading.jpg"))
)
Card.create(
name: "Self-Healing Materials",
approved: true,short_desc: "Like biological systems that have the ability to heal themselves after being wounded, materials are being developed with structural ability to repair damage caused by wear and tear.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Self-Healing-Materials.jpg"))
)
Card.create(
name: "Semantic Search",
approved: true,short_desc: "Improves search accuracy by assessing searcher intent and context to generate more relevant results.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Semantic-Search.jpg"))
)
Card.create(
name: "Service Robots",
approved: true,short_desc: "Robots doing human-scale tasks, having sense and manipulate in complex ways. Legged machines that stride over uneven or unsteady terrain. Much of the world is inaccessible to wheeled machines but not legged ones.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Service-Robots.jpg"))
)
Card.create(
name: "Smart Contact Lens",
approved: true,short_desc: "Measures glucose levels in tears using a tiny wireless chip and miniaturized glucose sensor that are embedded between two layers of soft contact lens material".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Smart Contact Lens.jpg"))
)
Card.create(
name: "Smart Drugs",
approved: true,short_desc: "Drugs, supplements, nutraceuticals and functional foods that improve mental functions such as cognition, memory, intelligence, motivation, attention, and concentration.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Smart-Drugs.jpg"))
)
Card.create(
name: "Spray-On Fabric",
approved: true,short_desc: "Short fibers, polymers and a solvent delivered in liquid form. When in contact with a surface Card.create(such as a shaping mold), the solvent becomes a fabric. Soaking clothes returns them to liquid form, so they may be reused. ".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Spray-On Fabric.jpg"))
)
Card.create(
name: "Stretchable Electronics",
approved: true,short_desc: "Gives way to a range of new applications, such as cyber skin for robotics and flesh-like devices with embedded electronic nervous systems.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Stretchable Electronics.jpg"))
)
Card.create(
name: "Superomniphobic Materials",
approved: true,short_desc: "Inspired by water bugs that ﬂoat on liquid surfaces, these materials repel both oily and watery ﬂuids.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Superomniphobic Materials.jpg"))
)
Card.create(
name: "Teledildonics",
approved: true,short_desc: "Remote-controlled and robotic sex toys that can be controlled by artifical intelligence agents or telepresent partners.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Teledildonics.jpg"))
)
Card.create(
name: "Telepresence",
approved: true,short_desc: "Allows a person to feel, or have the effect of being present at a place other than their true location.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Telepresence.jpg"))
)
Card.create(
name: "Thermal Energy Storage",
approved: true,short_desc: "Thermal energy can be accumulated in active solar collectors, combined heat and power plants, and then transferred to insulated repositories forspace heating, domestic or process water heating.".truncate(250),

)
Card.create(
name: "Third-generation Biofuels",
approved: true,short_desc: "New fuels sourced through genetic modification -- for example, hydrogen can be produced from highly efficient algae and energy-dense furans.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Third-generation Biofuels.jpg"))
)
Card.create(
name: "Translucent Screens",
approved: true,short_desc: "Screens which let light through, so windows and windshields may be used as computer interfaces. ".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Translucent Screens.jpg"))
)
Card.create(
name: "Vertical Farming",
approved: true,short_desc: "Cultivates plant or animal life within dedicated or mixed-use skyscrapers in urban settings. This could allow for year-round crop production, protection from weather, support urban food autonomy and reduced transport costs.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Vertical Farming.jpg"))
)
Card.create(
name: "Virtual Reality Headset",
approved: true,short_desc: "High-quality virtual-reality hardware that is cheap enough for the consumer market. Visually immersive interfaces will lead to new forms of entertainment and communications.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Virtual Reality Headset.jpg"))
)
Card.create(
name: "Wall-sized Screens",
approved: true,short_desc: "Tileable and interactive screen-wallpapers are expected to dominate all types of surfaces for domestic and professional uses. Wrap-around screens engage peripheral vision and create a truly immersive experience.".truncate(250),
photo: File.open(File.join(Rails.root, "db/seeds/photos/Wall-sized Screens.jpg"))
)