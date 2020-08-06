import axios from 'axios'

// create an axios instance
const service = axios.create({
  baseURL: 'http://localhost:8090',
  timeout: 5000 // request timeout
})

export default service
