import { Injectable } from '@angular/core';
import { combineLatest, Observable, of } from 'rxjs';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Product } from './models/product';

@Injectable({
  providedIn: 'root',
})
export class DataServiceService {
  constructor(private http: HttpClient) {}

  getAllProduct(): Observable<Product[]> {
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
    return of([p16]);
  }
}
