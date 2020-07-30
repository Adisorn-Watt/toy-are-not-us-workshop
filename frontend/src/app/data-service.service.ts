import { Injectable } from '@angular/core';
import { Product } from './models/product';
import { combineLatest, Observable, of } from 'rxjs';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Injectable({
  providedIn: 'root',
})
export class DataServiceService {
  // constructor(private http: HttpClient) {}

  constructor() {}

  getAllProduct(): Observable<Product[]> {
    const p1 = new Product(
      '2',
      '43 Piece dinner Set',
      'Female',
      '3 to 5',
      12.95,
      true,
      'CoolKidz'
    );

    const p2 = new Product(
      '1',
      'Balance Training Bicycle',
      'Neutral',
      '3 to 5',
      119.95,
      true,
      'SportsFun'
    );

    const p3 = new Product(
      '7',
      'Best Friends Forever Magnetic Dress Up',
      'Female',
      '3 to 5',
      24.95,
      true,
      'CoolKidz'
    );

    const p4 = new Product(
      '8',
      'City Gargage Truck Lego',
      'Neutral',
      '3 to 5',
      19.95,
      false,
      'Lego'
    );

    const p5 = new Product(
      '20',
      'Creator Beach House Lego',
      'Neutral',
      '6 to 8',
      39.95,
      false,
      'Lego'
    );

    const p6 = new Product(
      '23',
      'Dancing Alligator',
      'Neutral',
      'Baby',
      19.95,
      true,
      'CoolKidz'
    );

    const p7 = new Product(
      '11',
      'Earth DVD Game',
      'Neutral',
      'over8',
      34.99,
      true,
      'VideoVroom'
    );

    const p8 = new Product(
      '30',
      'Fisher-Price stoller',
      'Female',
      'Toddler',
      25.99,
      true,
      'CoolKidz'
    );

    const p9 = new Product(
      '19',
      'Gourmet Cupcake Maker',
      'Female',
      '6 to 8',
      39.95,
      true,
      'CoolKidz'
    );

    const p10 = new Product(
      '4',
      'Hoppity Ball 26 inch',
      'Neutral',
      '3 to 5',
      29.95,
      true,
      'CoolKidz'
    );

    const p11 = new Product(
      '3',
      'Horses and Unicorns Set',
      'Neutral',
      '3 to 5',
      24.95,
      true,
      'CoolKidz'
    );

    const p12 = new Product(
      '21',
      'Jacques the peacock Play and Grow',
      'Neutral',
      'Toddler',
      24.95,
      true,
      'CoolKidz'
    );

    const p13 = new Product(
      '9',
      'Kettrick Tricycle',
      'Neutral',
      '3 to 5',
      249.95,
      false,
      'SportsFun'
    );

    const p14 = new Product(
      '26',
      'Les Dollie Toffee Apple',
      'Female',
      'Toddler',
      24.95,
      true,
      'CoolKidz'
    );

    const p15 = new Product(
      '24',
      'Mashaka the Monkey',
      'Neutral',
      'Baby',
      36.95,
      true,
      'BarnyardBlast'
    );
    const p16 = new Product(
      '28',
      'Melody Express Musical Train',
      'Male',
      'Toddler',
      42.95,
      true,
      'Modelz'
    );
    const p17 = new Product(
      '31',
      'Mortimer the Moose Play and Grow',
      'Neutral',
      'Toddler',
      12.95,
      true,
      'CoolKidz'
    );
    const p18 = new Product(
      '29',
      'My First LEGO DUPLO Set',
      'Neutral',
      'Toddler',
      19.95,
      false,
      'Lego'
    );
    const p19 = new Product(
      '22',
      'Nutbrown Hare',
      'Neutral',
      'Baby',
      12.99,
      false,
      'CoolKidz'
    );
    const p20 = new Product(
      '14',
      'OMG - Gossip Girl Board Game',
      'Female',
      'over 8',
      24.95,
      true,
      'GeekToys'
    );
    const p21 = new Product(
      '6',
      'Princess Palace',
      'Female',
      '3 to 5',
      24.95,
      true,
      'CoolKidz'
    );
    const p22 = new Product(
      '10',
      'Princess Trainning Bicycle',
      'Female',
      '3 to 5',
      119.95,
      false,
      'SportsFun'
    );
    const p23 = new Product(
      '15',
      'Sailboat',
      'Male',
      'over 8',
      24.95,
      true,
      'CoolKidz'
    );
    const p24 = new Product(
      '27',
      'Sand Play Set',
      'Neytral',
      'Toddler',
      24.95,
      true,
      'Modelz'
    );
    const p25 = new Product(
      '16',
      'Scrabble',
      'Neutral',
      'over 8',
      19.95,
      true,
      'GreekToys'
    );
    const p26 = new Product(
      '13',
      'Sattlers of Catan Board Game',
      'Neutral',
      'over 8',
      44.95,
      true,
      'GreekToys'
    );
    const p27 = new Product(
      '25',
      'Sleep Sheep',
      'Neutral',
      'Baby',
      39.0,
      true,
      'BarnyardBlast'
    );
    const p28 = new Product(
      '5',
      'Sleeping Queens Board Game',
      'Female',
      '3 to 5',
      12.95,
      false,
      'CoolKids'
    );
    const p29 = new Product(
      '18',
      'Snoopy Sno-Cone Machine',
      'Neutral',
      '6 to 8',
      24.95,
      true,
      'ModelKidz'
    );
    const p30 = new Product(
      '17',
      'Star Wars Darth Vadar Lego',
      'Male',
      '6 to 8',
      39.95,
      true,
      'GreekToys'
    );
    const p31 = new Product(
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
