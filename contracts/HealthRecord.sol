// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract HealthRecords {

    struct Patients { 
    uint256 age;
    PatientsGender gender;
    string patientName;
    uint256 patientId;
    string admissionDate;
    string condition;
    bool discharged;
    }

    enum PatientsGender{
       Female,
       Male
    }

    Patients [] public patients;
    
    function registerPatients(uint256 _age, string calldata _patientName, PatientsGender _gender, uint256 _patientId, string calldata _admissionDate, string calldata _condition, bool _discharged) public {
        patients.push(Patients(_age, _gender,_patientName, _patientId, _admissionDate, _condition, _discharged));
    }


    // function retrievePatients() public view returns (uint256, string memory, PatientsGender,uint256, string memory){
    //     return ();
    // }
}
