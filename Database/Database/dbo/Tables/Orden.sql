CREATE TABLE [dbo].[Orden]
(
	IdOrden INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_Orden PRIMARY KEY CLUSTERED(IdOrden)
  , IdProducto INT NOT NULL CONSTRAINT FK_Producto_Orden FOREIGN KEY(IdProducto) REFERENCES dbo.Producto(IdProducto)
  , CantidadProducto INT NOT NULL
  , Estado BIT  NULL

)
