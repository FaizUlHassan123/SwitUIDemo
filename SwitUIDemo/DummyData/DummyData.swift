//
//  DummyData.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 26/07/2022.
//

import Foundation
import UIKit

class HomeDummuyData : NSObject{
    
    static var home_Data:[home] = [
        home(jobTitle: "Test Fill 1", jobExpertyCode: "Eco 550", industryCategory: "E-Commerce & Retail", numberOfEmployees: "LKess than 1.00", salaryRange: "$5.000 - $10,00", jobDescription: nil, timeAgo: "7 days ago"),
        home(jobTitle: "Test Fill 1", jobExpertyCode: "Eco 550", industryCategory: "E-Commerce & Retail", numberOfEmployees: "LKess than 1.00", salaryRange: "$5.000 - $10,00", jobDescription: "Vhhhh Guedfkhj", timeAgo: "7 days ago"),
        home(jobTitle: "Test Fill 1", jobExpertyCode: "Eco 550", industryCategory: "E-Commerce & Retail", numberOfEmployees: "LKess than 1.00", salaryRange: "$5.000 - $10,00", jobDescription: "This is decsription", timeAgo: "7 days ago"),
        home(jobTitle: "Test Fill 1", jobExpertyCode: "Eco 550", industryCategory: "E-Commerce & Retail", numberOfEmployees: "LKess than 1.00", salaryRange: "$5.000 - $10,00", jobDescription: nil, timeAgo: "7 days ago"),
        home(jobTitle: "Test Fill 1", jobExpertyCode: "Eco 550", industryCategory: "E-Commerce & Retail", numberOfEmployees: "LKess than 1.00", salaryRange: "$5.000 - $10,00", jobDescription: nil, timeAgo: "7 days ago"),
        home(jobTitle: "Test Fill 1", jobExpertyCode: "Eco 550", industryCategory: "E-Commerce & Retail", numberOfEmployees: "LKess than 1.00", salaryRange: "$5.000 - $10,00", jobDescription: nil, timeAgo: "7 days ago"),
        home(jobTitle: "Test Fill 1", jobExpertyCode: "Eco 550", industryCategory: "E-Commerce & Retail", numberOfEmployees: "LKess than 1.00", salaryRange: "$5.000 - $10,00", jobDescription: nil, timeAgo: "7 days ago"),
        home(jobTitle: "Test Fill 1", jobExpertyCode: "Eco 550", industryCategory: "E-Commerce & Retail", numberOfEmployees: "LKess than 1.00", salaryRange: "$5.000 - $10,00", jobDescription: nil, timeAgo: "7 days ago"),
        home(jobTitle: "Test Fill 1", jobExpertyCode: "Eco 550", industryCategory: "E-Commerce & Retail", numberOfEmployees: "LKess than 1.00", salaryRange: "$5.000 - $10,00", jobDescription: nil, timeAgo: "7 days ago"),
        home(jobTitle: "Test Fill 1", jobExpertyCode: "Eco 550", industryCategory: "E-Commerce & Retail", numberOfEmployees: "LKess than 1.00", salaryRange: "$5.000 - $10,00", jobDescription: "Vhhhh Guedfkhj", timeAgo: "7 days ago"),
        home(jobTitle: "Test Fill 1", jobExpertyCode: "Eco 550", industryCategory: "E-Commerce & Retail", numberOfEmployees: "LKess than 1.00", salaryRange: "$5.000 - $10,00", jobDescription: "This is decsription", timeAgo: "7 days ago"),
        home(jobTitle: "Test Fill 1", jobExpertyCode: "Eco 550", industryCategory: "E-Commerce & Retail", numberOfEmployees: "LKess than 1.00", salaryRange: "$5.000 - $10,00", jobDescription: nil, timeAgo: "7 days ago"),
        home(jobTitle: "Test Fill 1", jobExpertyCode: "Eco 550", industryCategory: "E-Commerce & Retail", numberOfEmployees: "LKess than 1.00", salaryRange: "$5.000 - $10,00", jobDescription: nil, timeAgo: "7 days ago"),
        home(jobTitle: "Test Fill 1", jobExpertyCode: "Eco 550", industryCategory: "E-Commerce & Retail", numberOfEmployees: "LKess than 1.00", salaryRange: "$5.000 - $10,00", jobDescription: nil, timeAgo: "7 days ago"),
        home(jobTitle: "Test Fill 1", jobExpertyCode: "Eco 550", industryCategory: "E-Commerce & Retail", numberOfEmployees: "LKess than 1.00", salaryRange: "$5.000 - $10,00", jobDescription: nil, timeAgo: "7 days ago"),
        home(jobTitle: "Test Fill 1", jobExpertyCode: "Eco 550", industryCategory: "E-Commerce & Retail", numberOfEmployees: "LKess than 1.00", salaryRange: "$5.000 - $10,00", jobDescription: nil, timeAgo: "7 days ago")]
    
}

struct home:Identifiable{
    var id = UUID()
    var jobTitle:String
    var jobExpertyCode:String
    var industryCategory:String
    var numberOfEmployees:String
    var salaryRange:String
    var jobDescription:String?
    var timeAgo:String
}

struct searchData : Identifiable , Hashable{
    
    var id = UUID()
    var img_name:String
    
}

class SearchDummuyData : NSObject{
    
    static var dData:[searchData] = [
        searchData(img_name: "p1"),
        searchData(img_name: "p2"),
        searchData(img_name: "p3"),
        searchData(img_name: "p4"),
        searchData(img_name: "p5"),
        searchData(img_name: "p6"),
        searchData(img_name: "p1"),
        searchData(img_name: "p2"),
        ]
    
}
