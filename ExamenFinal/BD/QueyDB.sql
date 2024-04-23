USE [master]
GO
/****** Object:  Database [WalterDB]    Script Date: 22/4/2024 23:53:15 ******/
CREATE DATABASE [WalterDB]
ALTER DATABASE [WalterDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WalterDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WalterDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WalterDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WalterDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WalterDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WalterDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [WalterDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WalterDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WalterDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WalterDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WalterDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WalterDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WalterDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WalterDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WalterDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WalterDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WalterDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WalterDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WalterDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WalterDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WalterDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WalterDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WalterDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WalterDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WalterDB] SET  MULTI_USER 
GO
ALTER DATABASE [WalterDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WalterDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WalterDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WalterDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WalterDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WalterDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WalterDB] SET QUERY_STORE = OFF
GO
USE [WalterDB]
GO
/****** Object:  Table [dbo].[Agentes]    Script Date: 22/4/2024 23:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agentes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Telefono] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casas]    Script Date: 22/4/2024 23:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Direccion] [varchar](100) NULL,
	[Ciudad] [varchar](50) NULL,
	[Precio] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 22/4/2024 23:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Telefono] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 22/4/2024 23:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Agente] [int] NULL,
	[ID_Cliente] [int] NULL,
	[ID_Casa] [int] NULL,
	[Fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([ID_Agente])
REFERENCES [dbo].[Agentes] ([ID])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([ID_Casa])
REFERENCES [dbo].[Casas] ([ID])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([ID_Cliente])
REFERENCES [dbo].[Clientes] ([ID])
GO
/****** Object:  StoredProcedure [dbo].[GestionarAgentes]    Script Date: 22/4/2024 23:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GestionarAgentes]
    @accion NVARCHAR(20),
    @agente_id INT = NULL,
    @agente_nombre NVARCHAR(50) = NULL,
    @agente_email NVARCHAR(100) = NULL,
    @agente_telefono NVARCHAR(20) = NULL	
AS
BEGIN
    IF @accion = 'agregar'
    BEGIN
        INSERT INTO Agentes (Nombre, Email, Telefono) VALUES (@agente_nombre, @agente_email, @agente_telefono);
    END
    ELSE IF @accion = 'borrar'
    BEGIN
        DELETE FROM Agentes WHERE ID = @agente_id;
    END
    ELSE IF @accion = 'modificar'
    BEGIN
        UPDATE Agentes SET 
            Nombre = @agente_nombre,
            Email = @agente_email,
            Telefono = @agente_telefono
        WHERE ID = @agente_id;
    END
    ELSE IF @accion = 'consultar'
    BEGIN
        SELECT * FROM Agentes;
    END
	ELSE
    BEGIN
        SELECT 'Acción no válida';
    END
END

GO
/****** Object:  StoredProcedure [dbo].[GestionarClientes]    Script Date: 22/4/2024 23:53:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GestionarClientes]
    @accion NVARCHAR(10),
    @cliente_id INT = NULL,
    @cliente_nombre NVARCHAR(50) = NULL,
    @cliente_email NVARCHAR(100) = NULL,
    @cliente_telefono NVARCHAR(20) = NULL
AS
BEGIN
    IF @accion = 'agregar'
    BEGIN
        INSERT INTO Clientes (Nombre, Email, Telefono) VALUES (@cliente_nombre, @cliente_email, @cliente_telefono);
    END
    ELSE IF @accion = 'borrar'
    BEGIN
        DELETE FROM Clientes WHERE ID = @cliente_id;
    END
    ELSE IF @accion = 'modificar'
    BEGIN
        UPDATE Clientes SET 
            Nombre = @cliente_nombre,
            Email = @cliente_email,
            Telefono = @cliente_telefono
        WHERE ID = @cliente_id;
    END
    ELSE IF @accion = 'consultar'
    BEGIN
        SELECT * FROM Clientes;
    END
    ELSE
    BEGIN
        SELECT 'Acción no válida';
    END
END

GO
USE [master]
GO
ALTER DATABASE [WalterDB] SET  READ_WRITE 
GO

use 


select * from Clientes