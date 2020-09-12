import { TestBed } from '@angular/core/testing';

import { ApkDataService } from './apk-data.service';

describe('ApkDataService', () => {
  let service: ApkDataService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(ApkDataService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
