.class public final Lo/getRepo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final extraCommand:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final mayLaunchUrl:Lo/newLogger;

.field private static final postMessage:Ljava/lang/Object;

.field private static final updateVisuals:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final ICustomTabsCallback:I

.field final ICustomTabsCallback$Stub:Lo/newLogger;

.field public ICustomTabsCallback$Stub$Proxy:Lcom/squareup/picasso/Picasso$extraCallback;

.field ICustomTabsService:I

.field private ICustomTabsService$Stub$Proxy:Lo/createPersistenceManager;

.field private IPostMessageService:I

.field private IPostMessageService$Stub:Lo/doTransaction;

.field public asBinder:Landroid/graphics/Bitmap;

.field asInterface:I

.field final extraCallback:Ljava/lang/String;

.field getInterfaceDescriptor:Ljava/lang/Exception;

.field newSession:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lcom/squareup/picasso/Picasso;

.field final onNavigationEvent:I

.field final onPostMessage:Lo/newRunLoop;

.field public onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/limitToLast;",
            ">;"
        }
    .end annotation
.end field

.field public onTransact:Lo/limitToLast;

.field private requestPostMessageChannel:Lo/forUnauthenticatedAccess;

.field warmup:Lcom/squareup/picasso/Picasso$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/getRepo;->postMessage:Ljava/lang/Object;

    .line 52
    new-instance v0, Lo/getRepo$3;

    invoke-direct {v0}, Lo/getRepo$3;-><init>()V

    sput-object v0, Lo/getRepo;->extraCommand:Ljava/lang/ThreadLocal;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lo/getRepo;->updateVisuals:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    new-instance v0, Lo/getRepo$5;

    invoke-direct {v0}, Lo/getRepo$5;-><init>()V

    sput-object v0, Lo/getRepo;->mayLaunchUrl:Lo/newLogger;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/picasso/Picasso;Lo/forUnauthenticatedAccess;Lo/doTransaction;Lo/createPersistenceManager;Lo/limitToLast;Lo/newLogger;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    sget-object v0, Lo/getRepo;->updateVisuals:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lo/getRepo;->onNavigationEvent:I

    .line 94
    iput-object p1, p0, Lo/getRepo;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    .line 95
    iput-object p2, p0, Lo/getRepo;->requestPostMessageChannel:Lo/forUnauthenticatedAccess;

    .line 96
    iput-object p3, p0, Lo/getRepo;->IPostMessageService$Stub:Lo/doTransaction;

    .line 97
    iput-object p4, p0, Lo/getRepo;->ICustomTabsService$Stub$Proxy:Lo/createPersistenceManager;

    .line 98
    iput-object p5, p0, Lo/getRepo;->onTransact:Lo/limitToLast;

    .line 1081
    iget-object p1, p5, Lo/limitToLast;->asInterface:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lo/getRepo;->extraCallback:Ljava/lang/String;

    .line 2073
    iget-object p1, p5, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    .line 100
    iput-object p1, p0, Lo/getRepo;->onPostMessage:Lo/newRunLoop;

    .line 2105
    iget-object p1, p5, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    iget-object p1, p1, Lo/newRunLoop;->updateVisuals:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    .line 101
    iput-object p1, p0, Lo/getRepo;->warmup:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    .line 3093
    iget p1, p5, Lo/limitToLast;->onPostMessage:I

    .line 102
    iput p1, p0, Lo/getRepo;->ICustomTabsCallback:I

    .line 3097
    iget p1, p5, Lo/limitToLast;->ICustomTabsCallback$Stub:I

    .line 103
    iput p1, p0, Lo/getRepo;->asInterface:I

    .line 104
    iput-object p6, p0, Lo/getRepo;->ICustomTabsCallback$Stub:Lo/newLogger;

    .line 105
    invoke-virtual {p6}, Lo/newLogger;->onNavigationEvent()I

    move-result p1

    iput p1, p0, Lo/getRepo;->ICustomTabsService:I

    return-void
.end method

.method private static extraCallback(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/newPersistentConnection;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 425
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 426
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/newPersistentConnection;

    const/4 v3, 0x0

    .line 429
    :try_start_0
    invoke-interface {v2, p1}, Lo/newPersistentConnection;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    .line 441
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Transformation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-interface {v2}, Lo/newPersistentConnection;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " returned null after "

    .line 444
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " previous transformation(s).\n\nTransformation list:\n"

    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/newPersistentConnection;

    .line 448
    invoke-interface {v0}, Lo/newPersistentConnection;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 450
    :cond_0
    sget-object p0, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback:Landroid/os/Handler;

    new-instance v0, Lo/getRepo$4;

    invoke-direct {v0, p1}, Lo/getRepo$4;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_1
    if-ne v4, p1, :cond_2

    .line 458
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 459
    sget-object p0, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback:Landroid/os/Handler;

    new-instance p1, Lo/getRepo$1;

    invoke-direct {p1, v2}, Lo/getRepo$1;-><init>(Lo/newPersistentConnection;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_2
    if-eq v4, p1, :cond_3

    .line 470
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 471
    sget-object p0, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback:Landroid/os/Handler;

    new-instance p1, Lo/getRepo$6;

    invoke-direct {p1, v2}, Lo/getRepo$6;-><init>(Lo/newPersistentConnection;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move-object p1, v4

    goto :goto_0

    :catch_0
    move-exception p0

    .line 431
    sget-object p1, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback:Landroid/os/Handler;

    new-instance v0, Lo/getRepo$2;

    invoke-direct {v0, v2, p0}, Lo/getRepo$2;-><init>(Lo/newPersistentConnection;Ljava/lang/RuntimeException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_4
    return-object p1
.end method

.method public static onPostMessage(Lcom/squareup/picasso/Picasso;Lo/forUnauthenticatedAccess;Lo/doTransaction;Lo/createPersistenceManager;Lo/limitToLast;)Lo/getRepo;
    .locals 8

    .line 29073
    iget-object v0, p4, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    .line 29451
    iget-object v2, p0, Lcom/squareup/picasso/Picasso;->extraCallback:Ljava/util/List;

    .line 414
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 415
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/newLogger;

    .line 416
    invoke-virtual {v6, v0}, Lo/newLogger;->extraCallback(Lo/newRunLoop;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 417
    new-instance v7, Lo/getRepo;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lo/getRepo;-><init>(Lcom/squareup/picasso/Picasso;Lo/forUnauthenticatedAccess;Lo/doTransaction;Lo/createPersistenceManager;Lo/limitToLast;Lo/newLogger;)V

    return-object v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 421
    :cond_1
    new-instance v7, Lo/getRepo;

    sget-object v6, Lo/getRepo;->mayLaunchUrl:Lo/newLogger;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lo/getRepo;-><init>(Lcom/squareup/picasso/Picasso;Lo/forUnauthenticatedAccess;Lo/doTransaction;Lo/createPersistenceManager;Lo/limitToLast;Lo/newLogger;)V

    return-object v7
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/graphics/Bitmap;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 193
    iget v0, v1, Lo/getRepo;->ICustomTabsCallback:I

    invoke-static {v0}, Lo/lambda$addTokenChangeListener$0;->onMessageChannelReady(I)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, v1, Lo/getRepo;->IPostMessageService$Stub:Lo/doTransaction;

    iget-object v4, v1, Lo/getRepo;->extraCallback:Ljava/lang/String;

    invoke-interface {v0, v4}, Lo/doTransaction;->onMessageChannelReady(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v2, v1, Lo/getRepo;->ICustomTabsService$Stub$Proxy:Lo/createPersistenceManager;

    .line 12072
    iget-object v2, v2, Lo/createPersistenceManager;->onPostMessage:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    sget-object v2, Lcom/squareup/picasso/Picasso$extraCallback;->onPostMessage:Lcom/squareup/picasso/Picasso$extraCallback;

    iput-object v2, v1, Lo/getRepo;->ICustomTabsCallback$Stub$Proxy:Lcom/squareup/picasso/Picasso$extraCallback;

    .line 198
    iget-object v2, v1, Lo/getRepo;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, v1, Lo/getRepo;->onPostMessage:Lo/newRunLoop;

    invoke-virtual {v2}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Hunter"

    const-string v4, "decoded"

    const-string v5, "from cache"

    invoke-static {v3, v4, v2, v5}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    move-object v0, v2

    .line 205
    :cond_2
    iget-object v4, v1, Lo/getRepo;->onPostMessage:Lo/newRunLoop;

    iget v5, v1, Lo/getRepo;->ICustomTabsService:I

    if-nez v5, :cond_3

    sget-object v5, Lo/lambda$addTokenChangeListener$2;->onMessageChannelReady:Lo/lambda$addTokenChangeListener$2;

    iget v5, v5, Lo/lambda$addTokenChangeListener$2;->extraCallback:I

    goto :goto_0

    :cond_3
    iget v5, v1, Lo/getRepo;->asInterface:I

    :goto_0
    iput v5, v4, Lo/newRunLoop;->onNavigationEvent:I

    .line 206
    iget-object v4, v1, Lo/getRepo;->ICustomTabsCallback$Stub:Lo/newLogger;

    iget-object v5, v1, Lo/getRepo;->onPostMessage:Lo/newRunLoop;

    invoke-virtual {v4, v5}, Lo/newLogger;->onNavigationEvent(Lo/newRunLoop;)Lo/newLogger$extraCallback;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 12090
    iget-object v0, v4, Lo/newLogger$extraCallback;->extraCallback:Lcom/squareup/picasso/Picasso$extraCallback;

    .line 208
    iput-object v0, v1, Lo/getRepo;->ICustomTabsCallback$Stub$Proxy:Lcom/squareup/picasso/Picasso$extraCallback;

    .line 12098
    iget v0, v4, Lo/newLogger$extraCallback;->onPostMessage:I

    .line 209
    iput v0, v1, Lo/getRepo;->IPostMessageService:I

    .line 13077
    iget-object v0, v4, Lo/newLogger$extraCallback;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    .line 13082
    iget-object v4, v4, Lo/newLogger$extraCallback;->onMessageChannelReady:Ljava/io/InputStream;

    .line 217
    :try_start_0
    iget-object v11, v1, Lo/getRepo;->onPostMessage:Lo/newRunLoop;

    .line 13114
    new-instance v0, Lo/lambda$getToken$0;

    invoke-direct {v0, v4}, Lo/lambda$getToken$0;-><init>(Ljava/io/InputStream;)V

    const/high16 v6, 0x10000

    .line 13117
    invoke-virtual {v0, v6}, Lo/lambda$getToken$0;->onPostMessage(I)J

    move-result-wide v12

    .line 13119
    invoke-static {v11}, Lo/newLogger;->onPostMessage(Lo/newRunLoop;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 14146
    iget-boolean v6, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 13122
    :goto_1
    invoke-static {v0}, Lo/saveUserOverwrite;->onNavigationEvent(Ljava/io/InputStream;)Z

    move-result v7

    .line 13123
    invoke-virtual {v0, v12, v13}, Lo/lambda$getToken$0;->ICustomTabsCallback(J)V

    if-eqz v7, :cond_6

    .line 13127
    invoke-static {v0}, Lo/saveUserOverwrite;->onMessageChannelReady(Ljava/io/InputStream;)[B

    move-result-object v0

    if-eqz v6, :cond_5

    .line 13129
    array-length v2, v0

    invoke-static {v0, v3, v2, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 13130
    iget v6, v11, Lo/newRunLoop;->asInterface:I

    iget v7, v11, Lo/newRunLoop;->ICustomTabsCallback$Stub:I

    .line 14151
    iget v8, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object v10, v14

    invoke-static/range {v6 .. v11}, Lo/newLogger;->onPostMessage(IIIILandroid/graphics/BitmapFactory$Options;Lo/newRunLoop;)V

    .line 13133
    :cond_5
    array-length v2, v0

    invoke-static {v0, v3, v2, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_7

    .line 13136
    invoke-static {v0, v2, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 13137
    iget v6, v11, Lo/newRunLoop;->asInterface:I

    iget v7, v11, Lo/newRunLoop;->ICustomTabsCallback$Stub:I

    .line 15151
    iget v8, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object v10, v14

    invoke-static/range {v6 .. v11}, Lo/newLogger;->onPostMessage(IIIILandroid/graphics/BitmapFactory$Options;Lo/newRunLoop;)V

    .line 13140
    invoke-virtual {v0, v12, v13}, Lo/lambda$getToken$0;->ICustomTabsCallback(J)V

    .line 13142
    :cond_7
    invoke-static {v0, v2, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_8

    .line 219
    :goto_2
    invoke-static {v4}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/io/InputStream;)V

    goto :goto_3

    .line 13145
    :cond_8
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Failed to decode stream."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 219
    invoke-static {v4}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/io/InputStream;)V

    throw v0

    :cond_9
    :goto_3
    if-eqz v0, :cond_33

    .line 225
    iget-object v2, v1, Lo/getRepo;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz v2, :cond_a

    .line 226
    iget-object v2, v1, Lo/getRepo;->onPostMessage:Lo/newRunLoop;

    invoke-virtual {v2}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Hunter"

    const-string v6, "decoded"

    invoke-static {v4, v6, v2}, Lo/saveUserOverwrite;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_a
    iget-object v2, v1, Lo/getRepo;->ICustomTabsService$Stub$Proxy:Lo/createPersistenceManager;

    .line 16118
    invoke-static {v0}, Lo/saveUserOverwrite;->onMessageChannelReady(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 16119
    iget-object v6, v2, Lo/createPersistenceManager;->onPostMessage:Landroid/os/Handler;

    iget-object v2, v2, Lo/createPersistenceManager;->onPostMessage:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v2, v7, v4, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 229
    iget-object v2, v1, Lo/getRepo;->onPostMessage:Lo/newRunLoop;

    .line 17171
    iget v4, v2, Lo/newRunLoop;->asInterface:I

    if-nez v4, :cond_c

    iget v4, v2, Lo/newRunLoop;->ICustomTabsCallback$Stub:I

    if-eqz v4, :cond_b

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v4, 0x1

    :goto_5
    const/4 v6, 0x0

    if-nez v4, :cond_e

    .line 16179
    iget v4, v2, Lo/newRunLoop;->getInterfaceDescriptor:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_d

    goto :goto_6

    :cond_d
    const/4 v4, 0x0

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v4, 0x1

    :goto_7
    if-nez v4, :cond_11

    .line 17183
    iget-object v2, v2, Lo/newRunLoop;->onTransact:Ljava/util/List;

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_10

    goto :goto_9

    :cond_10
    const/4 v2, 0x0

    goto :goto_a

    :cond_11
    :goto_9
    const/4 v2, 0x1

    :goto_a
    if-nez v2, :cond_12

    .line 229
    iget v2, v1, Lo/getRepo;->IPostMessageService:I

    if-eqz v2, :cond_33

    .line 230
    :cond_12
    sget-object v2, Lo/getRepo;->postMessage:Ljava/lang/Object;

    monitor-enter v2

    .line 231
    :try_start_2
    iget-object v4, v1, Lo/getRepo;->onPostMessage:Lo/newRunLoop;

    .line 19171
    iget v8, v4, Lo/newRunLoop;->asInterface:I

    if-nez v8, :cond_14

    iget v8, v4, Lo/newRunLoop;->ICustomTabsCallback$Stub:I

    if-eqz v8, :cond_13

    goto :goto_b

    :cond_13
    const/4 v8, 0x0

    goto :goto_c

    :cond_14
    :goto_b
    const/4 v8, 0x1

    :goto_c
    if-nez v8, :cond_16

    .line 18179
    iget v4, v4, Lo/newRunLoop;->getInterfaceDescriptor:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_15

    goto :goto_d

    :cond_15
    const/4 v4, 0x0

    goto :goto_e

    :cond_16
    :goto_d
    const/4 v4, 0x1

    :goto_e
    if-nez v4, :cond_17

    .line 231
    iget v4, v1, Lo/getRepo;->IPostMessageService:I

    if-eqz v4, :cond_30

    .line 232
    :cond_17
    iget-object v4, v1, Lo/getRepo;->onPostMessage:Lo/newRunLoop;

    iget v8, v1, Lo/getRepo;->IPostMessageService:I

    .line 19487
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 19488
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 19489
    iget-boolean v11, v4, Lo/newRunLoop;->ICustomTabsCallback$Stub$Proxy:Z

    .line 19496
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 21171
    iget v13, v4, Lo/newRunLoop;->asInterface:I

    if-nez v13, :cond_19

    iget v13, v4, Lo/newRunLoop;->ICustomTabsCallback$Stub:I

    if-eqz v13, :cond_18

    goto :goto_f

    :cond_18
    const/4 v13, 0x0

    goto :goto_10

    :cond_19
    :goto_f
    const/4 v13, 0x1

    :goto_10
    if-nez v13, :cond_1b

    .line 20179
    iget v13, v4, Lo/newRunLoop;->getInterfaceDescriptor:F

    cmpl-float v13, v13, v6

    if-eqz v13, :cond_1a

    goto :goto_11

    :cond_1a
    const/4 v13, 0x0

    goto :goto_12

    :cond_1b
    :goto_11
    const/4 v13, 0x1

    :goto_12
    if-eqz v13, :cond_2d

    .line 19499
    iget v13, v4, Lo/newRunLoop;->asInterface:I

    .line 19500
    iget v14, v4, Lo/newRunLoop;->ICustomTabsCallback$Stub:I

    .line 19502
    iget v15, v4, Lo/newRunLoop;->getInterfaceDescriptor:F

    cmpl-float v6, v15, v6

    if-eqz v6, :cond_1d

    .line 19504
    iget-boolean v6, v4, Lo/newRunLoop;->postMessage:Z

    if-eqz v6, :cond_1c

    .line 19505
    iget v6, v4, Lo/newRunLoop;->ICustomTabsService:F

    iget v5, v4, Lo/newRunLoop;->newSession:F

    invoke-virtual {v12, v15, v6, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_13

    .line 19507
    :cond_1c
    invoke-virtual {v12, v15}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 19511
    :cond_1d
    :goto_13
    iget-boolean v5, v4, Lo/newRunLoop;->onRelationshipValidationResult:Z

    if-eqz v5, :cond_22

    int-to-float v4, v13

    int-to-float v5, v9

    div-float v6, v4, v5

    int-to-float v15, v14

    int-to-float v3, v10

    div-float v16, v15, v3

    cmpl-float v17, v6, v16

    if-lez v17, :cond_1e

    div-float v16, v16, v6

    mul-float v3, v3, v16

    float-to-double v3, v3

    .line 19516
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int v4, v10, v3

    .line 19517
    div-int/2addr v4, v7

    int-to-float v5, v3

    div-float v16, v15, v5

    move v5, v4

    move v7, v6

    move/from16 v15, v16

    const/4 v6, 0x0

    move v4, v3

    move v3, v9

    goto :goto_14

    :cond_1e
    div-float v6, v6, v16

    mul-float v5, v5, v6

    float-to-double v5, v5

    .line 19522
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    sub-int v5, v9, v3

    .line 19523
    div-int/2addr v5, v7

    int-to-float v6, v3

    div-float v6, v4, v6

    move v7, v6

    move v4, v10

    move/from16 v15, v16

    move v6, v5

    const/4 v5, 0x0

    :goto_14
    if-eqz v11, :cond_20

    if-gt v9, v13, :cond_20

    if-le v10, v14, :cond_1f

    goto :goto_15

    :cond_1f
    const/4 v9, 0x0

    goto :goto_16

    :cond_20
    :goto_15
    const/4 v9, 0x1

    :goto_16
    if-eqz v9, :cond_21

    .line 19529
    invoke-virtual {v12, v7, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_21
    move v9, v3

    move v10, v4

    move v7, v6

    goto :goto_1f

    .line 19531
    :cond_22
    iget-boolean v3, v4, Lo/newRunLoop;->warmup:Z

    if-eqz v3, :cond_26

    int-to-float v3, v13

    int-to-float v4, v9

    div-float/2addr v3, v4

    int-to-float v4, v14

    int-to-float v5, v10

    div-float/2addr v4, v5

    cmpg-float v5, v3, v4

    if-gez v5, :cond_23

    goto :goto_17

    :cond_23
    move v3, v4

    :goto_17
    if-eqz v11, :cond_25

    if-gt v9, v13, :cond_25

    if-le v10, v14, :cond_24

    goto :goto_18

    :cond_24
    const/4 v4, 0x0

    goto :goto_19

    :cond_25
    :goto_18
    const/4 v4, 0x1

    :goto_19
    if-eqz v4, :cond_2d

    .line 19536
    invoke-virtual {v12, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1e

    :cond_26
    if-nez v13, :cond_27

    if-eqz v14, :cond_2d

    :cond_27
    if-ne v13, v9, :cond_28

    if-eq v14, v10, :cond_2d

    :cond_28
    if-eqz v13, :cond_29

    int-to-float v3, v13

    int-to-float v4, v9

    goto :goto_1a

    :cond_29
    int-to-float v3, v14

    int-to-float v4, v10

    :goto_1a
    div-float/2addr v3, v4

    if-eqz v14, :cond_2a

    int-to-float v4, v14

    int-to-float v5, v10

    goto :goto_1b

    :cond_2a
    int-to-float v4, v13

    int-to-float v5, v9

    :goto_1b
    div-float/2addr v4, v5

    if-eqz v11, :cond_2c

    if-gt v9, v13, :cond_2c

    if-le v10, v14, :cond_2b

    goto :goto_1c

    :cond_2b
    const/4 v5, 0x0

    goto :goto_1d

    :cond_2c
    :goto_1c
    const/4 v5, 0x1

    :goto_1d
    if-eqz v5, :cond_2d

    .line 19548
    invoke-virtual {v12, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_2d
    :goto_1e
    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_1f
    if-eqz v8, :cond_2e

    int-to-float v3, v8

    .line 19554
    invoke-virtual {v12, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_2e
    const/4 v3, 0x1

    move-object v6, v0

    move v8, v5

    move-object v11, v12

    move v12, v3

    .line 19558
    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eq v3, v0, :cond_2f

    .line 19560
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v3

    .line 233
    :cond_2f
    iget-object v3, v1, Lo/getRepo;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz v3, :cond_30

    const-string v3, "Hunter"

    const-string v4, "transformed"

    .line 234
    iget-object v5, v1, Lo/getRepo;->onPostMessage:Lo/newRunLoop;

    invoke-virtual {v5}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lo/saveUserOverwrite;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_30
    iget-object v3, v1, Lo/getRepo;->onPostMessage:Lo/newRunLoop;

    .line 24183
    iget-object v3, v3, Lo/newRunLoop;->onTransact:Ljava/util/List;

    if-eqz v3, :cond_31

    const/4 v5, 0x1

    goto :goto_20

    :cond_31
    const/4 v5, 0x0

    :goto_20
    if-eqz v5, :cond_32

    .line 238
    iget-object v3, v1, Lo/getRepo;->onPostMessage:Lo/newRunLoop;

    iget-object v3, v3, Lo/newRunLoop;->onTransact:Ljava/util/List;

    invoke-static {v3, v0}, Lo/getRepo;->extraCallback(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    iget-object v3, v1, Lo/getRepo;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz v3, :cond_32

    const-string v3, "Hunter"

    const-string v4, "transformed"

    .line 240
    iget-object v5, v1, Lo/getRepo;->onPostMessage:Lo/newRunLoop;

    invoke-virtual {v5}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v5

    const-string v6, "from custom transformations"

    invoke-static {v3, v4, v5, v6}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_32
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_33

    .line 245
    iget-object v2, v1, Lo/getRepo;->ICustomTabsService$Stub$Proxy:Lo/createPersistenceManager;

    .line 25118
    invoke-static {v0}, Lo/saveUserOverwrite;->onMessageChannelReady(Landroid/graphics/Bitmap;)I

    move-result v3

    .line 25119
    iget-object v4, v2, Lo/createPersistenceManager;->onPostMessage:Landroid/os/Handler;

    iget-object v2, v2, Lo/createPersistenceManager;->onPostMessage:Landroid/os/Handler;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v3, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_21

    :catchall_1
    move-exception v0

    .line 243
    monitor-exit v2

    throw v0

    :cond_33
    :goto_21
    return-object v0
.end method

.method final ICustomTabsCallback(Lo/limitToLast;)V
    .locals 6

    .line 287
    iget-object v0, p0, Lo/getRepo;->onTransact:Lo/limitToLast;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lo/getRepo;->onTransact:Lo/limitToLast;

    const/4 v0, 0x1

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lo/getRepo;->onRelationshipValidationResult:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 291
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_8

    .line 26105
    iget-object v0, p1, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    iget-object v0, v0, Lo/newRunLoop;->updateVisuals:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    .line 296
    iget-object v3, p0, Lo/getRepo;->warmup:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    if-ne v0, v3, :cond_8

    .line 26306
    sget-object v0, Lcom/squareup/picasso/Picasso$onMessageChannelReady;->onNavigationEvent:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    .line 26308
    iget-object v3, p0, Lo/getRepo;->onRelationshipValidationResult:Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 26309
    :goto_1
    iget-object v4, p0, Lo/getRepo;->onTransact:Lo/limitToLast;

    if-nez v4, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    if-eqz v1, :cond_7

    .line 26316
    iget-object v1, p0, Lo/getRepo;->onTransact:Lo/limitToLast;

    if-eqz v1, :cond_5

    .line 27105
    iget-object v0, v1, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    iget-object v0, v0, Lo/newRunLoop;->updateVisuals:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    :cond_5
    if-eqz v3, :cond_7

    .line 26322
    iget-object v1, p0, Lo/getRepo;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_7

    .line 26323
    iget-object v3, p0, Lo/getRepo;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/limitToLast;

    .line 28105
    iget-object v3, v3, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    iget-object v3, v3, Lo/newRunLoop;->updateVisuals:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    .line 26324
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-le v4, v5, :cond_6

    move-object v0, v3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 297
    :cond_7
    iput-object v0, p0, Lo/getRepo;->warmup:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    .line 300
    :cond_8
    iget-object v0, p0, Lo/getRepo;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_9

    .line 301
    iget-object p1, p1, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    invoke-virtual {p1}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p1

    const-string v0, "from "

    invoke-static {p0, v0}, Lo/saveUserOverwrite;->ICustomTabsCallback(Lo/getRepo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hunter"

    const-string v2, "removed"

    invoke-static {v1, v2, p1, v0}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method final onPostMessage()Z
    .locals 2

    .line 334
    iget-object v0, p0, Lo/getRepo;->onTransact:Lo/limitToLast;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getRepo;->onRelationshipValidationResult:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 335
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lo/getRepo;->newSession:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 337
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final run()V
    .locals 34

    move-object/from16 v1, p0

    const-string v2, "Picasso-Idle"

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x5

    const/4 v6, 0x6

    .line 153
    :try_start_0
    iget-object v0, v1, Lo/getRepo;->onPostMessage:Lo/newRunLoop;

    .line 4164
    iget-object v7, v0, Lo/newRunLoop;->extraCallback:Landroid/net/Uri;

    if-eqz v7, :cond_0

    .line 4165
    iget-object v0, v0, Lo/newRunLoop;->extraCallback:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4167
    :cond_0
    iget v0, v0, Lo/newRunLoop;->onMessageChannelReady:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 3400
    :goto_0
    sget-object v7, Lo/getRepo;->extraCommand:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/StringBuilder;

    .line 3401
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x8

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 3402
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v7, v9, v8, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3404
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 155
    iget-object v0, v1, Lo/getRepo;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_1

    const-string v0, "Hunter"

    const-string v7, "executing"

    .line 156
    invoke-static/range {p0 .. p0}, Lo/saveUserOverwrite;->ICustomTabsCallback(Lo/getRepo;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lo/saveUserOverwrite;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lo/getRepo;->ICustomTabsCallback()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lo/getRepo;->asBinder:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 162
    iget-object v0, v1, Lo/getRepo;->requestPostMessageChannel:Lo/forUnauthenticatedAccess;

    .line 5162
    iget-object v7, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    iget-object v0, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    invoke-virtual {v0, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 164
    :cond_2
    iget-object v0, v1, Lo/getRepo;->requestPostMessageChannel:Lo/forUnauthenticatedAccess;

    .line 6154
    iget-object v7, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    iget-object v0, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v0, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lcom/squareup/picasso/Downloader$ResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lo/newEventTarget$onNavigationEvent; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 183
    :try_start_1
    iput-object v0, v1, Lo/getRepo;->getInterfaceDescriptor:Ljava/lang/Exception;

    .line 184
    iget-object v0, v1, Lo/getRepo;->requestPostMessageChannel:Lo/forUnauthenticatedAccess;

    .line 11162
    iget-object v3, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    iget-object v0, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    invoke-virtual {v0, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catch_1
    move-exception v0

    .line 178
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 179
    iget-object v4, v1, Lo/getRepo;->ICustomTabsService$Stub$Proxy:Lo/createPersistenceManager;

    .line 9110
    new-instance v5, Lo/queryForTag$onMessageChannelReady;

    iget-object v7, v4, Lo/createPersistenceManager;->ICustomTabsCallback:Lo/doTransaction;

    invoke-interface {v7}, Lo/doTransaction;->extraCallback()I

    move-result v8

    iget-object v7, v4, Lo/createPersistenceManager;->ICustomTabsCallback:Lo/doTransaction;

    invoke-interface {v7}, Lo/doTransaction;->onMessageChannelReady()I

    move-result v9

    iget-wide v10, v4, Lo/createPersistenceManager;->onMessageChannelReady:J

    iget-wide v12, v4, Lo/createPersistenceManager;->onNavigationEvent:J

    iget-wide v14, v4, Lo/createPersistenceManager;->extraCallback:J

    iget-wide v6, v4, Lo/createPersistenceManager;->onTransact:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v31, v2

    :try_start_2
    iget-wide v1, v4, Lo/createPersistenceManager;->ICustomTabsCallback$Stub:J

    move-object/from16 v32, v0

    move-wide/from16 v18, v1

    iget-wide v0, v4, Lo/createPersistenceManager;->onRelationshipValidationResult:J

    move-object/from16 v33, v3

    iget-wide v2, v4, Lo/createPersistenceManager;->asInterface:J

    move-wide/from16 v22, v2

    iget-wide v2, v4, Lo/createPersistenceManager;->asBinder:J

    move-wide/from16 v16, v6

    iget v6, v4, Lo/createPersistenceManager;->ICustomTabsService:I

    iget v7, v4, Lo/createPersistenceManager;->warmup:I

    iget v4, v4, Lo/createPersistenceManager;->newSession:I

    .line 9113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    move/from16 v27, v7

    move-object v7, v5

    move-wide/from16 v20, v0

    move-wide/from16 v24, v2

    move/from16 v26, v6

    move/from16 v28, v4

    invoke-direct/range {v7 .. v30}, Lo/queryForTag$onMessageChannelReady;-><init>(IIJJJJJJJJIIIJ)V

    .line 179
    new-instance v0, Ljava/io/PrintWriter;

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "===============BEGIN PICASSO STATS ==============="

    .line 10071
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Memory Cache Stats"

    .line 10072
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Max Cache Size: "

    .line 10073
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10074
    iget v2, v5, Lo/queryForTag$onMessageChannelReady;->onMessageChannelReady:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, "  Cache Size: "

    .line 10075
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10076
    iget v2, v5, Lo/queryForTag$onMessageChannelReady;->extraCallback:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, "  Cache % Full: "

    .line 10077
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10078
    iget v2, v5, Lo/queryForTag$onMessageChannelReady;->extraCallback:I

    int-to-float v2, v2

    iget v3, v5, Lo/queryForTag$onMessageChannelReady;->onMessageChannelReady:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, "  Cache Hits: "

    .line 10079
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10080
    iget-wide v2, v5, Lo/queryForTag$onMessageChannelReady;->ICustomTabsCallback:J

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const-string v2, "  Cache Misses: "

    .line 10081
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10082
    iget-wide v2, v5, Lo/queryForTag$onMessageChannelReady;->onNavigationEvent:J

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const-string v2, "Network Stats"

    .line 10083
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Download Count: "

    .line 10084
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10085
    iget v2, v5, Lo/queryForTag$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, "  Total Download Size: "

    .line 10086
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10087
    iget-wide v2, v5, Lo/queryForTag$onMessageChannelReady;->onPostMessage:J

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const-string v2, "  Average Download Size: "

    .line 10088
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10089
    iget-wide v2, v5, Lo/queryForTag$onMessageChannelReady;->onTransact:J

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const-string v2, "Bitmap Stats"

    .line 10090
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Total Bitmaps Decoded: "

    .line 10091
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10092
    iget v2, v5, Lo/queryForTag$onMessageChannelReady;->warmup:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, "  Total Bitmap Size: "

    .line 10093
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10094
    iget-wide v2, v5, Lo/queryForTag$onMessageChannelReady;->asInterface:J

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const-string v2, "  Total Transformed Bitmaps: "

    .line 10095
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10096
    iget v2, v5, Lo/queryForTag$onMessageChannelReady;->ICustomTabsService:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, "  Total Transformed Bitmap Size: "

    .line 10097
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10098
    iget-wide v2, v5, Lo/queryForTag$onMessageChannelReady;->asBinder:J

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const-string v2, "  Average Bitmap Size: "

    .line 10099
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10100
    iget-wide v2, v5, Lo/queryForTag$onMessageChannelReady;->onRelationshipValidationResult:J

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const-string v2, "  Average Transformed Bitmap Size: "

    .line 10101
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10102
    iget-wide v2, v5, Lo/queryForTag$onMessageChannelReady;->ICustomTabsCallback$Stub:J

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const-string v2, "===============END PICASSO STATS ==============="

    .line 10103
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10104
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v1, p0

    :try_start_3
    iput-object v0, v1, Lo/getRepo;->getInterfaceDescriptor:Ljava/lang/Exception;

    .line 181
    iget-object v0, v1, Lo/getRepo;->requestPostMessageChannel:Lo/forUnauthenticatedAccess;

    .line 10162
    iget-object v2, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    iget-object v0, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object/from16 v2, v31

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v1, p0

    :goto_3
    move-object/from16 v2, v31

    goto :goto_4

    :catch_2
    move-exception v0

    .line 175
    :try_start_4
    iput-object v0, v1, Lo/getRepo;->getInterfaceDescriptor:Ljava/lang/Exception;

    .line 176
    iget-object v0, v1, Lo/getRepo;->requestPostMessageChannel:Lo/forUnauthenticatedAccess;

    .line 8158
    iget-object v6, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    iget-object v0, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :catch_3
    move-exception v0

    .line 172
    iput-object v0, v1, Lo/getRepo;->getInterfaceDescriptor:Ljava/lang/Exception;

    .line 173
    iget-object v0, v1, Lo/getRepo;->requestPostMessageChannel:Lo/forUnauthenticatedAccess;

    .line 7158
    iget-object v6, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    iget-object v0, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :catch_4
    move-exception v0

    .line 167
    iget-boolean v3, v0, Lcom/squareup/picasso/Downloader$ResponseException;->onNavigationEvent:Z

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/squareup/picasso/Downloader$ResponseException;->extraCallback:I

    const/16 v4, 0x1f8

    if-eq v3, v4, :cond_4

    .line 168
    :cond_3
    iput-object v0, v1, Lo/getRepo;->getInterfaceDescriptor:Ljava/lang/Exception;

    .line 170
    :cond_4
    iget-object v0, v1, Lo/getRepo;->requestPostMessageChannel:Lo/forUnauthenticatedAccess;

    .line 6162
    iget-object v3, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    iget-object v0, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 186
    :goto_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method
