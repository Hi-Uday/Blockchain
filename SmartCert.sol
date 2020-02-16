# Codes
Here I put some codes related to my projects and researches.. please use and 


This the solidity code for creating smart certificate using ether wallet and ganache
pragma solidity >0.4.22 <0.6.0;
 
 
 contract University
{
    struct University_Details
    {
        string U_Name;
        string Exam_conducted;
        string Year_with_Session;
    }
    University_Details[] public University;
    
    function Add_University_Details(address investor,string memory _U_Name,
    string memory _Exam_conducted,string memory Year_with_Session) public returns(uint)
    {
        University.length++;
        University[University.length-1].U_Name=_U_Name;
        University[University.length-1].Exam_conducted=_Exam_conducted;
        University[University.length-1].Year_with_Session=Year_with_Session;
        return University.length;
        }

    function get_University_Details(uint index) public view returns(string memory, string memory,string memory)
    {
        return(University[index].U_Name,University[index].Exam_conducted,University[index].Year_with_Session);
    }
}
 
contract Student is University
{
    struct Student_Details
    {
        string name;
        string Paper_given;
        uint YearOfPassing;
    }
    Student_Details[] public Stud;
    
    function Add_Student_Details(address investor,string memory _name,
    string memory _Paper_given,uint _YearOfPassing) public returns(uint)
    {
        Stud.length++;
        Stud[Stud.length-1].name=_name;
        Stud[Stud.length-1].Paper_given=_Paper_given;
        Stud[Stud.length-1].YearOfPassing=_YearOfPassing;
        return Stud.length;
        }

    function get_Student__Details(uint index) public view returns(string memory, string memory,uint)
    {
        return(Stud[index].name,Stud[index].Paper_given,Stud[index].YearOfPassing);
    }
}



contract Certificate is Student{
    
    uint private Roll_No;
    uint private Enroll_No;
    string public Mother_Name;
    uint public Secret_Key;

    mapping(address => uint) _Roll_No;
    mapping(address => string) _Mother_Name;
    mapping(address => uint) _Secret_Key;
    mapping(address => uint) _Enroll_No;


     function set_Enrollment_No(address investor, uint _Enroll_No) public
    {

        if(_Enroll_No!=Enroll_No)
        {
            Enroll_No=_Enroll_No;
        }
        
    }
    
    function set_RollNo(address investor,uint _Roll_No) public
    {
        if (_Roll_No!=Roll_No) {
            Roll_No=_Roll_No;
        }
    }
    function set_MotherName(address investor,string memory _Mother_Name) public
    {
        Mother_Name=_Mother_Name;
    }
    function set_SecretKey(address investor, uint _Secret_Key) public
    {

        if(_Secret_Key!=Secret_Key)
        {
            Secret_Key=_Secret_Key;
        }
        
    }

}
