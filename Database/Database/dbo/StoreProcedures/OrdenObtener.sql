CREATE PROCEDURE [dbo].[OrdenObtener]
  @IdOrden int= NULL
AS BEGIN
  SET NOCOUNT ON

  SELECT 
     O.IdOrden,
     O.IdProducto,
     O.CantidadProducto,
     O.Estado    
    FROM dbo.Orden O
    WHERE
    (@IdOrden IS NULL OR IdOrden=@IdOrden)

END