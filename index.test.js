const request = require('supertest');
const app = require('./index'); 

describe('GET /', () => {
  it('should render the index view', async () => {
    const response = await request(app).get('/');
    expect(response.statusCode).toBe(200)
  });
});