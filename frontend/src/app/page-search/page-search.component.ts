import { Component, OnInit } from '@angular/core';
import { DataServiceService } from '../data-service.service';

type Toys = Product[];
@Component({
  selector: 'app-page-search',
  templateUrl: './page-search.component.html',
  styleUrls: ['./page-search.component.css']
})
export class PageSearchComponent implements OnInit {
  inputSearch: string = "";
  toyList: lorem = [];

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

}
