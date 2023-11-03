// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract HealthRecords {

    uint256 public age;
    string public gender;
    string public patientName;
    uint256 patientId;
    string admissionDate;
    uint256 internal dischargeDate;
    string private condition;

    
    function store(uint256 _age,string memory name,string memory _gender, uint256 _patientId, string memory _admissionDate, string memory _condition) public {
        age = _age;
        patientName = name;
        gender = _gender;
        patientId = _patientId;
        admissionDate = _admissionDate;
        condition = _condition;
    }


    function retrieve() public view returns (uint256, string memory, string memory,uint256, string memory){
        return (age,patientName,gender,patientId,admissionDate);
    }
}
