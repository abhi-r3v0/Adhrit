.class public Lcom/freshchat/consumer/sdk/j/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/FreshchatImageLoader;


# instance fields
.field private final la:Lcom/squareup/picasso/Picasso;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "FRESHCHAT"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->hI:Lcom/freshchat/consumer/sdk/b/c;

    goto :goto_0

    :catch_1
    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->hH:Lcom/freshchat/consumer/sdk/b/c;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/t;->la:Lcom/squareup/picasso/Picasso;

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "FreshchatImageLoaderRequest instance must not be null in "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static bu(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/j/t;
    .locals 1

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ba;->fZ()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/freshchat/consumer/sdk/b/c;->kY:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FRESHCHAT_WARNING"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/j/t;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/j/t;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public fetch(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;)V
    .locals 14

    const-string v0, "fetch"

    invoke-direct {p0, p1, v0}, Lcom/freshchat/consumer/sdk/j/t;->a(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/t;->la:Lcom/squareup/picasso/Picasso;

    if-nez v0, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->kK:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FRESHCHAT"

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 5273
    new-instance v1, Lo/getPlatformVersion;

    invoke-direct {v1, v0, p1}, Lo/getPlatformVersion;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;)V

    .line 5419
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 5424
    iget-object p1, v1, Lo/getPlatformVersion;->ICustomTabsCallback:Lo/newRunLoop$onPostMessage;

    .line 6245
    iget-object v0, p1, Lo/newRunLoop$onPostMessage;->onPostMessage:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_2

    iget p1, p1, Lo/newRunLoop$onPostMessage;->ICustomTabsCallback:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_9

    .line 5426
    iget-object p1, v1, Lo/getPlatformVersion;->ICustomTabsCallback:Lo/newRunLoop$onPostMessage;

    .line 6253
    iget-object p1, p1, Lo/newRunLoop$onPostMessage;->extraCallback:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    if-eqz p1, :cond_3

    const/4 v4, 0x1

    :cond_3
    if-nez v4, :cond_6

    .line 5427
    iget-object p1, v1, Lo/getPlatformVersion;->ICustomTabsCallback:Lo/newRunLoop$onPostMessage;

    sget-object v0, Lcom/squareup/picasso/Picasso$onMessageChannelReady;->onNavigationEvent:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    if-eqz v0, :cond_5

    .line 6411
    iget-object v4, p1, Lo/newRunLoop$onPostMessage;->extraCallback:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    if-nez v4, :cond_4

    .line 6414
    iput-object v0, p1, Lo/newRunLoop$onPostMessage;->extraCallback:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    goto :goto_2

    .line 6412
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Priority already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6409
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Priority invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5430
    :cond_6
    :goto_2
    invoke-virtual {v1, v2, v3}, Lo/getPlatformVersion;->ICustomTabsCallback(J)Lo/newRunLoop;

    move-result-object v8

    .line 5431
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, p1}, Lo/saveUserOverwrite;->onPostMessage(Lo/newRunLoop;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v12

    .line 5432
    iget-object p1, v1, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1, v12}, Lcom/squareup/picasso/Picasso;->onPostMessage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 5435
    iget-object p1, v1, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    iget-boolean p1, p1, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz p1, :cond_7

    .line 7160
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[R"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v8, Lo/newRunLoop;->onPostMessage:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5436
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/squareup/picasso/Picasso$extraCallback;->onPostMessage:Lcom/squareup/picasso/Picasso$extraCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Main"

    const-string v2, "completed"

    invoke-static {v1, v2, p1, v0}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    .line 5442
    :cond_8
    new-instance p1, Lo/removeTokenChangeListener;

    iget-object v7, v1, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v13}, Lo/removeTokenChangeListener;-><init>(Lcom/squareup/picasso/Picasso;Lo/newRunLoop;IILjava/lang/Object;Ljava/lang/String;Lo/onPostMessage$extraCallback;)V

    .line 5444
    iget-object v0, v1, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    .line 7480
    iget-object v0, v0, Lcom/squareup/picasso/Picasso;->onNavigationEvent:Lo/forUnauthenticatedAccess;

    .line 8138
    iget-object v1, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    iget-object v0, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_9
    return-void
.end method

.method public get(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;)Landroid/graphics/Bitmap;
    .locals 12

    const-string v0, "get"

    invoke-direct {p0, p1, v0}, Lcom/freshchat/consumer/sdk/j/t;->a(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/t;->la:Lcom/squareup/picasso/Picasso;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->kK:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FRESHCHAT"

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 4273
    new-instance v2, Lo/getPlatformVersion;

    invoke-direct {v2, v0, p1}, Lo/getPlatformVersion;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;)V

    .line 4382
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 4383
    invoke-static {}, Lo/saveUserOverwrite;->ICustomTabsCallback()V

    .line 4388
    iget-object p1, v2, Lo/getPlatformVersion;->ICustomTabsCallback:Lo/newRunLoop$onPostMessage;

    .line 5245
    iget-object v0, p1, Lo/newRunLoop$onPostMessage;->onPostMessage:Landroid/net/Uri;

    if-nez v0, :cond_2

    iget p1, p1, Lo/newRunLoop$onPostMessage;->ICustomTabsCallback:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_3

    return-object v1

    .line 4392
    :cond_3
    invoke-virtual {v2, v3, v4}, Lo/getPlatformVersion;->ICustomTabsCallback(J)Lo/newRunLoop;

    move-result-object v7

    .line 4393
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, p1}, Lo/saveUserOverwrite;->onPostMessage(Lo/newRunLoop;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    .line 4395
    new-instance p1, Lo/isUnauthenticatedUsage;

    iget-object v6, v2, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Lo/isUnauthenticatedUsage;-><init>(Lcom/squareup/picasso/Picasso;Lo/newRunLoop;IILjava/lang/Object;Ljava/lang/String;)V

    .line 4396
    iget-object v0, v2, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    iget-object v3, v2, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    iget-object v3, v3, Lcom/squareup/picasso/Picasso;->onNavigationEvent:Lo/forUnauthenticatedAccess;

    iget-object v4, v2, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    iget-object v4, v4, Lcom/squareup/picasso/Picasso;->onPostMessage:Lo/doTransaction;

    iget-object v2, v2, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    iget-object v2, v2, Lcom/squareup/picasso/Picasso;->asBinder:Lo/createPersistenceManager;

    invoke-static {v0, v3, v4, v2, p1}, Lo/getRepo;->onPostMessage(Lcom/squareup/picasso/Picasso;Lo/forUnauthenticatedAccess;Lo/doTransaction;Lo/createPersistenceManager;Lo/limitToLast;)Lo/getRepo;

    move-result-object p1

    invoke-virtual {p1}, Lo/getRepo;->ICustomTabsCallback()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public load(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Landroid/widget/ImageView;)V
    .locals 4

    if-eqz p2, :cond_6

    const-string v0, "load"

    invoke-direct {p0, p1, v0}, Lcom/freshchat/consumer/sdk/j/t;->a(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/t;->la:Lcom/squareup/picasso/Picasso;

    if-nez v0, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->kK:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FRESHCHAT"

    invoke-static {p2, p1}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 1273
    new-instance v2, Lo/getPlatformVersion;

    invoke-direct {v2, v0, v1}, Lo/getPlatformVersion;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->getTargetHeight()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->getTargetWidth()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->getTargetWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->getTargetHeight()I

    move-result v1

    .line 2219
    iget-object v3, v2, Lo/getPlatformVersion;->ICustomTabsCallback:Lo/newRunLoop$onPostMessage;

    invoke-virtual {v3, v0, v1}, Lo/newRunLoop$onPostMessage;->onPostMessage(II)Lo/newRunLoop$onPostMessage;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->shouldMaintainAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2238
    iget-object v0, v2, Lo/getPlatformVersion;->ICustomTabsCallback:Lo/newRunLoop$onPostMessage;

    const/4 v1, 0x1

    .line 2348
    iput-boolean v1, v0, Lo/newRunLoop$onPostMessage;->onNavigationEvent:Z

    :cond_2
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->getTransformToApply()Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    move-result-object p1

    sget-object v0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;->CIRCULAR:Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    if-ne p1, v0, :cond_5

    new-instance p1, Lcom/freshchat/consumer/sdk/j/s;

    invoke-direct {p1}, Lcom/freshchat/consumer/sdk/j/s;-><init>()V

    .line 3302
    iget-object v0, v2, Lo/getPlatformVersion;->ICustomTabsCallback:Lo/newRunLoop$onPostMessage;

    .line 3427
    invoke-interface {p1}, Lo/newPersistentConnection;->key()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3430
    iget-object v1, v0, Lo/newRunLoop$onPostMessage;->onMessageChannelReady:Ljava/util/List;

    if-nez v1, :cond_3

    .line 3431
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lo/newRunLoop$onPostMessage;->onMessageChannelReady:Ljava/util/List;

    .line 3433
    :cond_3
    iget-object v0, v0, Lo/newRunLoop$onPostMessage;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3428
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transformation key must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 3601
    invoke-virtual {v2, p2, p1}, Lo/getPlatformVersion;->onNavigationEvent(Landroid/widget/ImageView;Lo/onPostMessage$extraCallback;)V

    return-void

    .line 0
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
