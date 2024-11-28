<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="120" alt="Nest Logo" /></a>
</p>

[circleci-image]: https://img.shields.io/circleci/build/github/nestjs/nest/master?token=abc123def456
[circleci-url]: https://circleci.com/gh/nestjs/nest

  <p align="center">A progressive <a href="http://nodejs.org" target="_blank">Node.js</a> framework for building efficient and scalable server-side applications.</p>
    <p align="center">
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/v/@nestjs/core.svg" alt="NPM Version" /></a>
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/l/@nestjs/core.svg" alt="Package License" /></a>
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/dm/@nestjs/common.svg" alt="NPM Downloads" /></a>
<a href="https://circleci.com/gh/nestjs/nest" target="_blank"><img src="https://img.shields.io/circleci/build/github/nestjs/nest/master" alt="CircleCI" /></a>
<a href="https://coveralls.io/github/nestjs/nest?branch=master" target="_blank"><img src="https://coveralls.io/repos/github/nestjs/nest/badge.svg?branch=master#9" alt="Coverage" /></a>
<a href="https://discord.gg/G7Qnnhy" target="_blank"><img src="https://img.shields.io/badge/discord-online-brightgreen.svg" alt="Discord"/></a>
<a href="https://opencollective.com/nest#backer" target="_blank"><img src="https://opencollective.com/nest/backers/badge.svg" alt="Backers on Open Collective" /></a>
<a href="https://opencollective.com/nest#sponsor" target="_blank"><img src="https://opencollective.com/nest/sponsors/badge.svg" alt="Sponsors on Open Collective" /></a>
  <a href="https://paypal.me/kamilmysliwiec" target="_blank"><img src="https://img.shields.io/badge/Donate-PayPal-ff3f59.svg" alt="Donate us"/></a>
    <a href="https://opencollective.com/nest#sponsor"  target="_blank"><img src="https://img.shields.io/badge/Support%20us-Open%20Collective-41B883.svg" alt="Support us"></a>
  <a href="https://twitter.com/nestframework" target="_blank"><img src="https://img.shields.io/twitter/follow/nestframework.svg?style=social&label=Follow" alt="Follow us on Twitter"></a>
</p>
  <!--[![Backers on Open Collective](https://opencollective.com/nest/backers/badge.svg)](https://opencollective.com/nest#backer)
  [![Sponsors on Open Collective](https://opencollective.com/nest/sponsors/badge.svg)](https://opencollective.com/nest#sponsor)-->

## Description

[Nest](https://github.com/nestjs/nest) framework TypeScript starter repository.

## Project setup

```bash
$ npm install
```

## Compile and run the project

```bash
# development
$ npm run start

# watch mode
$ npm run start:dev

# production mode
$ npm run start:prod
```

## Run tests

```bash
# unit tests
$ npm run test

# e2e tests
$ npm run test:e2e

# test coverage
$ npm run test:cov
```

## Deployment

When you're ready to deploy your NestJS application to production, there are some key steps you can take to ensure it runs as efficiently as possible. Check out the [deployment documentation](https://docs.nestjs.com/deployment) for more information.

If you are looking for a cloud-based platform to deploy your NestJS application, check out [Mau](https://mau.nestjs.com), our official platform for deploying NestJS applications on AWS. Mau makes deployment straightforward and fast, requiring just a few simple steps:

```bash
$ npm install -g mau
$ mau deploy
```

With Mau, you can deploy your application in just a few clicks, allowing you to focus on building features rather than managing infrastructure.

## Resources

Check out a few resources that may come in handy when working with NestJS:

- Visit the [NestJS Documentation](https://docs.nestjs.com) to learn more about the framework.
- For questions and support, please visit our [Discord channel](https://discord.gg/G7Qnnhy).
- To dive deeper and get more hands-on experience, check out our official video [courses](https://courses.nestjs.com/).
- Deploy your application to AWS with the help of [NestJS Mau](https://mau.nestjs.com) in just a few clicks.
- Visualize your application graph and interact with the NestJS application in real-time using [NestJS Devtools](https://devtools.nestjs.com).
- Need help with your project (part-time to full-time)? Check out our official [enterprise support](https://enterprise.nestjs.com).
- To stay in the loop and get updates, follow us on [X](https://x.com/nestframework) and [LinkedIn](https://linkedin.com/company/nestjs).
- Looking for a job, or have a job to offer? Check out our official [Jobs board](https://jobs.nestjs.com).

## Support

Nest is an MIT-licensed open source project. It can grow thanks to the sponsors and support by the amazing backers. If you'd like to join them, please [read more here](https://docs.nestjs.com/support).

## Stay in touch

- Author - [Kamil Myśliwiec](https://twitter.com/kammysliwiec)
- Website - [https://nestjs.com](https://nestjs.com/)
- Twitter - [@nestframework](https://twitter.com/nestframework)

## License

Nest is [MIT licensed](https://github.com/nestjs/nest/blob/master/LICENSE).


# Azure DevOps Pipeline: Benefits of a Restructured Pipeline

This document highlights the advantages of using a **staged pipeline** approach in Azure DevOps over a single-step, sequential pipeline. The restructured pipeline improves organization, maintainability, and scalability, while aligning with CI/CD best practices.

---

## 1. Better Organization and Maintainability

### Restructured Pipeline:
- Each task is logically grouped into stages (e.g., `Install`, `LintAndTest`, `Build`, `Docker`), each serving a specific purpose.
- Easier to understand what each part of the pipeline is responsible for.

### Your Pipeline:
- All tasks are in a single list, making it harder to identify the purpose of each step at a glance.

**Benefit**: The structured approach improves readability and maintainability, especially for larger teams or complex projects.

---

## 2. Clear Dependencies

### Restructured Pipeline:
- Stages explicitly define dependencies (e.g., `LintAndTest` depends on `Install`, `Build` depends on `LintAndTest`).
- Ensures previous steps are successful before moving forward.

### Your Pipeline:
- Tasks execute sequentially without explicit dependency or logical grouping.

**Benefit**: Clear dependencies reduce the chance of running unnecessary steps if earlier ones fail, saving time and avoiding confusion.

---

## 3. Easier Debugging and Failure Isolation

### Restructured Pipeline:
- Failures are isolated to specific stages (e.g., if `LintAndTest` fails, you know the issue lies in formatting, linting, or testing).
- Logs and statuses for each stage are separate, making it easier to pinpoint problems.

### Your Pipeline:
- Failures may occur anywhere, requiring scanning through the entire pipeline log for debugging.

**Benefit**: Debugging is faster and more precise with isolated stages and logs.

---

## 4. Potential for Parallelization

### Restructured Pipeline:
- Independent jobs or tasks in different stages (e.g., formatting, linting, testing) can run in parallel to save time, depending on the Azure DevOps pool configuration.

### Your Pipeline:
- All tasks run sequentially, even if some could technically execute in parallel.

**Benefit**: Parallelization (if applicable) reduces pipeline execution time, especially for large projects.

---

## 5. Reusability and Extensibility

### Restructured Pipeline:
- Adding or modifying functionality is easier because each stage is self-contained.
- Stages can be reused in other pipelines (e.g., reusing the `LintAndTest` or `Build` stage for similar Node.js projects).

### Your Pipeline:
- Modifying or extending tasks may require significant restructuring, as everything is in a single block.

**Benefit**: The modular structure makes it easier to extend and reuse parts of the pipeline for similar projects.

---

## 6. Visibility and Reporting

### Restructured Pipeline:
- Azure DevOps provides a clear view of each stage and its status, making it easy to monitor progress and identify bottlenecks.
- Success or failure is reported at the stage level.

### Your Pipeline:
- All tasks are grouped together, so the entire pipeline appears as one block in the pipeline overview.

**Benefit**: Better visibility of the pipeline execution process with more granular reporting.

---

## 7. Scalability for Larger Teams or Projects

### Restructured Pipeline:
- Ideal for larger teams where responsibilities are divided (e.g., developers focusing on `LintAndTest`, DevOps engineers on `Build` and `Docker` stages).
- Future enhancements (e.g., adding stages for deployment or notifications) are straightforward.

### Your Pipeline:
- Scaling up with new features or teams might require significant reorganization.

**Benefit**: Staged pipelines are more scalable and better suited for collaborative, iterative development.

---

## 8. Avoids Wasting Resources

### Restructured Pipeline:
- If a stage fails (e.g., `LintAndTest`), subsequent stages (`Build` or `Docker`) won’t execute, avoiding unnecessary resource usage.

### Your Pipeline:
- Every task runs sequentially without dependency checks, so later steps might execute unnecessarily, even after a failure.

**Benefit**: Saves time and resources by stopping execution early if an issue arises.

---

## 9. Enhanced CI/CD Best Practices

### Restructured Pipeline:
- Aligns with industry-standard CI/CD practices by organizing pipelines into distinct phases (install, test, build, deploy).
- Clear separation between code quality checks and artifact generation.

### Your Pipeline:
- While functional, it doesn’t fully adhere to CI/CD best practices for stage-based workflows.

**Benefit**: Easier adoption of CI/CD best practices for improved development workflows.

---

### Conclusion

The restructured pipeline provides better **organization**, **debugging**, **scalability**, and **efficiency**. It is ideal for teams following modern CI/CD methodologies and helps streamline complex projects while maintaining clarity and reliability.

---
