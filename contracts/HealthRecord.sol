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

    Patients [] internal patients;
    
    function registerPatients(uint256 _age, string memory _patientName, PatientsGender _gender, uint256 _patientId, string memory _admissionDate, string memory _condition, bool _discharged) public {
        patients.push(Patients(_age, _gender,_patientName, _patientId, _admissionDate, _condition, _discharged));
    }


    function retrievePatients(uint _index) public view returns (uint256, string memory, PatientsGender,uint256, string memory,bool){
        Patients storage patient = patients[_index];
        return (patient.age, patient.patientName, patient.gender,patient.patientId,patient.admissionDate,patient.discharged);
    }
}
