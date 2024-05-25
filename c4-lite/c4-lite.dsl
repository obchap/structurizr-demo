workspace extends ../models/models.dsl {
    # This does not work as I hoped it would
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
