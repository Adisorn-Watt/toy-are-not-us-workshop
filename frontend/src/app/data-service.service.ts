import { Injectable } from '@angular/core';
import { Product } from './models/product';
import { combineLatest, Observable, of, Subject, BehaviorSubject } from 'rxjs';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Injectable({
  providedIn: 'root',
})
export class DataServiceService {
  // constructor(private http: HttpClient) {}

  private cartDetail = new BehaviorSubject('');
  currentCartDetail = this.cartDetail.asObservable();
  private selectedID = new BehaviorSubject('');
  currentSelectedID = this.selectedID.asObservable();

  constructor() {}

  updateCartDetail(message: string) {
    this.cartDetail.next(message);
  }

  updateSelectedID(message: string) {
    this.selectedID.next(message);
  }

  getAllProduct(): Observable<Product[]> {
    const p1 = new Product(
      'https://ae01.alicdn.com/kf/Hfcc46622c4fc44a28a7b6454a802b6df1.jpg',
      '2',
      '43 Piece dinner Set',
      'Female',
      '3 to 5',
      12.95,
      true,
      'CoolKidz'
    );

    const p2 = new Product(
      'https://i.pinimg.com/564x/82/ac/88/82ac88ce3a35deaac7943d168677b494.jpg',
      '1',
      'Balance Training Bicycle',
      'Neutral',
      '3 to 5',
      119.95,
      true,
      'SportsFun'
    );

    const p3 = new Product(
      'https://s.catch.com.au/images/product/0001/1519/5456eb62acc2f587821526.jpg',
      '7',
      'Best Friends Forever Magnetic Dress Up',
      'Female',
      '3 to 5',
      24.95,
      true,
      'CoolKidz'
    );

    const p4 = new Product(
      'https://images-na.ssl-images-amazon.com/images/I/81Dey7V1SyL._AC_SX425_.jpg',
      '8',
      'City Gargage Truck Lego',
      'Neutral',
      '3 to 5',
      19.95,
      false,
      'Lego'
    );

    const p5 = new Product(
      'https://images-na.ssl-images-amazon.com/images/I/51Ev8GhXGKL._AC_SX425_.jpg',
      '20',
      'Creator Beach House Lego',
      'Neutral',
      '6 to 8',
      39.95,
      false,
      'Lego'
    );

    const p6 = new Product(
      'https://images-na.ssl-images-amazon.com/images/I/41cBJR01WjL._AC_SX425_.jpg',
      '23',
      'Dancing Alligator',
      'Neutral',
      'Baby',
      19.95,
      true,
      'CoolKidz'
    );

    const p7 = new Product(
      'https://images-na.ssl-images-amazon.com/images/I/51yrHu3VZcL._AC_SX425_.jpg',
      '11',
      'Earth DVD Game',
      'Neutral',
      'over8',
      34.99,
      true,
      'VideoVroom'
    );

    const p8 = new Product(
      'https://images-na.ssl-images-amazon.com/images/I/81KtYbEHEZL._AC_SY550_.jpg',
      '30',
      'Fisher-Price stoller',
      'Female',
      'Toddler',
      25.99,
      true,
      'CoolKidz'
    );

    const p9 = new Product(
      'https://images-na.ssl-images-amazon.com/images/I/61iBguprIIL._AC_SX425_.jpg',
      '19',
      'Gourmet Cupcake Maker',
      'Female',
      '6 to 8',
      39.95,
      true,
      'CoolKidz'
    );

    const p10 = new Product(
      'https://images-na.ssl-images-amazon.com/images/I/51SmHf%2BiRnL._AC_SL1001_.jpg',
      '4',
      'Hoppity Ball 26 inch',
      'Neutral',
      '3 to 5',
      29.95,
      true,
      'CoolKidz'
    );

    const p11 = new Product(
      'https://th-live-02.slatic.net/p/31155651f4f96f9ebd8d303b1520b62b.jpg',
      '3',
      'Horses and Unicorns Set',
      'Neutral',
      '3 to 5',
      24.95,
      true,
      'CoolKidz'
    );

    const p12 = new Product(
      'https://i.pinimg.com/originals/e5/18/19/e51819440bdf5939e3bfafe2ef873ce4.jpg',
      '21',
      'Jacques the peacock Play and Grow',
      'Neutral',
      'Toddler',
      24.95,
      true,
      'CoolKidz'
    );

    const p13 = new Product(
      'https://images-na.ssl-images-amazon.com/images/I/81gvgm8c7nS._AC_SX425_.jpg',
      '9',
      'Kettrick Tricycle',
      'Neutral',
      '3 to 5',
      249.95,
      false,
      'SportsFun'
    );

    const p14 = new Product(
      'https://images-na.ssl-images-amazon.com/images/I/91HAd3v1bxL._AC_SL1500_.jpg',
      '26',
      'Les Dollie Toffee Apple',
      'Female',
      'Toddler',
      24.95,
      true,
      'CoolKidz'
    );

    const p15 = new Product(
      'https://image.makewebeasy.net/makeweb/0/yWSGoz9KF/AMORBABY/IMG_2892_1040.jpg',
      '24',
      'Mashaka the Monkey',
      'Neutral',
      'Baby',
      36.95,
      true,
      'BarnyardBlast'
    );
    const p16 = new Product(
      'https://i.ebayimg.com/images/g/RtUAAOSwCkxdGc7k/s-l1600.jpg',
      '28',
      'Melody Express Musical Train',
      'Male',
      'Toddler',
      42.95,
      true,
      'Modelz'
    );
    const p17 = new Product(
      'https://www.ubuy.co.th/productimg/?image=aHR0cHM6Ly9pbWFnZXMtbmEuc3NsLWltYWdlcy1hbWF6b24uY29tL2ltYWdlcy9JLzkxR09HTHYwNE5MLl9TUzQwMF8uanBn.jpg',
      '31',
      'Mortimer the Moose Play and Grow',
      'Neutral',
      'Toddler',
      12.95,
      true,
      'CoolKidz'
    );
    const p18 = new Product(
      'https://di.lnwfile.com/lt45vx.jpg',
      '29',
      'My First LEGO DUPLO Set',
      'Neutral',
      'Toddler',
      19.95,
      false,
      'Lego'
    );
    const p19 = new Product(
      'https://images-na.ssl-images-amazon.com/images/I/51WLyTbJbjL._SX258_BO1,204,203,200_.jpg',
      '22',
      'Nutbrown Hare',
      'Neutral',
      'Baby',
      12.99,
      false,
      'CoolKidz'
    );
    const p20 = new Product(
      'https://cf.geekdo-images.com/small/img/XONwU5xkrTlVEGShr4ubqD6L_oA=/fit-in/200x150/pic479820.jpg',
      '14',
      'OMG - Gossip Girl Board Game',
      'Female',
      'over 8',
      24.95,
      true,
      'GeekToys'
    );
    const p21 = new Product(
      'https://s3-ap-southeast-1.amazonaws.com/assets-eng-prod/products/th_310093-3.jpg',
      '6',
      'Princess Palace',
      'Female',
      '3 to 5',
      24.95,
      true,
      'CoolKidz'
    );
    const p22 = new Product(
      'https://d.lnwfile.com/5jf4a7.jpg',
      '10',
      'Princess Training Bicycle',
      'Female',
      '3 to 5',
      119.95,
      false,
      'SportsFun'
    );
    const p23 = new Product(
      'https://images-na.ssl-images-amazon.com/images/I/61oMiNVFKaL._SL1000_.jpg',
      '15',
      'Sailboat',
      'Male',
      'over 8',
      24.95,
      true,
      'CoolKidz'
    );
    const p24 = new Product(
      'https://images-na.ssl-images-amazon.com/images/I/91rKq%2Ba6bxL._AC_SX425_.jpg',
      '27',
      'Sand Play Set',
      'Neytral',
      'Toddler',
      24.95,
      true,
      'Modelz'
    );
    const p25 = new Product(
      'https://images-na.ssl-images-amazon.com/images/I/81ghItchj1L._AC_SX466_.jpg',
      '16',
      'Scrabble',
      'Neutral',
      'over 8',
      19.95,
      true,
      'GreekToys'
    );
    const p26 = new Product(
      'https://images-na.ssl-images-amazon.com/images/I/81G3u55HEHL._AC_SX425_.jpg',
      '13',
      'Sattlers of Catan Board Game',
      'Neutral',
      'over 8',
      44.95,
      true,
      'GreekToys'
    );
    const p27 = new Product(
      'https://lh3.googleusercontent.com/proxy/yXHy7GeUTsAKQUSHF-lNTZf4l7o8mwuzTt1q9p1WgHcnS-S_WeO8iwpuVMXLvhDGQ5prqP8fP7lgyjZPMQZiGYYg-Sm9Byv-bovwNUwtdSFCMrHgyep5Nje7kOEhVTYW',
      '25',
      'Sleep Sheep',
      'Neutral',
      'Baby',
      39.0,
      true,
      'BarnyardBlast'
    );
    const p28 = new Product(
      'https://www.morethanagamecafe.com/wp-content/uploads/2017/03/Sleeping-Queens-Anniversary.jpg',
      '5',
      'Sleeping Queens Board Game',
      'Female',
      '3 to 5',
      12.95,
      false,
      'CoolKids'
    );
    const p29 = new Product(
      'https://images-na.ssl-images-amazon.com/images/I/716mDUF9R2L._AC_SL1164_.jpg',
      '18',
      'Snoopy Sno-Cone Machine',
      'Neutral',
      '6 to 8',
      24.95,
      true,
      'ModelKidz'
    );
    const p30 = new Product(
      'https://cr.lnwfile.com/e3ae9w.jpg',
      '17',
      'Star Wars Darth Vadar Lego',
      'Male',
      '6 to 8',
      39.95,
      true,
      'GreekToys'
    );
    const p31 = new Product(
      'https://cf.geekdo-images.com/opengraph/img/mVbEV5n7Ip5BhhL975QuxT35Ykc=/fit-in/1200x630/pic761615.jpg',
      '12',
      'Twilight Board Game',
      'Neutral',
      'over 8',
      24.95,
      true,
      'GreekToys'
    );
    return of([
      p1,
      p2,
      p3,
      p4,
      p5,
      p6,
      p7,
      p8,
      p9,
      p10,
      p11,
      p12,
      p13,
      p14,
      p15,
      p16,
      p17,
      p18,
      p19,
      p20,
      p21,
      p22,
      p23,
      p24,
      p25,
      p26,
      p27,
      p28,
      p29,
      p30,
      p31,
    ]);
  }
}
