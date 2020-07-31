import { Component, OnInit, OnDestroy } from '@angular/core';
import { DataServiceService } from '../data-service.service';
import { Observable, Subscription } from 'rxjs';
import { Product } from '../models/product';

@Component({
  selector: 'app-order-success',
  templateUrl: './order-success.component.html',
  styleUrls: ['./order-success.component.css'],
})
export class OrderSuccessComponent implements OnInit {
  constructor(private service: DataServiceService) {}
  time = new Date();
  randomNumber: number;
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
    this.service.subjectdata();
    this.subscription = this.service.dataState.subscribe((value: number) => {
      this.randomNumber = value;
    });
  }
}
