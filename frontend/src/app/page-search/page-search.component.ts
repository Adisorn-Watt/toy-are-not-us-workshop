import { Component, OnInit } from '@angular/core';
import { DataServiceService } from '../data-service.service';
import { Product } from '../models/product';

type Toys = Product[];
@Component({
  selector: 'app-page-search',
  templateUrl: './page-search.component.html',
  styleUrls: ['./page-search.component.css'],
})
export class PageSearchComponent implements OnInit {
  gender: string = '';
  age: string = '';
  inputSearch: String = '';
  toyList: Toys = [];

  //productList: Products = [];
  //productSelected: Product;

  constructor(public service: DataServiceService) { }

  ngOnInit(): void {
    this.getAll();
  }

  getAll(): void {
    this.service.getAllProduct().subscribe((toys) => {
      return (this.toyList = toys);
    });
  }
  getGender(event) {
    this.gender = event.value;
    console.log(event);
  }
  getAge(event) {
    this.age = event.value;
    console.log(event.value);
  }
}
