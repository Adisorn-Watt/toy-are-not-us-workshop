import { Component, OnInit } from '@angular/core';
import { Product } from '../models/product';
import { ActivatedRoute } from '@angular/router';
import { DataServiceService } from '../data-service.service';
type Products = Product[];
@Component({
  selector: 'app-product-detail',
  templateUrl: './product-detail.component.html',
  styleUrls: ['./product-detail.component.css']
})
export class ProductDetailComponent implements OnInit {
  product: Product;

  constructor(private route: ActivatedRoute, public service: DataServiceService) {}

  ngOnInit(): void {
    this.route.paramMap.subscribe((params) => {
      this.service.getAllProduct().subscribe((products) => {
        this.product = products.filter((p) => p.toyID === params.get('id'))[0];
      });
    });
  }
}