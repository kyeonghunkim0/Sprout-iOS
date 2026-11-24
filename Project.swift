import ProjectDescription

let project = Project(
    name: "Sprout",
    targets: [
        .target(
            name: "Sprout",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.Sprout",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            buildableFolders: [
                "Sprout/Sources",
                "Sprout/Resources",
            ],
            dependencies: []
        ),
        .target(
            name: "SproutTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dev.tuist.SproutTests",
            infoPlist: .default,
            buildableFolders: [
                "Sprout/Tests"
            ],
            dependencies: [.target(name: "Sprout")]
        ),
    ]
)
