# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Education.create([{
    name: "College of DuPage", 
    startDate:Date.new(2009,5,1), 
    endDate:Date.new(2017,5,28), 
    incomplete:true, 
    enabled:true, 
    paperEarned:"Associates in the Arts"
    }])
Summary.create([{summaryText: "Experienced software engineer with a background in Systems Administration. Key strengths include hardware installation, network administration as well as software design with an eye towards DevOps.", enabled:true}])
language_catagory=SkillGroup.create({skillType:"Programming Languages"}).id
cli_catagory=SkillGroup.create({skillType:"Command Line"}).id
ide_catagory=SkillGroup.create({skillType:"IDEs"}).id
os_catagory=SkillGroup.create({skillType:"Operating Systems"}).id
other_catagory=SkillGroup.create({skillType:"Other Skills"}).id
# oh boy this is going to be a big one the skills
Skill.create([
    #Languages
    {skillName:"Ruby",skill_group_id:language_catagory},
    {skillName:"C#",skill_group_id:language_catagory},
    {skillName:"C++",skill_group_id:language_catagory},
    {skillName:"Objective-C",skill_group_id:language_catagory},
    {skillName:"SQL",skill_group_id:language_catagory},
    {skillName:"HTML",skill_group_id:language_catagory},
    {skillName:"CSS",skill_group_id:language_catagory},
    {skillName:"Javascript",skill_group_id:language_catagory},
    {skillName:"PHP",skill_group_id:language_catagory},
    {skillName:"MASM",skill_group_id:language_catagory},
    #Command Line Catagories
    {skillName:"Git",skill_group_id:cli_catagory},
    {skillName:"ViM",skill_group_id:cli_catagory},
    {skillName:"Bash",skill_group_id:cli_catagory},
    {skillName:"ZSH",skill_group_id:cli_catagory},
    #Operating Systems
    {skillName:"Windows 7-10",skill_group_id:os_catagory},
    {skillName:"MacOS 10.6-10.12",skill_group_id:os_catagory},
    {skillName:"Ubuntu 14.04 LTS-16.04 LTS",skill_group_id:os_catagory},
    #Other Catagory
    {skillName:"Network Design and Implementation",skill_group_id:other_catagory},
    {skillName:"Graphic Design",skill_group_id:other_catagory},
    {skillName:"Hyper-V",skill_group_id:other_catagory}
])
Project.create([
    {
        projectName:"Systems Administration",
        client:"KS Maguire Consulting",
        projectStartDate:Date.new(2009,1,1),
        projectEndDate:Date.new(2018,8,3),
        projectInfo:
        "<ul>"+
        "<li>Set up and maintained a server running Ubuntu 14.04 LTS - 16.04 LTS</li>"+
        "<li>Researched and implemented packages that automatically backup to a central location across Linux, macOS, & Windows machines on a network</li>"+
        "<li>Created tools to monitor and manage bandwidth of cloud-based backup system</li>"+
        "<li>Developed script to automatically update domain name for the server and network</li>"+
        "</ul>",
        current:false
    },
    {
        projectName:"Network Administration",
        client:"KS Maguire Consulting",
        projectStartDate:Date.new(2009,1,1),
        projectEndDate:Date.new(2018,8,3),
        projectInfo:
        "<ul>"+
        "<li>Designed a network for a maximum of 100 devices over a 2500 square foot office space</li>"+
        "<li>Developed a cost-benefit analysis to determine the best possible ISP</li>"+
        "<li>Analyzed overall & peak usage, storage, and component needs</li>"+
        "</ul>",
        current:false
    },
    {
        projectName:"Fitotron5000",
        client:"Personal",
        projectStartDate:nil,
        projectEndDate:nil,
        projectInfo:
        "<ul>"+
        "<li>Chat bot designed to help users lose weight and track their progress Written in C#</li>"+
        "<li>Stores user generated data in a MSSQL database</li>"+
        "<li>Processes and displays data for end usersd</li>"+
        "</ul>",
        current:true
    },
    {
        projectName:"Adafruit Ruby CharLCD",
        client:"Personal",
        projectStartDate:nil,
        projectEndDate:nil,
        projectInfo:
        "Port of Adafruit’s Character LCD Python library to a Ruby Gem",
        current:false
    },
    {
        projectName:"roboMegumin",
        client:"Personal",
        projectStartDate:nil,
        projectEndDate:nil,
        projectInfo:
        "
        Discord bot that engages with users by posting and editing images
        ",
        current:false
    },
    {
        projectName:"fileDB",
        client:"Personal",
        projectStartDate:nil,
        projectEndDate:nil,
        projectInfo:
        "
        Dynamic API file downloader and tagger
        ",
        current:false
    },
    {
        projectName:"YATDS (Yet Another Top Down Shooter)",
        client:"Personal",
        projectStartDate:nil,
        projectEndDate:nil,
        projectInfo:
        "
        A top down shooter game built using HTML Canvas that parses SVG as enemy paths
        ",
        current:false
    }
])
User.new(
    {
        provider:"google",
        uid:"100752728435918963245",
        name:"Nora Maguire",
        image_url:"https://lh3.googleusercontent.com/-LeJtcGC2mXs/AAAAAAAAAAI/AAAAAAAAAAc/DAHGqvpnlLM/s48-c/photo.jpg",
        admin:true
    }
)