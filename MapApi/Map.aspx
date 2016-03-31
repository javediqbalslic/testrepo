<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="MapApi.Map" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body onload ="initMap();">
    <form id="form1" runat="server">
    <div>
        <div id="Mapdiv"style="width:100%;height:650px;"></div>
         </div>
    

   
    </form>
      <script src="https://maps.googleapis.com/maps/api/js?key= AIzaSyCBQST98t-4_rqTLlv7e4athJKeiJyyWJk "
    async defer></script>
    <script type="text/javascript">
    var gMap=null;
    var Marker=null;
    function initMap()
    {
    try{
    var LatLog={lat:31.475543,lng:74.342154};
    gMap  = new google.maps.Map(document.getElementById('Mapdiv'), {center: LatLog , zoom:14});
    Marker = new google.maps.Marker({
    
    position: LatLog,
    map:gMap,
    title:'This is a test Marker',
    draggable:true,
    animation:google.map.Animation.DROP});
    
    }catch(e)
    {
    }
    }
  </script>
</body>
</html>