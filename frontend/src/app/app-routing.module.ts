import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { PageSearchComponent } from './page-search/page-search.component';
import { ProductDetailComponent } from './product-detail/product-detail.component';
import { ShoppingCartComponent } from './shopping-cart/shopping-cart.component';
import { ShippingAddressComponent } from './shipping-address/shipping-address.component';
import { PagePaymentComponent } from './page-payment/page-payment.component';
import { OrderSuccessComponent } from './order-success/order-success.component';

const routes: Routes = [
  { path: 'search', component: PageSearchComponent },
  { path: 'search/:id', component: ProductDetailComponent },
  { path: 'shopping-cart', component: ShoppingCartComponent },
  { path: 'shipping-address', component: ShippingAddressComponent },
  { path: 'payment', component: PagePaymentComponent },
  { path: 'order-success', component: OrderSuccessComponent },
  { path: '', redirectTo: '/search', pathMatch: 'full' },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
