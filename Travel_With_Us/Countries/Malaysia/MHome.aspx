<%@ Page Title="" Language="C#" MasterPageFile="~/Countries/Malaysia/Malaysia.Master" AutoEventWireup="true" CodeBehind="MHome.aspx.cs" Inherits="Travel_With_Us.Countries.Malaysia.MHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="about-main-content">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="content">
            <div class="blur-bg"></div>
            <h4>EXPLORE THE COUNTRY</h4>
            <div class="line-dec"></div>
            <h2>Welcome To Malaysia</h2>
            <p>A country located in Southeast Asia, known for its diverse culture, stunning natural landscapes, and delicious cuisine. With a mix of Malay, Chinese, Indian, and indigenous influences, Malaysia offers a unique and rich experience to visitors.</p>
       
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
              <h2>Malaysia <em>Cities &amp; Towns</em></h2>
            </div>
            <div class="col-lg-12">
              <div class="owl-cites-town owl-carousel">
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/KualaLumpur.jpg" alt="">
                    <h4>Kuala Lumpur</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Penang.jpg" alt="">
                    <h4>Penang</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Kuching.jpg" alt="">
                    <h4>Kuching</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/JohorBahru.jpg" alt="">
                    <h4>Johor Bahru</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/KotaKinabalu.jpg" alt="">
                    <h4>Kota Kinabalu</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/JohorBahru.jpg" alt="">
                    <h4>Johor Bahru</h4>
                  </div>
                </div>
              <div class="item">
                  <div class="thumb">
                    <img src="assets/images/KualaLumpur.jpg" alt="">
                    <h4>Kuala Lumpur</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/KotaKinabalu.jpg" alt="">
                    <h4>Kota Kinabalu</h4>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <img src="assets/images/Kuching.jpg" alt="">
                    <h4>Kuching</h4>
                  </div>
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
            <p>A country located in Southeast Asia, known for its diverse culture, stunning natural landscapes, and delicious cuisine. With a mix of Malay, Chinese, Indian, and indigenous influences, Malaysia offers a unique and rich experience to visitors.</p>

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
                <img src="assets/images/KkualaLumpur.jpg" alt="">
                <div class="text">
                  <h4>Kuala Lumpur<br><span><i class="fa fa-users"></i> 234 Check Ins</span></h4>
                  <h6>$5200<br><span>/person</span></h6>
                  <div class="line-dec"></div>
                  <ul>
                    <li>Deal Includes:</li>
                    <li><i class="fa fa-taxi"></i> 5 Days Trip > Hotel Included</li>
                    <li><i class="fa fa-plane"></i> Airplane Bill Included</li>
                    <li><i class="fa fa-building"></i> Daily Places Visit</li>
                  </ul>
                  <div class="main-button">
                       <asp:LinkButton ID="KualaLumpur" runat="server" OnClick="KualaLumpur_Click">Make a Reservation</asp:LinkButton>
                   
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="thumb">
                <img src="assets/images/Ppenang.jpg" alt="">
                <div class="text">
                  <h4>Penang<br><span><i class="fa fa-users"></i> 234 Check Ins</span></h4>
                  <h6>$4000<br><span>/person</span></h6>
                  <div class="line-dec"></div>
                  <ul>
                    <li>Deal Includes:</li>
                    <li><i class="fa fa-taxi"></i> 5 Days Trip > Hotel Included</li>
                    <li><i class="fa fa-plane"></i> Airplane Bill Included</li>
                    <li><i class="fa fa-building"></i> Daily Places Visit</li>
                  </ul>
                  <div class="main-button">
                       <asp:LinkButton ID="Penang" runat="server" OnClick="Penang_Click">Make a Reservation</asp:LinkButton>
                   
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="thumb">
                <img src="assets/images/Kkuching.jpg" alt="">
                <div class="text">
                  <h4>Kuching<br> <span><i class="fa fa-users"></i> 234 Check Ins</span></h4>
                  <h6>$5,000<br><span>/ person</span></h6>
                  <div class="line-dec"></div>
                  <ul>
                    <li>Deal Includes:</li>
                    <li><i class="fa fa-taxi"></i> 10 Days Trip > Hotel Included</li>
                    <li><i class="fa fa-plane"></i> Airplane Bill Included</li>
                    <li><i class="fa fa-building"></i> Daily Places Visit</li>
                  </ul>
                  <div class="main-button">
                       <asp:LinkButton ID="Kuching" runat="server" OnClick="Kuching_Click">Make a Reservation</asp:LinkButton>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="thumb">
                <img src="assets/images/JjohorBahru.jpg" alt="">
                <div class="text">
                  <h4>Johor Bahru<br><span><i class="fa fa-users"></i> 234 Check Ins</span></h4>
                  <h6>$6000<br><span>/person</span></h6>
                  <div class="line-dec"></div>
                  <ul>
                    <li>Deal Includes:</li>
                    <li><i class="fa fa-taxi"></i> 8 Days Trip > Hotel Included</li>
                    <li><i class="fa fa-plane"></i> Airplane Bill Included</li>
                    <li><i class="fa fa-building"></i> Daily Places Visit</li>
                  </ul>
                  <div class="main-button">
                         <asp:LinkButton ID="JohorBahru" runat="server" OnClick="JohorBahru_Click">Make a Reservation</asp:LinkButton>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="thumb">
                <img src="assets/images/KkotaKinabalu.jpg" alt="">
                <div class="text">
                  <h4>Kota Kinabalu<br><span><i class="fa fa-users"></i> 234 Check Ins</span></h4>
                  <h6>$4250<br><span>/person</span></h6>
                  <div class="line-dec"></div>
                  <ul>
                    <li>Deal Includes:</li>
                    <li><i class="fa fa-taxi"></i> 7 Days Trip > Hotel Included</li>
                    <li><i class="fa fa-plane"></i> Airplane Bill Included</li>
                    <li><i class="fa fa-building"></i> Daily Places Visit</li>
                  </ul>
                  <div class="main-button">
                       <asp:LinkButton ID="KotaKinabalu" runat="server" OnClick="KotaKinabalu_Click">Make a Reservation</asp:LinkButton>
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
