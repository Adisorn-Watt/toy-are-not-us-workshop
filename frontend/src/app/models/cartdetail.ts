import { Product } from './product';

export class Cartdetail {
  constructor(
    public selectedToy: Product,
    public shippingMethod: string,
    public paymentMethod: string,
    public quantity: string
  ) {}
}
