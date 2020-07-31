import { Component, OnInit, OnDestroy } from '@angular/core';
import { DataServiceService } from '../data-service.service';
import { Observable, Subscription } from 'rxjs';
import { Product } from '../models/product';
import { Cartdetail } from '../models/cartdetail';

@Component({
  selector: 'app-shopping-cart',
  templateUrl: './shopping-cart.component.html',
  styleUrls: ['./shopping-cart.component.css'],
})
export class ShoppingCartComponent implements OnInit, OnDestroy {
  constructor(private service: DataServiceService) {}

  cart: Cartdetail;
  toyID = '';
  toys: Product[] = [];
  toy: Product;
  subscription: Subscription;
  ngOnInit(): void {
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
    this.cart.shippingMethod = 'EMS';
  }
  ngOnDestroy(): void {
    this.service.updateCartDetail(JSON.stringify(this.cart));
  }
}
