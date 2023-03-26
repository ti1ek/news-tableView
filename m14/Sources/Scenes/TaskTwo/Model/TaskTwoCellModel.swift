//
//  TaskTwoCellModel.swift
//  m14
//
//  Created by Zhuldyz Bukeshova on 25.03.2023.
//

import Foundation

struct SectionNewsRecordModel {
    let title: Date
    let news: [NewsRecordWithDateModel]
}

struct NewsRecordModel {
    let title: String
    let publishedAt: String
}
 
struct NewsRecordWithDateModel {
    let title: String
    let publishedAt: Date
}


extension NewsRecordModel {
    
    static let models: [NewsRecordModel] = [
        NewsRecordModel(
            title: "Airbus Ventures invests in Tokyo-based ispace",
            publishedAt: "2021-10-25T11:23:09.000Z"
        ),
        NewsRecordModel(
            title: "SpaceX fires up first upgraded Starship engine",
            publishedAt: "2021-10-25T09:13:32.000Z"
        ),
        NewsRecordModel(
            title: "IAI announces new small GEO satellite bus",
            publishedAt: "2021-10-25T08:33:11.000Z"
        ),
        NewsRecordModel(
            title: "Here’s how SpaceX is (probably) going to refuel Starships in space",
            publishedAt: "2021-10-24T19:53:33.000Z"
        ),
        NewsRecordModel(
            title: "Chang Zheng 3B lifts Shijian 21 to orbit",
            publishedAt: "2021-10-24T18:26:25.000Z"
        ),
        NewsRecordModel(
            title: "BepiColombo completes first Mercury flyby, science provides insight into planet’s unique environment",
            publishedAt: "2021-10-24T17:22:02.000Z"
        ),
        NewsRecordModel(
            title: "China launches classified space debris mitigation technology satellite",
            publishedAt: "2021-10-24T10:23:11.000Z"
        ),
        NewsRecordModel(
            title: "Arianespace breaks payload mass record on final Ariane 5 launch before Webb",
            publishedAt: "2021-10-24T08:13:08.000Z"
        ),
        NewsRecordModel(
            title: "Conference seeks to build interest in space among elected officials",
            publishedAt: "2021-10-24T02:23:10.000Z"
        ),
        NewsRecordModel(
            title: "Ariane 5 launches civilian, military satellites; mission to clear way for James Webb launch",
            publishedAt: "2021-10-23T21:10:54.000Z"
        ),
        NewsRecordModel(
            title: "Under watchful eye of NASA, teams prep for final Ariane 5 flight before Webb",
            publishedAt: "2021-10-23T19:13:07.000Z"
        ),
        NewsRecordModel(
            title: "NASA sets Artemis 1 launch for no earlier than February",
            publishedAt: "2021-10-23T03:33:12.000Z"
        ),
        NewsRecordModel(
            title: "L3 Harris wins $120 million contract to upgrade Space Force electronic jammers",
            publishedAt: "2021-10-22T23:13:11.000Z"
        ),
        NewsRecordModel(
            title: "NASA targets February launch for Artemis 1 moon mission",
            publishedAt: "2021-10-22T20:33:07.000Z"
        ),
        NewsRecordModel(
            title: "NASA Commits $28 Million to Underfunded US Jurisdictions",
            publishedAt: "2021-10-22T20:23:00.000Z"
        ),
        NewsRecordModel(
            title: "Ship 20 completes milestone RVac Static Fire – Musk cites ambitious path to launch",
            publishedAt: "2021-10-22T20:09:14.000Z"
        ),
        NewsRecordModel(
            title: "China’s hypersonic vehicle test a ‘significant demonstration’ of space technology",
            publishedAt: "2021-10-22T19:23:10.000Z"
        ),
        NewsRecordModel(
            title: "Space Adventures no longer planning Crew Dragon flight",
            publishedAt: "2021-10-22T19:23:10.000Z"
        ),
        NewsRecordModel(
            title: "NASA Invites Media to Launch of IXPE Mission to Study X-rays in Space",
            publishedAt: "2021-10-22T18:33:00.000Z"
        ),
        NewsRecordModel(
            title: "Ariane 5 launch delayed for more ground systems checks",
            publishedAt: "2021-10-22T16:43:06.000Z"
        )
    ]
}
