/**
 * Generates an app shell for running a server-side version of an app.
 */
export interface Schema {
    /**
     * The name of the application directory.
     */
    appDir?: string;
    /**
     * The app ID to use in withServerTransition().
     */
    appId?: string;
    /**
     * The name of the related client app.
     */
    clientProject: string;
    /**
     * The name of the main entry-point file.
     */
    main?: string;
    /**
     * The name of the root module class.
     */
    rootModuleClassName?: string;
    /**
     * The name of the root module file
     */
    rootModuleFileName?: string;
    /**
     * Route path used to produce the app shell.
     */
    route?: string;
    /**
     * The name of the TypeScript configuration file.
     */
    tsconfigFileName?: string;
}
