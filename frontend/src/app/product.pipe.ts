import { Pipe, PipeTransform } from '@angular/core';
import { Product } from './models/product';
@Pipe({
  name: 'product',
})
export class ProductPipe implements PipeTransform {
  transform(products: Product[], age: string, gender: string): Product[] {
    return products.filter(
      (p) =>
        p.toyAge.toUpperCase().indexOf(age.toUpperCase()) !== -1 &&
        p.toyGender.toUpperCase().indexOf(age.toUpperCase()) !== -1
    );
  }
}
