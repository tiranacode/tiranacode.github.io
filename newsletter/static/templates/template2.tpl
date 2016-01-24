<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"> <!-- So that mobile will display zoomed in -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> <!-- enable media queries for windows phone 8 -->
    <meta name="format-detection" content="telephone=no"> <!-- disable auto telephone linking in iOS -->
    <title>Newsletter_Template</title>
    <link href='https://fonts.googleapis.com/css?family=Source+Code+Pro|Roboto:400,700' rel='stylesheet' type='text/css'>
    
    <style type="text/css">
    
    body {
    margin: 0;
    padding: 0;
    -ms-text-size-adjust: 100%;
    -webkit-text-size-adjust: 100%;
    }
    
    table {
    border-spacing: 0;
    }
    
    table td {
    border-collapse: collapse;
    }
    
    .ExternalClass {
    width: 100%;
    }
    
    table a{
    color: #343434;
    text-decoration: none;
    }
    
    table hr{
    size: 1px;
    width: 50%;
    background-color: #A0A0A0;
    }
    
    .tags{
    margin-top: -5px;
    font-size: 12px;
    color:#A2A2A2;
    font-family: "Source Code Pro";
    }
    
    .intro-section{
    padding-bottom: 12px;
    color: #ffffff;
    padding-left: 24px;
    padding-right: 24px;
    background-color: #666666;
    }
    
    .intro-title{
    font-family: 'Roboto', sans-serif;
    color: #fff;
    font-size: 17px;
    font-weight: 400;
    }
    
    .intro-message{
    font-family: 'Roboto', sans-serif;
    color: #fff;
    font-size: 13px;
    font-weight: 400;
    }
    
    .article-title a{
    font-family: 'Roboto', sans-serif;
    color: #333333;
    font-size: 18px;
    font-weight: 700;
    margin: 0;
    }
    
    .article-description p{
    font-family: 'Roboto', sans-serif;
    color: #444444;
    font-size: 14px;
    margin: 0;
    margin-top: -10px;
    }
    
    .ExternalClass,
    .ExternalClass p,
    .ExternalClass span,
    .ExternalClass font,
    .ExternalClass td,
    .ExternalClass div {
    line-height: 100%;
    }
    
    .ReadMsgBody {
    width: 100%;
    background-color: #ebebeb;
    }
    
    table {
    mso-table-lspace: 0pt;
    mso-table-rspace: 0pt;
    }<!-- INTRO --> 
    
    img {
    -ms-interpolation-mode: bicubic;
    }
    .yshortcuts a {
    border-bottom: none !important;
    }
    
    @media screen and (max-width: 599px) {
    .force-row,
    .container {
    width: 100% !important;
    max-width: 100% !important;
    }
    }
    
    @media screen and (max-width: 400px) {
    .container-padding {
    padding-left: 12px !important;
    padding-right: 12px !important;
    }
    }
    
    .ios-footer a {
    color: #aaaaaa !important;
    text-decoration: underline;
    }
    </style>
  </head>




 <body style="margin:0; padding:0;" bgcolor="#F0F0F0" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <!-- 100% background wrapper (grey background) -->
    <table border="0" width="100%" height="100%" cellpadding="0" cellspacing="0" bgcolor="#F0F0F0">
      <tr>
        <td align="center" valign="top" bgcolor="#F0F0F0" style="background-color: #F0F0F0;">
          <!-- 600px container (white background) -->
          <table border="0" width="600" cellpadding="0" cellspacing="0" class="container" style="width:600px;max-width:600px">
            <tr>
              <td class="container-padding header" align="left" style="font-family: Source Code Pro, Roboto, sans-serif;font-size:24px;padding-bottom:12px;color:#ffffff;padding-left:24px;padding-right:24px; background-color:#333333">
                <br>
                <a href="http://tiranacode.github.io" style="color:#ff6b33">> tirana code_</a> Newsletter #{{newsletter.issue}}
                <br>
              </td>
            </tr>
            <tr>

<!-- INTRO --> 
              <td class="container-padding intro-section" align="left">
                <br>
                <p class="intro-title">{{newsletter.title}}</h3>
                  <p class="intro-message">{{newsletter.desc}}</p>
                  <br>
                </td>
              </tr>
<!-- INTRO --> 


<!-- CONTENT -->
              <tr>
                <td class="container-padding content" align="left" style="padding-left:24px;padding-right:24px;padding-top:12px;padding-bottom:20px;background-color:#ffffff">
                  <br>

                {% for article in newsletter.articles %}

<!-- ARTIKULLI -->
                  <hr align="left">
                  <p class="tags"> {% for tag in article.tags %} #{{tag}} {% endfor %} </p>
                  <div class="article-title">
                    <a href="#" target="_blank"> {{article.title}} </a>
                  </div>
                  <br>
                  <div class="article-description">
                    <p>{{article.desc}}</p>
                    <br><br>
                  </div>
<!-- ARTIKULLI-->
				{% endfor %}
				
                </td>
              </tr>

<!-- CONTENT -->


<!-- FOOTER -->
              <tr>
                <td class="container-padding footer-text" align="left" style="font-family: Roboto, sans-serif;font-size:12px;line-height:16px;color:#aaaaaa;padding-left:24px;padding-right:24px; background-color:#333333">
                  <br>
                  © 2016 <a href="http://tiranacode.github.io"  target="_blank" style="color:#aaaaaa; text-decoration:underline">Tirana Code</a>. Na ndiqni ne <a href="http://www.facebook.com/tiranacode/" target="_blank" style="color:#aaaaaa; text-decoration:underline"> Facebook </a>
                  <br>
                  <br>
                  Ju po e merrni kete email sepse jeni abonuar ne email-in e perjavshem te Tirana Code. Ndryshoni <a href="*|UPDATE_PROFILE|*" style="color:#aaaaaa; text-decoration:underline">email preferences</a> ose <a href="*|UNSUB|*" style="color:#aaaaaa; text-decoration:underline">unsubscribe</a>.
                  <br><br>
<!-- FOOTER -->



                </td>
              </tr>
            </table>
            <!--/600px container -->
          </td>
        </tr>
      </table>
      <!--/100% background wrapper-->

    </body>
  </html>