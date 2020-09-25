.class public Lcom/axis/axismerchantsdk/util/RemoteAssetService;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/axis/axismerchantsdk/util/RemoteAssetService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/axis/axismerchantsdk/util/RemoteAssetService;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;Z)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "/"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_hash"

    const/4 v2, 0x0

    const-string v3, "UPI"

    const-string v4, ".zip"

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {p0, v0}, Lcom/axis/axismerchantsdk/util/FileUtil;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_1

    .line 70
    invoke-static {v6}, Lcom/axis/axismerchantsdk/util/FileUtil;->extraCallback([B)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v5

    .line 74
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".md5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/axis/axismerchantsdk/analytics/RestClient;->extraCallback(Ljava/lang/String;Ljava/util/Map;)Lcom/axis/axismerchantsdk/model/ApiResponse;

    move-result-object v7

    const/16 v8, 0xc8

    if-eqz v6, :cond_3

    if-eqz v7, :cond_2

    .line 1021
    iget v9, v7, Lcom/axis/axismerchantsdk/model/ApiResponse;->extraCallback:I

    if-ne v9, v8, :cond_2

    .line 77
    new-instance v9, Ljava/lang/String;

    .line 1029
    iget-object v7, v7, Lcom/axis/axismerchantsdk/model/ApiResponse;->onNavigationEvent:[B

    const-string v10, "UTF-8"

    .line 77
    invoke-direct {v9, v7, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    return-object v5

    .line 83
    :cond_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "ts"

    invoke-virtual {v6, v9, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 89
    invoke-static {p1, v6}, Lcom/axis/axismerchantsdk/analytics/RestClient;->extraCallback(Ljava/lang/String;Ljava/util/Map;)Lcom/axis/axismerchantsdk/model/ApiResponse;

    move-result-object v6

    const/4 v7, -0x1

    if-eqz v6, :cond_b

    .line 2021
    iget v11, v6, Lcom/axis/axismerchantsdk/model/ApiResponse;->extraCallback:I

    if-ne v11, v8, :cond_b

    .line 92
    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz p2, :cond_b

    .line 2029
    iget-object p2, v6, Lcom/axis/axismerchantsdk/model/ApiResponse;->onNavigationEvent:[B

    .line 94
    invoke-static {p2}, Lcom/axis/axismerchantsdk/util/FileUtil;->extraCallback([B)Ljava/lang/String;

    move-result-object v4

    .line 96
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 97
    new-instance p2, Ljava/util/zip/ZipInputStream;

    invoke-direct {p2, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 101
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 102
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 103
    new-instance v9, Lcom/axis/axismerchantsdk/analytics/Event;

    invoke-direct {v9}, Lcom/axis/axismerchantsdk/analytics/Event;-><init>()V

    sget-object v10, Lcom/axis/axismerchantsdk/analytics/Event$Category;->onPostMessage:Lcom/axis/axismerchantsdk/analytics/Event$Category;

    .line 2048
    invoke-static {v10}, Lcom/axis/axismerchantsdk/analytics/Event$Category;->ICustomTabsCallback(Lcom/axis/axismerchantsdk/analytics/Event$Category;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/axis/axismerchantsdk/analytics/Event;->extraCallback:Ljava/lang/String;

    const-string v10, "INFO"

    .line 104
    invoke-static {v10}, Lcom/axis/axismerchantsdk/analytics/Event$Action;->valueOf(Ljava/lang/String;)Lcom/axis/axismerchantsdk/analytics/Event$Action;

    move-result-object v10

    .line 3017
    iget-object v10, v10, Lcom/axis/axismerchantsdk/analytics/Event$Action;->extraCallback:Ljava/lang/String;

    .line 3057
    iput-object v10, v9, Lcom/axis/axismerchantsdk/analytics/Event;->ICustomTabsCallback:Ljava/lang/String;

    const-string v10, "file_download_time"

    .line 3066
    iput-object v10, v9, Lcom/axis/axismerchantsdk/analytics/Event;->onNavigationEvent:Ljava/lang/String;

    .line 105
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3075
    iput-object p1, v9, Lcom/axis/axismerchantsdk/analytics/Event;->onMessageChannelReady:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback(Lcom/axis/axismerchantsdk/analytics/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object p1, v5

    move-object v8, p1

    .line 115
    :cond_4
    :goto_1
    :try_start_1
    invoke-virtual {p2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 116
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 117
    :goto_2
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v11

    if-eq v11, v7, :cond_5

    .line 118
    invoke-virtual {v10, v11}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2

    .line 120
    :cond_5
    invoke-virtual {p2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 121
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 122
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".signature"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 123
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v8

    goto :goto_1

    .line 124
    :cond_6
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, ".jsa"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 125
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    goto :goto_1

    :cond_7
    if-nez p1, :cond_8

    if-nez v8, :cond_8

    return-object v5

    .line 137
    :cond_8
    :try_start_2
    new-instance p2, Ljava/io/ObjectInputStream;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    const-string v10, "remoteAssetPublicKey"

    invoke-static {p0, v10}, Lcom/axis/axismerchantsdk/util/FileUtil;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p2, v9}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :try_start_3
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/PublicKey;

    const-string v10, "DSA"

    .line 141
    invoke-static {v10}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v10

    .line 142
    invoke-virtual {v10, v9}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 145
    invoke-virtual {v10, p1}, Ljava/security/Signature;->update([B)V

    .line 146
    invoke-virtual {v10, v8}, Ljava/security/Signature;->verify([B)Z

    move-result v8

    if-nez v8, :cond_9

    .line 147
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object p0

    new-instance p1, Lcom/axis/axismerchantsdk/analytics/Event;

    invoke-direct {p1}, Lcom/axis/axismerchantsdk/analytics/Event;-><init>()V

    sget-object v1, Lcom/axis/axismerchantsdk/analytics/Event$Action;->onNavigationEvent:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    .line 4017
    iget-object v1, v1, Lcom/axis/axismerchantsdk/analytics/Event$Action;->extraCallback:Ljava/lang/String;

    .line 4057
    iput-object v1, p1, Lcom/axis/axismerchantsdk/analytics/Event;->ICustomTabsCallback:Ljava/lang/String;

    .line 148
    sget-object v1, Lcom/axis/axismerchantsdk/analytics/Event$Category;->onPostMessage:Lcom/axis/axismerchantsdk/analytics/Event$Category;

    .line 5048
    invoke-static {v1}, Lcom/axis/axismerchantsdk/analytics/Event$Category;->ICustomTabsCallback(Lcom/axis/axismerchantsdk/analytics/Event$Category;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/axis/axismerchantsdk/analytics/Event;->extraCallback:Ljava/lang/String;

    const-string/jumbo v1, "signature_not_verified"

    .line 5066
    iput-object v1, p1, Lcom/axis/axismerchantsdk/analytics/Event;->onNavigationEvent:Ljava/lang/String;

    .line 5075
    iput-object v0, p1, Lcom/axis/axismerchantsdk/analytics/Event;->onMessageChannelReady:Ljava/lang/String;

    .line 147
    invoke-virtual {p0, p1}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback(Lcom/axis/axismerchantsdk/analytics/Event;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    :goto_3
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    goto/16 :goto_9

    .line 155
    :cond_9
    :try_start_5
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object v8

    new-instance v9, Lcom/axis/axismerchantsdk/analytics/Event;

    invoke-direct {v9}, Lcom/axis/axismerchantsdk/analytics/Event;-><init>()V

    sget-object v10, Lcom/axis/axismerchantsdk/analytics/Event$Action;->onPostMessage:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    .line 6017
    iget-object v10, v10, Lcom/axis/axismerchantsdk/analytics/Event$Action;->extraCallback:Ljava/lang/String;

    .line 6057
    iput-object v10, v9, Lcom/axis/axismerchantsdk/analytics/Event;->ICustomTabsCallback:Ljava/lang/String;

    .line 156
    sget-object v10, Lcom/axis/axismerchantsdk/analytics/Event$Category;->onPostMessage:Lcom/axis/axismerchantsdk/analytics/Event$Category;

    .line 7048
    invoke-static {v10}, Lcom/axis/axismerchantsdk/analytics/Event$Category;->ICustomTabsCallback(Lcom/axis/axismerchantsdk/analytics/Event$Category;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/axis/axismerchantsdk/analytics/Event;->extraCallback:Ljava/lang/String;

    const-string/jumbo v10, "signature_verified"

    .line 7066
    iput-object v10, v9, Lcom/axis/axismerchantsdk/analytics/Event;->onNavigationEvent:Ljava/lang/String;

    .line 7075
    iput-object v0, v9, Lcom/axis/axismerchantsdk/analytics/Event;->onMessageChannelReady:Ljava/lang/String;

    .line 155
    invoke-virtual {v8, v9}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback(Lcom/axis/axismerchantsdk/analytics/Event;)V

    .line 162
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 175
    :try_start_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    return-object p1

    :catch_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception p0

    goto :goto_6

    :catch_4
    move-exception p0

    goto :goto_7

    :catchall_0
    move-exception p0

    move-object p2, v5

    goto :goto_8

    :catch_5
    move-exception p0

    move-object p2, v5

    .line 173
    :goto_4
    :try_start_7
    sget-object p1, Lcom/axis/axismerchantsdk/util/RemoteAssetService;->onNavigationEvent:Ljava/lang/String;

    const-string v0, "Exception while matching Signature for file"

    invoke-static {p1, v0, p0}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_b

    goto :goto_3

    :catch_6
    move-exception p0

    move-object p2, v5

    .line 171
    :goto_5
    sget-object p1, Lcom/axis/axismerchantsdk/util/RemoteAssetService;->onNavigationEvent:Ljava/lang/String;

    const-string v0, "Key Used was Invalid"

    invoke-static {p1, v0, p0}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_b

    goto :goto_3

    :catch_7
    move-exception p0

    move-object p2, v5

    .line 169
    :goto_6
    sget-object p1, Lcom/axis/axismerchantsdk/util/RemoteAssetService;->onNavigationEvent:Ljava/lang/String;

    const-string v0, "DSA Algorithm not found"

    invoke-static {p1, v0, p0}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_b

    goto :goto_3

    :catch_8
    move-exception p0

    move-object p2, v5

    .line 167
    :goto_7
    sget-object p1, Lcom/axis/axismerchantsdk/util/RemoteAssetService;->onNavigationEvent:Ljava/lang/String;

    const-string v0, "Exception while Reading Public Key"

    invoke-static {p1, v0, p0}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz p2, :cond_b

    goto/16 :goto_3

    :catchall_1
    move-exception p0

    :goto_8
    if-eqz p2, :cond_a

    .line 175
    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 176
    :cond_a
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    :catch_9
    move-exception p0

    .line 178
    sget-object p1, Lcom/axis/axismerchantsdk/util/RemoteAssetService;->onNavigationEvent:Ljava/lang/String;

    const-string p2, "Exception while verifying Signature"

    invoke-static {p1, p2, p0}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8021
    :cond_b
    :goto_9
    iget p0, v6, Lcom/axis/axismerchantsdk/model/ApiResponse;->extraCallback:I

    const/16 p1, 0x130

    if-eq p0, p1, :cond_d

    .line 9021
    iget p0, v6, Lcom/axis/axismerchantsdk/model/ApiResponse;->extraCallback:I

    if-ne p0, v7, :cond_c

    goto :goto_a

    .line 9029
    :cond_c
    iget-object p0, v6, Lcom/axis/axismerchantsdk/model/ApiResponse;->onNavigationEvent:[B

    return-object p0

    :cond_d
    :goto_a
    return-object v5
.end method

.method public static onPostMessage(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "/"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {p0, p1, p2}, Lcom/axis/axismerchantsdk/util/RemoteAssetService;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p2, ".zip"

    const-string v1, ".jsa"

    .line 43
    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/axis/axismerchantsdk/util/FileUtil;->extraCallback(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 49
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 47
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
