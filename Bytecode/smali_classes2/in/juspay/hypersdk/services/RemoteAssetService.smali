.class public Lin/juspay/hypersdk/services/RemoteAssetService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RemoteAssetService"


# instance fields
.field private assetMetadata:Lorg/json/JSONObject;

.field private juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

.field private final sdkName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lin/juspay/hypersdk/core/JuspayServices;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkInfo()Lin/juspay/hypersdk/data/SdkInfo;

    move-result-object p1

    invoke-virtual {p1}, Lin/juspay/hypersdk/data/SdkInfo;->getSdkName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->sdkName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lin/juspay/hypersdk/services/RemoteAssetService;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lin/juspay/hypersdk/services/RemoteAssetService;->getContent(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lin/juspay/hypersdk/services/RemoteAssetService;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lin/juspay/hypersdk/services/RemoteAssetService;->updateCertificates(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$200(Lin/juspay/hypersdk/services/RemoteAssetService;)Lin/juspay/hypersdk/core/JuspayServices;
    .locals 0

    iget-object p0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    return-object p0
.end method

.method private decideAndUpdateInternalStorage([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getFileProviderService()Lin/juspay/hypersdk/services/FileProviderService;

    move-result-object v7

    invoke-static {p1}, Lin/juspay/hypersdk/utils/EncryptionHelper;->md5([B)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    move-object v8, v1

    iget-object v1, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hashInDisk: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RemoteAssetService"

    invoke-virtual {v1, v3, v2}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "newHash: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hash of used file \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v2, "system"

    const-string v3, "info"

    const-string v4, "remote_asset_service"

    const-string v5, "remote_asset_service_update_hash"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "\'"

    if-eqz p2, :cond_1

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Remote hash is same as disk hash. Not updating asset \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v2, "system"

    const-string v3, "info"

    const-string v4, "remote_asset_service"

    const-string v5, "remote_asset_service_compare_hash"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Remote hash differs from disk hash. Updating asset \'"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v2, "system"

    const-string v3, "info"

    const-string v4, "remote_asset_service"

    const-string v5, "remote_asset_service_compare_hash"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7, p3, p1}, Lin/juspay/hypersdk/services/FileProviderService;->updateFile(Ljava/lang/String;[B)Z

    :goto_0
    return-object v8
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ts"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "START fetching content from: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteAssetService"

    invoke-virtual {p1, v2, v1}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Lin/juspay/hypersdk/utils/network/NetUtils;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v1}, Lin/juspay/hypersdk/utils/network/NetUtils;-><init>(IIZ)V

    invoke-virtual {p1, p2, v0}, Lin/juspay/hypersdk/utils/network/NetUtils;->fetchIfModified(Ljava/lang/String;Ljava/util/Map;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v6, p1

    iget-object p1, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    const-string v1, "RemoteAssetService"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "remote_asset_service"

    const-string v5, "Error While Downloading File"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getAssetTtl()J
    .locals 3

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->sdkName:Ljava/lang/String;

    const-string v1, "REMOTE_ASSET_TTL_MILLISECONDS"

    const-string v2, "3600000"

    invoke-static {v0, v1, v2}, Lin/juspay/hypersdk/data/KeyValueStore;->read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getContent(Ljava/lang/String;J)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lin/juspay/hypersdk/services/RemoteAssetService;->getContent(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method private getContent(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getSessionInfo()Lin/juspay/hypersdk/data/SessionInfo;

    move-result-object v1

    iget-object v2, v0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v2}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v3

    iget-object v2, v0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v2}, Lin/juspay/hypersdk/core/JuspayServices;->getFileProviderService()Lin/juspay/hypersdk/services/FileProviderService;

    move-result-object v2

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lin/juspay/hypersdk/data/SessionInfo;->isVerifyAssetsEnabled()Z

    move-result v1

    const-string v5, ".jsa"

    const-string v6, ".zip"

    if-nez v1, :cond_0

    move-object/from16 v1, p1

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-nez p2, :cond_1

    add-int/2addr v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object/from16 v7, p2

    :goto_1
    invoke-virtual {v7, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lin/juspay/hypersdk/services/RemoteAssetService;->getMetadata(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "lastChecked"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "zipHashInDisk"

    const-string v13, "hashInDisk"

    const-string v14, ""

    const/4 v15, 0x0

    if-eqz v11, :cond_2

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v14

    move-object v14, v6

    move-object/from16 v6, v17

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {v2, v7, v15}, Lin/juspay/hypersdk/services/FileProviderService;->readFromFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lin/juspay/hypersdk/utils/EncryptionHelper;->md5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v14

    :goto_2
    invoke-direct {v0, v14, v1}, Lin/juspay/hypersdk/services/RemoteAssetService;->download(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-static {v11}, Lin/juspay/hypersdk/utils/EncryptionHelper;->md5([B)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x1

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    :goto_3
    invoke-direct {v0, v11, v7}, Lin/juspay/hypersdk/services/RemoteAssetService;->unZipAndVerify([BLjava/lang/String;)[B

    move-result-object v11

    if-nez v11, :cond_6

    if-nez v16, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ETAG matches for \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'. Not downloading from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v4, "system"

    const-string v5, "info"

    const-string v6, "remote_asset_service"

    const-string v7, "remote_asset_service_etag_match"

    invoke-virtual/range {v3 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return v15

    :cond_5
    invoke-virtual {v2, v5, v15}, Lin/juspay/hypersdk/services/FileProviderService;->readFromFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lin/juspay/hypersdk/R$string;->juspay_encryption_version:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lin/juspay/hypersdk/utils/EncryptionHelper;->gzipThenEncrypt([BLjava/lang/String;)[B

    move-result-object v11

    :cond_6
    if-eqz v11, :cond_7

    iget-object v2, v0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "DONE fetching content from: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "RemoteAssetService"

    invoke-virtual {v2, v3, v1}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Text: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-direct {v0, v11, v6, v5}, Lin/juspay/hypersdk/services/RemoteAssetService;->decideAndUpdateInternalStorage([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v9, v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v9, v13, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {v0, v5, v9}, Lin/juspay/hypersdk/services/RemoteAssetService;->setMetadata(Ljava/lang/String;Lorg/json/JSONObject;)V

    return v8
.end method

.method private setMetadata(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->assetMetadata:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/services/RemoteAssetService;->getMetadata(Ljava/lang/String;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->assetMetadata:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->sdkName:Ljava/lang/String;

    iget-object p2, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->assetMetadata:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "asset_metadata.json"

    invoke-static {p1, v0, p2}, Lin/juspay/hypersdk/data/KeyValueStore;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unZipAndVerify([BLjava/lang/String;)[B
    .locals 11

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getFileProviderService()Lin/juspay/hypersdk/services/FileProviderService;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    if-eqz p1, :cond_7

    const-string v2, ".zip"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v8, 0x0

    move-object v3, v8

    move-object v9, v3

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v10, "signature"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v10, ".jsa"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "certificate"

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-object v9, v5

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v10, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v4, "remoteAssetPublicKey"

    invoke-virtual {v0, v4}, Lin/juspay/hypersdk/services/FileProviderService;->getAssetFileAsByte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v10, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    const-string v2, "DSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v2, v9}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v2, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v3, "system"

    const-string v4, "info"

    const-string v5, "remote_asset_service"

    const-string v6, "signature_not_verified"

    move-object v2, v1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    return-object v8

    :cond_5
    :try_start_4
    const-string v3, "system"

    const-string v4, "info"

    const-string v5, "remote_asset_service"

    const-string v6, "signature_verified"

    move-object v2, v1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    return-object v9

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_4

    :catch_2
    move-exception p2

    goto :goto_5

    :catch_3
    move-exception p2

    goto :goto_6

    :catchall_0
    move-exception p2

    goto :goto_7

    :catch_4
    move-exception p2

    move-object v10, v8

    :goto_2
    move-object v8, p2

    :try_start_6
    const-string v3, "RemoteAssetService"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "remote_asset_service"

    const-string v7, "Exception while matching Signature for file"

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v10, :cond_7

    :goto_3
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_8

    :catch_5
    move-exception p2

    move-object v10, v8

    :goto_4
    move-object v8, p2

    :try_start_8
    const-string v3, "RemoteAssetService"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "remote_asset_service"

    const-string v7, "Key Used was Invalid"

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v10, :cond_7

    goto :goto_3

    :catch_6
    move-exception p2

    move-object v10, v8

    :goto_5
    move-object v8, p2

    const-string v3, "RemoteAssetService"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "remote_asset_service"

    const-string v7, "DSA Algorithm not found"

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v10, :cond_7

    goto :goto_3

    :catch_7
    move-exception p2

    move-object v10, v8

    :goto_6
    move-object v8, p2

    const-string v3, "RemoteAssetService"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "remote_asset_service"

    const-string v7, "Exception while Reading Public Key"

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v10, :cond_7

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object v8, v10

    :goto_7
    if-eqz v8, :cond_6

    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_6
    throw p2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    move-exception p2

    move-object v8, p2

    const-string v3, "RemoteAssetService"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "remote_asset_service"

    const-string v7, "Exception while verifying Signature"

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_8
    return-object p1
.end method

.method private unzipAndUpdateInternalStorage([B)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getFileProviderService()Lin/juspay/hypersdk/services/FileProviderService;

    move-result-object v0

    invoke-static {p1}, Lin/juspay/hypersdk/utils/EncryptionHelper;->md5([B)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lin/juspay/hypersdk/services/FileProviderService;->updateCertificate(Ljava/lang/String;[B)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private updateCertificates(Ljava/lang/String;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v2}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v2

    invoke-virtual/range {p0 .. p1}, Lin/juspay/hypersdk/services/RemoteAssetService;->getMetadata(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "lastChecked"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v12, "zipHashInDisk"

    const-string v13, "hashInDisk"

    const-string v5, ""

    if-eqz v3, :cond_0

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v3, v5

    move-object v6, v3

    :goto_0
    invoke-direct {v0, v6, v1}, Lin/juspay/hypersdk/services/RemoteAssetService;->download(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v7}, Lin/juspay/hypersdk/utils/EncryptionHelper;->md5([B)Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    move-object v15, v6

    const/4 v14, 0x0

    :goto_1
    invoke-direct {v0, v7, v10}, Lin/juspay/hypersdk/services/RemoteAssetService;->unZipAndVerify([BLjava/lang/String;)[B

    move-result-object v8

    iget-object v4, v0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "DONE fetching content from: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "RemoteAssetService"

    invoke-virtual {v4, v7, v6}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "hashInDisk: "

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v7, v3}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v4, "newHash: "

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Hash of used file \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' is now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v4, "system"

    const-string v5, "info"

    const-string v6, "remote_asset_service"

    const-string v7, "remote_asset_service_update_hash"

    move-object v3, v2

    move-object/from16 p2, v12

    move-object v12, v8

    move-object/from16 v8, v16

    invoke-virtual/range {v3 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v12, :cond_2

    if-nez v14, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ETAG matches for \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'. Not downloading from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v4, "system"

    const-string v5, "info"

    const-string v6, "remote_asset_service"

    const-string v7, "remote_asset_service_etag_match"

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-direct {v0, v12}, Lin/juspay/hypersdk/services/RemoteAssetService;->unzipAndUpdateInternalStorage([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v9, v11, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v9, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v2, p2

    invoke-virtual {v9, v2, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {v0, v1, v9}, Lin/juspay/hypersdk/services/RemoteAssetService;->setMetadata(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getContent(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lin/juspay/hypersdk/services/RemoteAssetService;->getAssetTtl()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lin/juspay/hypersdk/services/RemoteAssetService;->getContent(Ljava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method public getMetadata(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->sdkName:Ljava/lang/String;

    const-string v3, "asset_metadata.json"

    const-string v4, "{}"

    invoke-static {v2, v3, v4}, Lin/juspay/hypersdk/data/KeyValueStore;->read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->assetMetadata:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "assetMetadata: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->assetMetadata:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteAssetService"

    invoke-virtual {v0, v2, v1}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->assetMetadata:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->assetMetadata:Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->assetMetadata:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, 0x0

    const-string v2, "lastChecked"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->assetMetadata:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, ""

    const-string v2, "hashInDisk"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->assetMetadata:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "zipHashInDisk"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->assetMetadata:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    return-object p1

    :catch_0
    move-exception p1

    const-string v2, "RemoteAssetService"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "remote_asset_service"

    const-string v6, "Exception trying to read from KeyStore: asset_metadata.json"

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected internal error."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public renewFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lin/juspay/hypersdk/services/RemoteAssetService;->getAssetTtl()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lin/juspay/hypersdk/services/RemoteAssetService;->renewFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public renewFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Looking to renew file: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteAssetService"

    invoke-virtual {v0, v2, v1}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;

    move-object v3, v0

    move-object v4, p1

    move-object v5, p5

    move-object v6, p2

    move-wide v7, p3

    move-object v9, p0

    invoke-direct/range {v3 .. v9}, Lin/juspay/hypersdk/services/RemoteAssetService$AssetDownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLin/juspay/hypersdk/services/RemoteAssetService;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public renewFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lin/juspay/hypersdk/services/RemoteAssetService;->getAssetTtl()J

    move-result-wide v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lin/juspay/hypersdk/services/RemoteAssetService;->renewFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public resetMetadata(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->assetMetadata:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/services/RemoteAssetService;->getMetadata(Ljava/lang/String;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->assetMetadata:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->sdkName:Ljava/lang/String;

    iget-object v0, p0, Lin/juspay/hypersdk/services/RemoteAssetService;->assetMetadata:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asset_metadata.json"

    invoke-static {p1, v1, v0}, Lin/juspay/hypersdk/data/KeyValueStore;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
