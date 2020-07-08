function getContextPath() {

	var hostIndex = location.href.indexOf( location.host ) + location.host.length;

	return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );

}

function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
