<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  

<!-- Js files -->
<!-- JavaScript -->
<script src="js/jquery-2.2.3.min.js"></script>
<!-- Default-JavaScript-File -->
<script src="js/bootstrap.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap -->

<!-- smooth scrolling -->
<script src="js/SmoothScroll.min.js"></script>
<!-- //smooth scrolling -->

<!-- move-top -->
<script src="js/move-top.js"></script>
<!-- easing -->
<script src="js/easing.js"></script>
<!--  necessary snippets for few javascript files -->
<script src="js/coffee.js"></script>

<!-- //Js files -->
<!-- Default-JavaScript -->
<script src="js/jquery-2.2.3.js"></script>
<!-- Custom-JavaScript-File-Links -->

<!-- cart-js -->
<script src="js/minicart.min.js"></script>
<script>
    // Mini Cart
    paypal1.minicart1.render({ //use only unique class names other than paypal1.minicart1.Also Replace same class name in css and minicart.min.js
        action: '#'
    });

    if (~window.location.search.indexOf('reset=true')) {
        paypal1.minicart1.reset();
    }
    
</script>
<!-- //cart-js -->
