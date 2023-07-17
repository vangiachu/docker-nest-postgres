import { DataSource } from 'typeorm/data-source';

export const AppDataSource = new DataSource({
  type: 'postgres',
  host: 'localhost',
  port: 5432,
  username: 'postgres',
  password: '123456',
  database: 'gia_admin_data',
  synchronize: true,
  subscribers: [],
  migrations: [],
});
