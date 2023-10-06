<%@ Page Title="" Language="C#" MasterPageFile="~/Room/Rooms.Master" AutoEventWireup="true" CodeBehind="DefaultRoom.aspx.cs" Inherits="Travel_With_Us.Room.DefaultRoom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <form runat="server">
     <section class="breadcumb-area bg-img d-flex align-items-center justify-content-center" style="background-image: url(img/bg-img/bg-6.jpg);">
        <div class="bradcumbContent">
            <h2>
         <asp:Label ID="roomname" runat="server" Text="Label"></asp:Label></h2>
        </div>
    </section>

    <!-- ##### Rooms Area Start ##### -->
    <section class="rooms-area section-padding-0-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-6">
                    <div class="section-heading text-center">
                        <div class="line-"></div>
                        <h2>Choose a room</h2>
                        <p>The biggest room in the world is the room for improvement.</p>
                    </div>
                </div>
            </div>

         

            <div class="row">

                <!-- Single Rooms Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-rooms-area wow fadeInUp" data-wow-delay="100ms">
                        <!-- Thumbnail -->
                        <div class="bg-thumbnail bg-img" style="background-image: url(img/bg-img/1.jpg);"></div>
                        <!-- Price -->
                        <p class="price-from">From $150/night</p>
                        <!-- Rooms Text -->
                        <div class="rooms-text">
                            <div class="line"></div>
                            <h4>Deluxe Room</h4>
                            <p>Duplex Villa with 2 bedromm and balcony with Sea view.</p>
                        </div>
                        <!-- Book Room -->
             <asp:Button ID="DeluxeRoom" runat="server" class="book-room-btn btn palatin-btn" OnClick="DeluxeRoom_Click" OnClientClick="showPopup(); return false;"  Text="Book Room" />
        
                       
                    </div>
                </div>

                <!-- Single Rooms Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-rooms-area wow fadeInUp" data-wow-delay="200ms">
                        <!-- Thumbnail -->
                        <div class="bg-thumbnail bg-img" style="background-image: url(img/bg-img/8.jpg);"></div>
                        <!-- Price -->
                        <p class="price-from">From $180/night</p>
                        <!-- Rooms Text -->
                        <div class="rooms-text">
                            <div class="line"></div>
                            <h4>Double Suite</h4>
                            <p>A Flat with 3 bedrooms and hall and bathrooms. With a Sea view Balcony</p>
                        </div>
                        <!-- Book Room -->
                        <asp:Button ID="DoubleSuite" runat="server" class="book-room-btn btn palatin-btn" OnClick="DoubleSuite_Click"  OnClientClick="showPopup(); return false;"  Text="Book Room" />
                    </div>
                </div>

                <!-- Single Rooms Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-rooms-area wow fadeInUp" data-wow-delay="300ms">
                        <!-- Thumbnail -->
                        <div class="bg-thumbnail bg-img" style="background-image: url(img/bg-img/9.jpg);"></div>
                        <!-- Price -->
                        <p class="price-from">From $100/night</p>
                        <!-- Rooms Text -->
                        <div class="rooms-text">
                            <div class="line"></div>
                            <h4>Single Room</h4>
                            <p>Single Bedroom with a hall and bathroom with balcony and Sea view.</p>
                        </div>
                        <!-- Book Room -->
                         <asp:Button ID="SingleRoom" runat="server" class="book-room-btn btn palatin-btn" OnClick="SingleRoom_Click"  OnClientClick="showPopup(); return false;"   Text="Book Room" />
                     
                    </div>
                </div>


            

            </div>
        </div>
    </section>
        </form>
<script type="text/javascript">
    function showPopup() {
        var w = 400;
        var h = 300;
        var left = (screen.width / 2) - (w / 2);
        var top = (screen.height / 2) - (h / 2);
        var popup  = window.open('popup.aspx', 'Popup', 'width=' + w + ',height=' + h + ',left=' + left + ',top=' + top);
    }
                    </script>
</asp:Content>
