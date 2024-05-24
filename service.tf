resource "kubernetes_service" "jenkins_x" {
  metadata {
    name = "app-book-info"
  }

  spec {
    selector = {
      app = "app-book-info"
    }

    port {
      port        = 80
      target_port = 9080
    }
    type = "LoadBalancer"
  }
}