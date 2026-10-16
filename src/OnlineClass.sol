// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract OnlineClass {
    uint256 public solCoursePrice = 0.4 ether;
    uint256 public jsCoursePrice = 0.4 ether;
    uint256 public rustCoursePrice = 0.4 ether;

    enum AvailableClasses {
        Solidity,
        Javascript,
        Rust
    }

    struct Student {
        string name;
        address student;
        uint256 regId;
        uint256 refCode;
        string courseRegistered;
    }

    struct AffiliateRequest {
        uint256 regId;
        address paymentWallet;
        AvailableClasses courseRegistered;
        bool payPerReg;
    }

    struct AffiliateApproved {
        uint256 regId;
        uint256 refCode;
        bool approved;
    }
    mapping(uint256 => Student) public students;
    mapping(uint256 => AffiliateRequest) public affiliateRequest;
    mapping(uint256 => AffiliateApproved) public affiliateApproved;
    mapping(uint256 refCode => uint256 regId) public affiliateRegId;
}
