import { Component, OnInit, OnDestroy } from '@angular/core';
import { DataServiceService } from '../data-service.service';
import { Observable, Subscription } from 'rxjs';
import { Product } from '../models/product';
import { Cartdetail } from '../models/cartdetail';

@Component({
  selector: 'app-page-payment',
  templateUrl: './page-payment.component.html',
  styleUrls: ['./page-payment.component.css'],
})
export class PagePaymentComponent implements OnInit, OnDestroy {
  constructor(private service: DataServiceService) {}
  show1 = false;
  show2 = false;
  shipping;
  cart: Cartdetail;
  toyID = '';
  toys: Product[] = [];
  toy: Product;
  subscription: Subscription;
  ngOnInit(): void {
    this.shipping = this.service.shipping;
    this.service.currentSelectedID.subscribe((id) => {
      this.toyID = id;
      console.log(`toyId = ${id}`);
      this.service.getAllProduct().subscribe((toys) => {
        console.log(toys);
        this.toys = toys.filter((p) => p.toyID === this.toyID);
        this.toy = this.toys[0];
      });
    });
    this.service.currentCartDetail.subscribe((cart) => {
      this.cart = JSON.parse(cart);
    });
  }
  ngOnDestroy(): void {
    this.service.updateCartDetail(JSON.stringify(this.cart));
  }
  clickPayment(payOption: string): void {
    this.cart.paymentMethod = payOption;
  }
}
