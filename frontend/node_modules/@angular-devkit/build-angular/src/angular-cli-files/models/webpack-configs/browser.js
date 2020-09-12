"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.getBrowserConfig = void 0;
const webpack_1 = require("../../plugins/webpack");
const utils_1 = require("./utils");
const SubresourceIntegrityPlugin = require('webpack-subresource-integrity');
const LicenseWebpackPlugin = require('license-webpack-plugin').LicenseWebpackPlugin;
function getBrowserConfig(wco) {
    const { buildOptions } = wco;
    const { crossOrigin = 'none', subresourceIntegrity, extractLicenses, vendorChunk, commonChunk, styles, allowedCommonJsDependencies, } = buildOptions;
    const extraPlugins = [];
    const { styles: stylesSourceMap, scripts: scriptsSourceMap, hidden: hiddenSourceMap, } = buildOptions.sourceMap;
    if (subresourceIntegrity) {
        extraPlugins.push(new SubresourceIntegrityPlugin({
            hashFuncNames: ['sha384'],
        }));
    }
    if (extractLicenses) {
        extraPlugins.push(new LicenseWebpackPlugin({
            stats: {
                warnings: false,
                errors: false,
            },
            perChunkOutput: false,
            outputFilename: '3rdpartylicenses.txt',
        }));
    }
    if (scriptsSourceMap || stylesSourceMap) {
        extraPlugins.push(utils_1.getSourceMapDevTool(scriptsSourceMap, stylesSourceMap, wco.differentialLoadingMode ? true : hiddenSourceMap));
    }
    const globalStylesBundleNames = utils_1.normalizeExtraEntryPoints(styles, 'styles')
        .map(style => style.bundleName);
    let crossOriginLoading = false;
    if (subresourceIntegrity && crossOrigin === 'none') {
        crossOriginLoading = 'anonymous';
    }
    else if (crossOrigin !== 'none') {
        crossOriginLoading = crossOrigin;
    }
    return {
        devtool: false,
        resolve: {
            mainFields: ['es2015', 'browser', 'module', 'main'],
        },
        output: {
            crossOriginLoading,
        },
        optimization: {
            runtimeChunk: 'single',
            splitChunks: {
                maxAsyncRequests: Infinity,
                cacheGroups: {
                    default: !!commonChunk && {
                        chunks: 'async',
                        minChunks: 2,
                        priority: 10,
                    },
                    common: !!commonChunk && {
                        name: 'common',
                        chunks: 'async',
                        minChunks: 2,
                        enforce: true,
                        priority: 5,
                    },
                    vendors: false,
                    vendor: !!vendorChunk && {
                        name: 'vendor',
                        chunks: 'initial',
                        enforce: true,
                        test: (module, chunks) => {
                            const moduleName = module.nameForCondition ? module.nameForCondition() : '';
                            return /[\\/]node_modules[\\/]/.test(moduleName)
                                && !chunks.some(({ name }) => utils_1.isPolyfillsEntry(name)
                                    || globalStylesBundleNames.includes(name));
                        },
                    },
                },
            },
        },
        plugins: [
            new webpack_1.CommonJsUsageWarnPlugin({
                allowedDepedencies: allowedCommonJsDependencies,
            }),
            ...extraPlugins,
        ],
        node: false,
    };
}
exports.getBrowserConfig = getBrowserConfig;
