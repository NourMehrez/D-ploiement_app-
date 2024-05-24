resource "kubernetes_deployment" "app-book-info" {
  metadata {
    name = "app-book-info"
  }
 
  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "app-book-info"
      }
    }

    template {
      metadata {
        labels = {
          app = "app-book-info"
        }
      }

      spec {
        container {
          image = "bookinfo/examples-bookinfo-productpage-v1"

          name  = "app-book-info"

          port {
            container_port = 80
          }
        }
      }
    }
  }
}