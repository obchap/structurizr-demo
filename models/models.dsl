workspace "Extends Example" {
    description "Create the base model and relationships"

    model {
        customer = person "Customer"

        digitalOrdering = softwareSystem "Digital Ordering" {
            nativeApp = container "Native App" {
                tags "nativeApp"
            }
            api = container "App API"
            notificationService = container "Notification Service"
        }

        customerEngagement = softwareSystem "Customer Engagement" {
            notificationVendor = container "Push Notification Vendor"

            tags "vendor"
        }

        customer -> nativeApp "Places order to"
        nativeApp -> api "Sends request to"
        api -> notificationService "Sends order status to"

        notificationService -> notificationVendor "Sends notification data to"
        notificationVendor -> nativeApp "Sends notification to"
    }

    views {
        styles {
            element "Person" {
                shape Person
            }
            element "nativeApp" {
                shape MobileDevicePortrait
            }
            element "vendor" {
                shape Hexagon
            }
        }
    }
}
