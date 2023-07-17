import { Module } from '@nestjs/common';
import { UserModule } from './user/user.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AuthModule } from './auth/auth.module';
import { CommonModule } from './common/common.module';
import { RoleModule } from './role/role.module';
import { PermissionModule } from './permission/permission.module';
import ormconfig from './ormconfig';

@Module({
  imports: [
    UserModule,
    TypeOrmModule.forRoot(ormconfig),
    AuthModule,
    CommonModule,
    RoleModule,
    PermissionModule,
  ],
})
export class AppModule {}
