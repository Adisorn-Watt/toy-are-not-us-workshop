import { Component, OnInit, OnDestroy } from '@angular/core';
import { DataServiceService } from '../data-service.service';
import { Observable, Subscription } from 'rxjs';
import { Product } from '../models/product';

@Component({
  selector: 'app-shopping-cart',
  templateUrl: './shopping-cart.component.html',
  styleUrls: ['./shopping-cart.component.css'],
})
export class ShoppingCartComponent implements OnInit, OnDestroy {
  constructor(private service: DataServiceService) {}

  toyID = '';
  toy: Product[] = [];
  subscription: Subscription;
  ngOnInit(): void {
    this.subscription = this.service.getSelectedID().subscribe((id) => {
      this.toyID = id;
      console.log(`toyId = ${this.toyID}`);
      this.service.getAllProduct().subscribe((toys) => {
        this.toy = toys.filter((p) => p.toyID === this.toyID);
      });
    });
  }
  ngOnDestroy(): void {
    this.subscription.unsubscribe();
  }
}
