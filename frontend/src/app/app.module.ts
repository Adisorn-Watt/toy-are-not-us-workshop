import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { PageSearchComponent } from './page-search/page-search.component';
import { ProductDetailComponent } from './product-detail/product-detail.component';
import { ShoppingCartComponent } from './shopping-cart/shopping-cart.component';
import { ShippingAddressComponent } from './shipping-address/shipping-address.component';
import { PagePaymentComponent } from './page-payment/page-payment.component';
import { OrderSuccessComponent } from './order-success/order-success.component';

@NgModule({
  declarations: [
    AppComponent,
    PageSearchComponent,
    ProductDetailComponent,
    ShoppingCartComponent,
    ShippingAddressComponent,
    PagePaymentComponent,
    OrderSuccessComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
