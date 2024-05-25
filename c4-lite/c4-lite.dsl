workspace extends ../models/models.dsl {
    !impliedRelationships false

    views {
        systemlandscape "System_Landscape" "Extend System Landscape" {
            include *
            autolayout
        }

        container digitalOrdering "Container_Digital_Ordering_Platform" {
            include *
            autolayout
        }
    }
}
