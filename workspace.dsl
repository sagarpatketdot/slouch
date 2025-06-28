workspace "Slouch" "The next-gen developer collaboration platform" {
  !adrs doc/adr adrtools

  model {
      // Slouch
      user = person "End User"
      slouch = softwareSystem "Slouch" {
        spa = container "Slouch Web" "Single Page Application" "TanStack" {
          tags "browser"
        }
        ios = container "Slouch App iOS" "Mobile Application for iPhone" "iOS" {
          tags "mobile-device"
        }
        android = container "Slouch App Android" "Mobile Application for Android" "Android" {
          tags "mobile-device"
        }
        desktop = container "Slouch Desktop" "Desktop Application for Windows/MacOS/Linux" "Electron" {
          tags "application"
        }
        gateway = container "API Gateway" "API Gateway providing service registry" "Istio"
        user -> spa "Uses" "https"
        user -> ios "Uses" "iOS"
        user -> android "Uses" "android"
        user -> desktop "Uses" "electron"
        spa -> gateway "Uses" "https"
        ios -> gateway "Uses" "https"
        android -> gateway "Uses" "https"
        desktop -> gateway "Uses" "https"

        idp = container "Slouch Identity Provider" "Federated Identity Provider" "Keycloak"
        api = container "Core API" "Slouch API Core" "SpringBoot"
        api_datastore = container "Core Datastore" "Column Database" "Cassandra" "datastore"
        idp_datastore = container "IDP Datastore" "SQL Database" "PostgreSQL" "datastore"
        gateway -> idp "Routes"
        gateway -> api "Routes"
        idp -> idp_datastore "Uses"
        api -> api_datastore "Uses"
      }
      

      // Marketplace
      app_dev = person "Slouch Apps Developer"
      marketplace = softwareSystem "Slouch Marketplace"
      integration_app = softwareSystem "Slouch Integration App"
    
      app_dev -> integration_app "Maintains"
      app_dev -> marketplace "Publishes Integrations to" "https"
      user -> marketplace "Installs Integrations from"
  }

  views {
    systemLandscape Landscape {
      include *
      autoLayout
    }

    systemContext slouch {
      include *
      autoLayout
    }

    systemContext marketplace {
      include *
      autoLayout
    }

    container slouch {
      include *
      autoLayout lr
    }

    styles {
      element "Element" {
        background #89CE94
      }

      element "Person" {
        shape person
      }

      element "mobile-device" {
        shape MobileDevicePortrait
      }

      element "browser" {
        shape WebBrowser
      }

      element "application" {
        shape WebBrowser
      }

      element "datastore" {
        shape Cylinder
      }
    }
  }
}
