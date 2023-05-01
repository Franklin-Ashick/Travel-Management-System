<%@ Page Title="" Language="C#" MasterPageFile="~/Countries/France/FranceHomepagemaster.Master" AutoEventWireup="true" CodeBehind="FranceHome.aspx.cs" Inherits="Travel_With_Us.Countries.France.FranceHome" %>
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
            <h2>Welcome To France</h2>
            <p>France: the hexagon, the country of the Enlightenment, the land of human rights. Many nicknames have been bestowed on this country, yet they do not even begin enough to cover all its aspects.</p>
   
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
              <h2>France’s <em>Cities &amp; Towns</em></h2>
            </div>
            <div class="col-lg-12">
              <div class="owl-cites-town owl-carousel">
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/pparis.jpg" alt="">
                    <h4>Paris</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Rouen.jpg" alt="">
                    <h4>Rouen</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Lyon.jpg" alt="">
                    <h4>Lyon</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Nice.jpg" alt="">
                    <h4>Nice</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Marseille.jpg" alt="">
                    <h4>Marseille</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Bordeaux.jpg" alt="">
                    <h4>Bordeaux</h4>
                  </div>
                </div>
              <div class="item">
                  <div class="thumb">
                    <img src="assets/images/pparis.jpg" alt="">
                    <h4>Paris</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Rouen.jpg" alt="">
                    <h4>Rouen</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Lyon.jpg" alt="">
                    <h4>Lyon</h4>
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
                <img src="assets/images/pparis.jpg" alt="">
                <div class="text">
                  <h4>Paris<br><span><i class="fa fa-users"></i> 234 Check Ins</span></h4>
                  <h6>$5200<br><span>/person</span></h6>
                  <div class="line-dec"></div>
                  <ul>
                    <li>Deal Includes:</li>
                    <li><i class="fa fa-taxi"></i> 5 Days Trip > Hotel Included</li>
                    <li><i class="fa fa-plane"></i> Airplane Bill Included</li>
                    <li><i class="fa fa-building"></i> Daily Places Visit</li>
                  </ul>
                  <div class="main-button">
                       <asp:LinkButton ID="par" runat="server" OnClick="par_Click">Make a Reservation</asp:LinkButton>
                   
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="thumb">
                <img src="assets/images/Lyon.jpg" alt="">
                <div class="text">
                  <h4>Lyon<br><span><i class="fa fa-users"></i> 234 Check Ins</span></h4>
                  <h6>$4000<br><span>/person</span></h6>
                  <div class="line-dec"></div>
                  <ul>
                    <li>Deal Includes:</li>
                    <li><i class="fa fa-taxi"></i> 5 Days Trip > Hotel Included</li>
                    <li><i class="fa fa-plane"></i> Airplane Bill Included</li>
                    <li><i class="fa fa-building"></i> Daily Places Visit</li>
                  </ul>
                  <div class="main-button">
                       <asp:LinkButton ID="lyon" runat="server" OnClick="lyon_Click">Make a Reservation</asp:LinkButton>
                   
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="thumb">
                <img src="assets/images/Bordeaux.jpg" alt="">
                <div class="text">
                  <h4>Bordeaux<br> <span><i class="fa fa-users"></i> 234 Check Ins</span></h4>
                  <h6>$5,000<br><span>/ person</span></h6>
                  <div class="line-dec"></div>
                  <ul>
                    <li>Deal Includes:</li>
                    <li><i class="fa fa-taxi"></i> 10 Days Trip > Hotel Included</li>
                    <li><i class="fa fa-plane"></i> Airplane Bill Included</li>
                    <li><i class="fa fa-building"></i> Daily Places Visit</li>
                  </ul>
                  <div class="main-button">
                       <asp:LinkButton ID="borf" runat="server" OnClick="borf_Click">Make a Reservation</asp:LinkButton>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="thumb">
                <img src="assets/images/Marseille.jpg" alt="">
                <div class="text">
                  <h4>Marseille<br><span><i class="fa fa-users"></i> 234 Check Ins</span></h4>
                  <h6>$6000<br><span>/person</span></h6>
                  <div class="line-dec"></div>
                  <ul>
                    <li>Deal Includes:</li>
                    <li><i class="fa fa-taxi"></i> 8 Days Trip > Hotel Included</li>
                    <li><i class="fa fa-plane"></i> Airplane Bill Included</li>
                    <li><i class="fa fa-building"></i> Daily Places Visit</li>
                  </ul>
                  <div class="main-button">
                         <asp:LinkButton ID="mars" runat="server" OnClick="mars_Click">Make a Reservation</asp:LinkButton>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="thumb">
                <img src="assets/images/Nice.jpg" alt="">
                <div class="text">
                  <h4>Nice<br><span><i class="fa fa-users"></i> 234 Check Ins</span></h4>
                  <h6>$4250<br><span>/person</span></h6>
                  <div class="line-dec"></div>
                  <ul>
                    <li>Deal Includes:</li>
                    <li><i class="fa fa-taxi"></i> 7 Days Trip > Hotel Included</li>
                    <li><i class="fa fa-plane"></i> Airplane Bill Included</li>
                    <li><i class="fa fa-building"></i> Daily Places Visit</li>
                  </ul>
                  <div class="main-button">
                       <asp:LinkButton ID="nice" runat="server" OnClick="nice_Click">Make a Reservation</asp:LinkButton>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="thumb">
                <img src="assets/images/offers-03.jpg" alt="">
                <div class="text">
                  <h4>Rouen<br><span><i class="fa fa-users"></i> 234 Check Ins</span></h4>
                  <h6>$4820<br><span>/person</span></h6>
                  <div class="line-dec"></div>
                  <ul>
                    <li>Deal Includes:</li>
                    <li><i class="fa fa-taxi"></i> 6 Days Trip > Hotel Included</li>
                    <li><i class="fa fa-plane"></i> Airplane Bill Included</li>
                    <li><i class="fa fa-building"></i> Daily Places Visit</li>
                  </ul>
                  <div class="main-button">
                       <asp:LinkButton ID="rouen" runat="server" OnClick="rouen_Click">Make a Reservation</asp:LinkButton>
                   
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
