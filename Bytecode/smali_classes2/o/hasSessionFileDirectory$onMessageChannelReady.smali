.class final Lo/hasSessionFileDirectory$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasSessionFileDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lo/hasSessionFileDirectory$extraCallback;",
        ">;>;"
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/writeSessionJsonFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/writeSessionJsonFile<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Landroid/util/DisplayMetrics;

.field private final onNavigationEvent:Lo/hasSessionFileDirectory$onNavigationEvent;

.field private final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/hasSessionFileDirectory$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lo/hasSessionFileDirectory$onMessageChannelReady;->onMessageChannelReady:Landroid/util/DisplayMetrics;

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/hasSessionFileDirectory$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    .line 294
    new-instance v0, Lo/hasSessionFileDirectory$onNavigationEvent;

    invoke-direct {v0}, Lo/hasSessionFileDirectory$onNavigationEvent;-><init>()V

    iput-object v0, p0, Lo/hasSessionFileDirectory$onMessageChannelReady;->onNavigationEvent:Lo/hasSessionFileDirectory$onNavigationEvent;

    return-void
.end method

.method private onMessageChannelReady()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/hasSessionFileDirectory$extraCallback;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "MixpanelAPI.Snapshot"

    .line 303
    iget-object v0, v1, Lo/hasSessionFileDirectory$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 305
    iget-object v0, v1, Lo/hasSessionFileDirectory$onMessageChannelReady;->ICustomTabsCallback:Lo/writeSessionJsonFile;

    .line 1033
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_7

    .line 1036
    iget-object v0, v0, Lo/writeSessionJsonFile;->onNavigationEvent:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 308
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    .line 309
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 310
    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v6, v1, Lo/hasSessionFileDirectory$onMessageChannelReady;->onMessageChannelReady:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 311
    new-instance v3, Lo/hasSessionFileDirectory$extraCallback;

    invoke-direct {v3, v4, v5}, Lo/hasSessionFileDirectory$extraCallback;-><init>(Ljava/lang/String;Landroid/view/View;)V

    .line 312
    iget-object v4, v1, Lo/hasSessionFileDirectory$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, v1, Lo/hasSessionFileDirectory$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_6

    .line 317
    iget-object v0, v1, Lo/hasSessionFileDirectory$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lo/hasSessionFileDirectory$extraCallback;

    .line 1325
    iget-object v7, v6, Lo/hasSessionFileDirectory$extraCallback;->onPostMessage:Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1329
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v10, "createSnapshot"

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Class;

    const-class v13, Landroid/graphics/Bitmap$Config;

    aput-object v13, v12, v4

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v9

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x2

    aput-object v13, v12, v14

    invoke-virtual {v0, v10, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1330
    invoke-virtual {v0, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v10, v11, [Ljava/lang/Object;

    .line 1331
    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    aput-object v11, v10, v4

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v11, v10, v14

    invoke-virtual {v0, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v10, "createSnapshot didn\'t return a bitmap?"

    .line 1341
    invoke-static {v2, v10, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v10, "Can\'t access createSnapshot, using drawCache"

    .line 1339
    invoke-static {v2, v10, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v10, "Exception when calling createSnapshot"

    .line 1337
    invoke-static {v2, v10, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v10, "Can\'t call createSnapshot with arguments"

    .line 1335
    invoke-static {v2, v10, v0}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_4
    move-exception v0

    const-string v10, "Can\'t call createSnapshot, will use drawCache"

    .line 1333
    invoke-static {v2, v10, v0}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move-object v10, v8

    :goto_3
    if-nez v10, :cond_1

    .line 1347
    :try_start_1
    invoke-virtual {v7}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1348
    invoke-virtual {v7, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1349
    invoke-virtual {v7, v9}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 1350
    invoke-virtual {v7}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    move-object v10, v0

    goto :goto_4

    :catch_5
    move-exception v0

    .line 1353
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Can\'t take a bitmap snapshot of view "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", skipping for now."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9, v0}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz v10, :cond_3

    .line 1358
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v9

    if-eqz v9, :cond_2

    const/high16 v0, 0x43200000    # 160.0f

    int-to-float v9, v9

    div-float/2addr v0, v9

    .line 1364
    :cond_2
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 1365
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 1366
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v0

    float-to-double v12, v12

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-int v12, v12

    .line 1367
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v0

    move/from16 v16, v5

    float-to-double v4, v13

    add-double/2addr v4, v14

    double-to-int v4, v4

    if-lez v9, :cond_4

    if-lez v11, :cond_4

    if-lez v12, :cond_4

    if-lez v4, :cond_4

    .line 1370
    iget-object v5, v1, Lo/hasSessionFileDirectory$onMessageChannelReady;->onNavigationEvent:Lo/hasSessionFileDirectory$onNavigationEvent;

    invoke-virtual {v5, v12, v4, v10}, Lo/hasSessionFileDirectory$onNavigationEvent;->onMessageChannelReady(IILandroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_3
    move/from16 v16, v5

    :cond_4
    :goto_5
    if-eqz v8, :cond_5

    .line 1374
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    .line 1375
    invoke-virtual {v7, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    .line 1377
    :goto_6
    iput v0, v6, Lo/hasSessionFileDirectory$extraCallback;->extraCallback:F

    .line 1378
    iget-object v0, v1, Lo/hasSessionFileDirectory$onMessageChannelReady;->onNavigationEvent:Lo/hasSessionFileDirectory$onNavigationEvent;

    iput-object v0, v6, Lo/hasSessionFileDirectory$extraCallback;->ICustomTabsCallback:Lo/hasSessionFileDirectory$onNavigationEvent;

    add-int/lit8 v5, v16, 0x1

    goto/16 :goto_1

    .line 321
    :cond_6
    iget-object v0, v1, Lo/hasSessionFileDirectory$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    return-object v0

    .line 1034
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t remove an activity when not on the UI thread"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 290
    invoke-direct {p0}, Lo/hasSessionFileDirectory$onMessageChannelReady;->onMessageChannelReady()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
