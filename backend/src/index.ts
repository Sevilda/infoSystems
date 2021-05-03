import 'reflect-metadata';
import {createConnection} from 'typeorm';
import { connectionOptions } from '../ormconfig';
import express from 'express';
import { getRouter } from './routes';

createConnection(connectionOptions).then(async connection => {
    console.log('Connected to database.');

    const app = express();

    app.use(express.json());
    app.use('/api', getRouter());


    // const apartment = new Apartment();
    // await connection.manager.save(apartment);
    // const tenant = new Tenant();
    // tenant.apartment= apartment;
    // await connection.manager.save(tenant);


    app.listen(3000, () => {
        console.log('Listening on 3000...');
    });

}).catch(error => console.log(error));
