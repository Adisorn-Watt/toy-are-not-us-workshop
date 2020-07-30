import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-page-search',
  templateUrl: './page-search.component.html',
  styleUrls: ['./page-search.component.css']
})
export class PageSearchComponent implements OnInit {
  inputSearch: string = "";
  toyList: lorem = [];

  constructor() { }

  ngOnInit(): void {
  }

}
