CREATE PROCEDURE [dbo].[ProductoObtener]
      @IdProducto int= NULL
AS BEGIN
  SET NOCOUNT ON

  SELECT 
     P.IdProducto,
     P.NombreProdcuto,
     P.PrecioProdcuto    
    FROM dbo.Prodcuto P
    WHERE
    (@IdProducto IS NULL OR IdProducto=@IdProducto)

END