import { Test, TestingModule } from '@nestjs/testing';
import { HttpStatus, INestApplication } from '@nestjs/common';
import * as request from 'supertest';
import { AppModule } from '../src/app.module'; // Adjust the import path to your app module
import { UserModule } from '../src//modules/user.module';
import { QuestionModule } from '../src/modules/question.module';
describe('UserController (e2e)', () => {
  let app: INestApplication;

  beforeAll(async () => {
    const moduleFixture: TestingModule = await Test.createTestingModule({
      imports: [AppModule, UserModule, QuestionModule], // Adjust the import to your app module
    }).compile();

    app = moduleFixture.createNestApplication();
    await app.init();
  });

  afterAll(async () => {
    await app.close();
  });

  it('/api/v1/user/signup (POST) - should create a new user', () => {
    return request(app.getHttpServer())
      .post('/api/v1/user/signup')
      .send({
        username: 'user2',
        password: 'pass1234567',
        email: 'test1@gmail.com',
      })
      .expect(HttpStatus.CREATED)
      .expect((res) => {
        console.log(res.body);
      });
  });

  it('/api/v1/user/login (POST) - should login the new user', () => {
    return request(app.getHttpServer())
      .post('/api/v1/user/login')
      .send({
        username: 'user2',
        password: 'pass1234567',
      })
      .expect((res) => {
        console.log(res.body);
      });
  });
});
