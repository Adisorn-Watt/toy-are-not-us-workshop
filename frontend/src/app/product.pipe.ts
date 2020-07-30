import { Pipe, PipeTransform } from '@angular/core';
import { Product } from './models/product';
@Pipe({
  name: 'product',
})
export class ProductPipe implements PipeTransform {
  transform(products: Product[], age: string, gender: string): Product[] {
    if (age.length > 0 && gender.length > 0) {
      return products.filter(
        (p) =>
          p.toyAge.toUpperCase() === age.toUpperCase() &&
          p.toyGender.toUpperCase() === gender.toUpperCase()
      );
    } else if (age.length === 0 && gender.length > 0) {
      return products.filter(
        (p) => p.toyGender.toUpperCase() === gender.toUpperCase()
      );
    } else if (age.length > 0 && gender.length === 0) {
      return products.filter(
        (p) => p.toyAge.toUpperCase() === age.toUpperCase()
      );
    } else {
      return products;
    }
  }
}
