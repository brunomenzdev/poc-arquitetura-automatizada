workspace {

    model {
        user = person "Usuário" "Um usuário do sistema que realiza pedidos."
        
        softwareSystem = softwareSystem "LivingDoc System" "Sistema de exemplo para documentação viva." {
            api = container "Web API" "API desenvolvida em .NET 8." "ASP.NET Core"
            db = container "Database" "Armazena dados de usuários e pedidos." "PostgreSQL" "Database"
        }

        user -> api "Faz requisições para" "HTTPS"
        api -> db "Lê e escreve dados em" "EF Core"
    }

    views {
        systemContext softwareSystem "SystemContext" {
            include *
            autolayout lr
        }

        container softwareSystem "Containers" {
            include *
            autolayout lr
        }

        styles {
            element "Software System" {
                background #1168bd
                color #ffffff
            }
            element "Person" {
                shape Person
                background #08427b
                color #ffffff
            }
            element "Container" {
                background #438dd5
                color #ffffff
            }
            element "Database" {
                shape Cylinder
            }
        }
    }
}
