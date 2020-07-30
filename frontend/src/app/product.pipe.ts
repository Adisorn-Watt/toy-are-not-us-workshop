import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'product',
})
export class ProductPipe implements PipeTransform {
  transform(product: [], age: string, gender: string): unknown {
    return null;
  }
}
