import { Component, OnInit, OnDestroy } from '@angular/core';
import { Product } from '../models/product';
import { ActivatedRoute } from '@angular/router';
import { DataServiceService } from '../data-service.service';
type Toys = Product[];
@Component({
  selector: 'app-product-detail',
  templateUrl: './product-detail.component.html',
  styleUrls: ['./product-detail.component.css'],
})
export class ProductDetailComponent implements OnInit, OnDestroy {
  toy: Product;
  public getCurrency(): string {
    return 'USD ';
  }
  constructor(
    private route: ActivatedRoute,
    private service: DataServiceService
  ) {}

  ngOnInit(): void {
    this.route.paramMap.subscribe((params) => {
      this.service.getAllProduct().subscribe((toys) => {
        this.toy = toys.filter((p) => p.toyID === params.get('id'))[0];
      });
    });
  }
  ngOnDestroy(): void {
    this.service.updateSelectedID(this.toy.toyID);
    alert(`update_${this.toy.toyID}`);
  }
}
