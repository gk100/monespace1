<%@ include file = "header.jsp" %>



<div id="googleMap" style="margin-top:120px;"></div>
<!-- Add Google Maps -->
<script src="https://maps.googleapis.com/maps/api/js"></script>
<script>
var myCenter = new google.maps.LatLng(18.930325, 72.822543);

function initialize() {
var mapProp = {
center:myCenter,
zoom:12,
scrollwheel:false,
draggable:false,
mapTypeId:google.maps.MapTypeId.ROADMAP
};

var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({
position:myCenter,
});

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>


<div class="container" >

    <div class="page-header">
        <h1>Contact Us</h1>
    </div>
    
    <div class="well" style="min-height: 20px;
    				padding: 19px;
    				margin-bottom: 20px;
   					background-color: #337ab7;
    				border: 2px solid #080808;
    				border-radius: 10px;">
    				<h4>Have a question or comment? Fill out the following information and we will get back to you as soon as possible.</h4></div>
    
    <form class="form-horizontal" method="post" role="form">
    	<div class="form-group">
    		<label for="email" class="col-sm-2 control-label">E-mail</label>
    		<div class="col-sm-4">
    			<input type="email" class="form-control" id="email" name="email" placeholder="E-mail Address" required autofocus>
    		</div>
    	</div>
    	
    	<div class="form-group">
    		<label for="name" class="col-sm-2 control-label">Name</label>
    		<div class="col-sm-4">
    			<input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
    		</div>
    	</div>
    	
    	<div class="form-group">
    		<label for="name" class="col-sm-2 control-label">Message</label>
    		<div class="col-sm-6">
    			<textarea id="message" name="message" class="form-control" placeholder="Your Message" rows="5" required></textarea>
    		</div>
    	</div>
    
    	<div class="form-group">
    		<div class="col-sm-offset-2 col-sm-6">
    			<button type="submit" class="btn btn-lg btn-primary" style="line-height:0;">Send Message</button>
    		</div>
    	</div>
    </form>

</div>



<%@ include file="footer.jsp"%>