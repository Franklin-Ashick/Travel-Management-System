<%@ Page Title="" Language="C#" MasterPageFile="~/Countries/Japan/japan.Master" AutoEventWireup="true" CodeBehind="JapanHome.aspx.cs" Inherits="Travel_With_Us.Countries.Japan.JapanHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- ***** Main Banner Area Start ***** -->
  <div class="about-main-content">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="content">
            <div class="blur-bg"></div>
            <h4>EXPLORE THE COUNTRY</h4>
            <div class="line-dec"></div>
            <h2>Welcome To Japan</h2>
            <p>Japan: a country of contrasts, where ancient traditions blend with modern technology. From the bustling metropolis of Tokyo to the serene temples of Kyoto, Japan offers a wealth of experiences for travelers.</p>
   
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- ***** Main Banner Area End ***** -->
  
  <div class="cities-town">
    <div class="container">
      <div class="row">
        <div class="slider-content">
          <div class="row">
            <div class="col-lg-12">
              <h2>Japan’s <em>Cities &amp; Towns</em></h2>
            </div>
            <div class="col-lg-12">
              <div class="owl-cites-town owl-carousel">
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Tokyo.jpg" alt="">
                    <h4>Tokyo</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Kyoto.jpg" alt="">
                    <h4>Kyoto</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Hiroshima.jpg" alt="">
                    <h4>Hiroshima</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Nagoya.jpg" alt="">
                    <h4>Nagoya</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Osaka.jpg" alt="">
                    <h4>Osaka</h4>
                  </div>
                </div>
              <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Kyoto.jpg" alt="">
                    <h4>Kyoto</h4>
                  </div>
                </div>
                   <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Tokyo.jpg" alt="">
                    <h4>Tokyo</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Hiroshima.jpg" alt="">
                    <h4>Hiroshima</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Nagoya.jpg" alt="">
                    <h4>Nagoya</h4>
                  </div>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
    <div class="weekly-offers">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 offset-lg-3">
          <div class="section-heading text-center">
            <h2>Best Weekly Offers In Each City</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12">
          <div class="owl-weekly-offers owl-carousel">
            <div class="item">
              <div class="thumb">
                <img src="assets/images/Ttokyo.jpg" alt="">
                <div class="text">
                  <h4>Tokyo<br><span><i class="fa fa-users"></i> 234 Check Ins</span></h4>
                  <h6>$3200<br><span>/person</span></h6>
                  <div class="line-dec"></div>
                  <ul>
                    <li>Deal Includes:</li>
                    <li><i class="fa fa-taxi"></i> 5 Days Trip > Hotel Included</li>
                    <li><i class="fa fa-plane"></i> Airplane Bill Included</li>
                    <li><i class="fa fa-building"></i> Daily Places Visit</li>
                  </ul>
                  <div class="main-button">
                       <asp:LinkButton ID="Tokyo" runat="server" OnClick="Tokyo_Click">Make a Reservation</asp:LinkButton>
                   
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="thumb">
                <img src="assets/images/Kkyoto.jpg" alt="">
                <div class="text">
                  <h4>Kyoto<br><span><i class="fa fa-users"></i> 234 Check Ins</span></h4>
                  <h6>$2000<br><span>/person</span></h6>
                  <div class="line-dec"></div>
                  <ul>
                    <li>Deal Includes:</li>
                    <li><i class="fa fa-taxi"></i> 5 Days Trip > Hotel Included</li>
                    <li><i class="fa fa-plane"></i> Airplane Bill Included</li>
                    <li><i class="fa fa-building"></i> Daily Places Visit</li>
                  </ul>
                  <div class="main-button">
                       <asp:LinkButton ID="Kyoto" runat="server" OnClick="Kyoto_Click">Make a Reservation</asp:LinkButton>
                   
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="thumb">
                <img src="assets/images/Hhiroshima.jpg" alt="">
                <div class="text">
                  <h4>Hiroshima<br> <span><i class="fa fa-users"></i> 234 Check Ins</span></h4>
                  <h6>$2500<br><span>/ person</span></h6>
                  <div class="line-dec"></div>
                  <ul>
                    <li>Deal Includes:</li>
                    <li><i class="fa fa-taxi"></i> 10 Days Trip > Hotel Included</li>
                    <li><i class="fa fa-plane"></i> Airplane Bill Included</li>
                    <li><i class="fa fa-building"></i> Daily Places Visit</li>
                  </ul>
                  <div class="main-button">
                       <asp:LinkButton ID="Hiroshima" runat="server" OnClick="Hiroshima_Click">Make a Reservation</asp:LinkButton>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="thumb">
                <img src="assets/images/Nnagoya.jpg" alt="">
                <div class="text">
                  <h4>Nagoya<br><span><i class="fa fa-users"></i> 234 Check Ins</span></h4>
                  <h6>$3000<br><span>/person</span></h6>
                  <div class="line-dec"></div>
                  <ul>
                    <li>Deal Includes:</li>
                    <li><i class="fa fa-taxi"></i> 8 Days Trip > Hotel Included</li>
                    <li><i class="fa fa-plane"></i> Airplane Bill Included</li>
                    <li><i class="fa fa-building"></i> Daily Places Visit</li>
                  </ul>
                  <div class="main-button">
                         <asp:LinkButton ID="Nagoya" runat="server" OnClick="Nagoya_Click">Make a Reservation</asp:LinkButton>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="thumb">
                <img src="assets/images/Oosaka.jpg" alt="">
                <div class="text">
                  <h4>Osaka<br><span><i class="fa fa-users"></i> 234 Check Ins</span></h4>
                  <h6>$3500<br><span>/person</span></h6>
                  <div class="line-dec"></div>
                  <ul>
                    <li>Deal Includes:</li>
                    <li><i class="fa fa-taxi"></i> 7 Days Trip > Hotel Included</li>
                    <li><i class="fa fa-plane"></i> Airplane Bill Included</li>
                    <li><i class="fa fa-building"></i> Daily Places Visit</li>
                  </ul>
                  <div class="main-button">
                       <asp:LinkButton ID="Osaka" runat="server" OnClick="Osaka_Click">Make a Reservation</asp:LinkButton>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
    <div class="call-to-action">
    <div class="container">
      <div class="row">
        <div class="col-lg-8">
          <h2>Are You Looking To Travel ?</h2>
          <h4>Make A Reservation By Clicking The Button</h4>
        </div>
        <div class="col-lg-4">
          <div class="border-button">
            <a href="reservation.html">Book Yours Now</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
