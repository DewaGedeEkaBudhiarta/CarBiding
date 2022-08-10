<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!--css bootstrap-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<!--css-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css" integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc=" crossorigin="anonymous" />

<!-- style -->
<style>
    .contactus{
        margin-top: 90px !important;
    }
    .text{
    	font-size: 20px !important;
    	font-style: Lucida Console !important;
    	font-weight: bold !important;
    }
</style>

    <title>contactUs</title>
</head>
<body class="bg-dark">

<!-- First Container -->
<div class="container contactus">
    <div class="jumbotron">

            <div class="row text-center">
                <h2>CONTACT </h2>
            </div>
            
            <div class="row">
                <div class="col-sm-5">
                    <p class="text">Contact us and we'll get back to you within 24 hours.</p>
                    <p class="text">
                        <span class="glyphicon glyphicon-map-marker"></span> Yangon, Myanmar
                    </p>
                    <p class="text">
                        <span class="glyphicon glyphicon-phone"></span> +95 1 123456
                    </p>
                    <p class="text">
                        <span class="glyphicon glyphicon-envelope"></span>
                        inquiry@cardeals.com
                    </p>
                </div>
                <div class="col-sm-7 slideanim">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="name" name="name"
                                placeholder="Name" type="text" required>
                        </div>
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="email" name="email"
                                placeholder="Email" type="email" required>
                        </div>
                    </div>
                    <textarea class="form-control" id="comments" name="comments"
                        placeholder="Comment" rows="5"></textarea>
                    <br>
                    <div class="row">
                        <div class="col-sm-12 form-group d-grid gap-2">
                            <button class="btn btn-primary pull-right" type="submit">Send</button>
                        </div>
                    </div>
                </div>
            </div>

    </div>
</div>
<!-- First Container End -->
      
      <!--js bootstrap-->
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>