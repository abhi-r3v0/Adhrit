.class final Lcom/appsflyer/AppsFlyerLibCore$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLibCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final ɩ:Lcom/appsflyer/AFEvent;

.field private synthetic Ι:Lcom/appsflyer/AppsFlyerLibCore;


# direct methods
.method private constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;)V
    .locals 0

    .line 3314
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3315
    invoke-virtual {p2}, Lcom/appsflyer/AFEvent;->weakContext()Lcom/appsflyer/AFEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->ɩ:Lcom/appsflyer/AFEvent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;B)V
    .locals 0

    .line 3311
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/AppsFlyerLibCore$a;-><init>(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 3319
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->ɩ:Lcom/appsflyer/AFEvent;

    invoke-virtual {v0}, Lcom/appsflyer/AFEvent;->params()Ljava/util/Map;

    move-result-object v0

    .line 3320
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->ɩ:Lcom/appsflyer/AFEvent;

    invoke-virtual {v1}, Lcom/appsflyer/AFEvent;->Ι()Z

    move-result v1

    .line 3321
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->ɩ:Lcom/appsflyer/AFEvent;

    invoke-virtual {v2}, Lcom/appsflyer/AFEvent;->urlString()Ljava/lang/String;

    move-result-object v2

    .line 3322
    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->ɩ:Lcom/appsflyer/AFEvent;

    .line 4192
    iget v3, v3, Lcom/appsflyer/AFEvent;->ɨ:I

    .line 3323
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->ɩ:Lcom/appsflyer/AFEvent;

    invoke-virtual {v4}, Lcom/appsflyer/AFEvent;->context()Landroid/content/Context;

    move-result-object v4

    .line 3325
    iget-object v5, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerLib;->isTrackingStopped()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x0

    new-array v6, v5, [B

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_7

    if-gt v3, v7, :cond_7

    .line 3330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3331
    iget-object v9, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v9}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Lcom/appsflyer/AppsFlyerLibCore;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3332
    iget-object v9, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v9}, Lcom/appsflyer/AppsFlyerLibCore;->ι(Lcom/appsflyer/AppsFlyerLibCore;)Lcom/appsflyer/internal/referrer/GoogleReferrer;

    move-result-object v9

    iget-object v9, v9, Lcom/appsflyer/internal/referrer/GoogleReferrer;->oldMap:Ljava/util/Map;

    const-string/jumbo v10, "rfr"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3333
    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 3334
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "newGPReferrerSent"

    .line 3335
    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 3336
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3337
    iget-object v9, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v9}, Lcom/appsflyer/AppsFlyerLibCore;->ι(Lcom/appsflyer/AppsFlyerLibCore;)Lcom/appsflyer/internal/referrer/GoogleReferrer;

    move-result-object v9

    iget-object v9, v9, Lcom/appsflyer/internal/referrer/GoogleReferrer;->newMap:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3339
    :cond_1
    iget-object v9, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v9}, Lcom/appsflyer/AppsFlyerLibCore;->і(Lcom/appsflyer/AppsFlyerLibCore;)Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 3340
    iget-object v9, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v9}, Lcom/appsflyer/AppsFlyerLibCore;->і(Lcom/appsflyer/AppsFlyerLibCore;)Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    move-result-object v9

    iget-object v9, v9, Lcom/appsflyer/internal/referrer/HuaweiReferrer;->map:Ljava/util/Map;

    if-eqz v9, :cond_2

    .line 3342
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3343
    :cond_2
    iget-object v9, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v9}, Lcom/appsflyer/AppsFlyerLibCore;->і(Lcom/appsflyer/AppsFlyerLibCore;)Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/appsflyer/internal/ContentFetcher;->valid()Z

    move-result v9

    if-eqz v9, :cond_3

    if-ne v3, v7, :cond_3

    .line 3344
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v9, "source"

    const-string v10, "huawei"

    .line 3345
    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "response"

    const-string v10, "TIMEOUT"

    .line 3346
    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3347
    new-instance v9, Lcom/appsflyer/internal/referrer/MandatoryFields;

    invoke-direct {v9}, Lcom/appsflyer/internal/referrer/MandatoryFields;-><init>()V

    invoke-interface {v3, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3348
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3351
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "referrers"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3352
    :cond_4
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3353
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "fb_ddl"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3355
    :cond_5
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->Ӏ(Lcom/appsflyer/AppsFlyerLibCore;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3356
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->ı(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "lvl"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3357
    :cond_6
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->І(Lcom/appsflyer/AppsFlyerLibCore;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3358
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v3}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Lcom/appsflyer/AppsFlyerLibCore;Ljava/util/Map;)Ljava/util/Map;

    .line 3359
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->ı(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "error"

    const-string v9, "operation timed out."

    invoke-interface {v1, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3364
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->ɩ:Lcom/appsflyer/AFEvent;

    instance-of v1, v1, Lcom/appsflyer/internal/model/event/AdRevenue;

    if-nez v1, :cond_8

    .line 3365
    new-instance v1, Lcom/appsflyer/internal/c$a;

    invoke-direct {v1, v0, v4}, Lcom/appsflyer/internal/c$a;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_8
    const/4 v1, 0x0

    .line 3369
    :try_start_0
    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->ɩ:Lcom/appsflyer/AFEvent;

    iget-object v9, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->ɩ:Lcom/appsflyer/AFEvent;

    instance-of v9, v9, Lcom/appsflyer/internal/model/event/AdRevenue;

    if-eqz v9, :cond_9

    const-string v9, "af_key"

    .line 3370
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_2

    :cond_9
    const-string v9, "appsflyerKey"

    .line 3371
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3369
    :goto_2
    invoke-virtual {v3, v9}, Lcom/appsflyer/AFEvent;->key(Ljava/lang/String;)Lcom/appsflyer/AFEvent;

    .line 3372
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3373
    :try_start_1
    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->ɩ:Lcom/appsflyer/AFEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-array v9, v8, [Ljava/lang/Object;

    aput-object v3, v9, v5

    const/16 v3, 0x30

    const/16 v10, 0x2dee

    const/16 v11, 0x18

    invoke-static {v3, v10, v11}, Lcom/appsflyer/internal/d;->ǃ(ICI)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-string/jumbo v10, "\u0269"

    new-array v11, v8, [Ljava/lang/Class;

    const-class v12, Lcom/appsflyer/AFEvent;

    aput-object v12, v11, v5

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3374
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3375
    :try_start_4
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v5, p0, Lcom/appsflyer/AppsFlyerLibCore$a;->ɩ:Lcom/appsflyer/AFEvent;

    invoke-virtual {v5, v3}, Lcom/appsflyer/AFEvent;->post([B)Lcom/appsflyer/AFEvent;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/appsflyer/AppsFlyerLibCore;->ı(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return-void

    :catch_0
    move-exception v0

    move-object v6, v3

    goto :goto_4

    :catchall_0
    move-exception v5

    move-object v6, v3

    goto :goto_3

    :catchall_1
    move-exception v3

    .line 3373
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_a

    throw v5

    :cond_a
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v5

    .line 3374
    :goto_3
    :try_start_6
    monitor-exit v0

    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    .line 3384
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    :goto_4
    const-string v3, "Exception while sending request to server. "

    .line 3378
    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v6, :cond_f

    if-eqz v4, :cond_f

    const-string v3, "&isCachedRequest=true&timeincache="

    .line 3379
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 3380
    invoke-static {}, Lcom/appsflyer/internal/aa;->ǃ()Lcom/appsflyer/internal/aa;

    new-instance v3, Lcom/appsflyer/internal/j;

    const-string v5, "5.4.1"

    invoke-direct {v3, v2, v6, v5}, Lcom/appsflyer/internal/j;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 5059
    :try_start_7
    invoke-static {v4}, Lcom/appsflyer/internal/aa;->ι(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 5060
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_b

    .line 5062
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto/16 :goto_6

    .line 5065
    :cond_b
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 5066
    array-length v2, v2

    const/16 v5, 0x28

    if-le v2, v5, :cond_c

    const-string v2, "AppsFlyer_5.4.1"

    const-string v3, "reached cache limit, not caching request"

    .line 5067
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_c
    const-string v2, "AppsFlyer_5.4.1"

    const-string v5, "caching request..."

    .line 5070
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5071
    new-instance v2, Ljava/io/File;

    invoke-static {v4}, Lcom/appsflyer/internal/aa;->ι(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5072
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 5073
    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    const-string/jumbo v1, "version="

    .line 5074
    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 6057
    iget-object v1, v3, Lcom/appsflyer/internal/j;->ɩ:Ljava/lang/String;

    .line 5075
    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 5076
    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(I)V

    const-string/jumbo v2, "url="

    .line 5078
    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 6073
    iget-object v2, v3, Lcom/appsflyer/internal/j;->ı:Ljava/lang/String;

    .line 5079
    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5080
    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(I)V

    const-string v2, "data="

    .line 5082
    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5083
    invoke-virtual {v3}, Lcom/appsflyer/internal/j;->ǃ()[B

    move-result-object v2

    invoke-static {v2, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5084
    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(I)V

    .line 5086
    invoke-virtual {v4}, Ljava/io/Writer;->flush()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 5093
    :try_start_9
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v1, v4

    goto :goto_7

    :catch_2
    move-object v1, v4

    goto :goto_5

    :catchall_5
    move-exception v0

    goto :goto_7

    :catch_3
    :goto_5
    :try_start_a
    const-string v2, "AppsFlyer_5.4.1"

    const-string v3, "Could not cache request"

    .line 5089
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v1, :cond_d

    .line 5093
    :try_start_b
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 3381
    :catch_4
    :cond_d
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    if-eqz v1, :cond_e

    .line 5093
    :try_start_c
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 5097
    :catch_5
    :cond_e
    throw v0

    :cond_f
    :goto_8
    return-void
.end method
