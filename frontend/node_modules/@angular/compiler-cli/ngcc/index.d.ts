/// <amd-module name="@angular/compiler-cli/ngcc" />
import { AsyncNgccOptions, SyncNgccOptions } from './src/ngcc_options';
export { ConsoleLogger } from './src/logging/console_logger';
export { Logger, LogLevel } from './src/logging/logger';
export { AsyncNgccOptions, clearTsConfigCache, NgccOptions, SyncNgccOptions } from './src/ngcc_options';
export { PathMappings } from './src/path_mappings';
export declare function process<T extends AsyncNgccOptions | SyncNgccOptions>(options: T): T extends AsyncNgccOptions ? Promise<void> : void;
