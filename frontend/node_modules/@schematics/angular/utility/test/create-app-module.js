"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.createAppModule = void 0;
function createAppModule(tree, path) {
    tree.create(path || '/src/app/app.module.ts', `
    import { BrowserModule } from '@angular/platform-browser';
    import { NgModule } from '@angular/core';
    import { AppComponent } from './app.component';

    @NgModule({
    declarations: [
      AppComponent
    ],
    imports: [
      BrowserModule
    ],
    providers: [],
    bootstrap: [AppComponent]
    })
    export class AppModule { }
  `);
    return tree;
}
exports.createAppModule = createAppModule;
