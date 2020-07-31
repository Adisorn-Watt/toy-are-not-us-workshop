import { Component, OnInit, OnDestroy } from '@angular/core';
import { DataServiceService } from '../data-service.service';
import { Observable, Subscription } from 'rxjs';
import { Product } from '../models/product';
import { Cartdetail } from '../models/cartdetail';

@Component({
  selector: 'app-order-success',
  templateUrl: './order-success.component.html',
  styleUrls: ['./order-success.component.css'],
})
export class OrderSuccessComponent implements OnInit {
  constructor(private service: DataServiceService) {}
  shipping;
  cart: Cartdetail;
  time = new Date();
  randomNumber: number;
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
    this.randomNumber = Math.floor(Math.random() * 800) + 100;
  }
}
