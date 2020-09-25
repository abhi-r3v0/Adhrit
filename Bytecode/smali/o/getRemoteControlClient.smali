.class final Lo/getRemoteControlClient;
.super Lo/getCallingPackage;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getRemoteControlClient$ICustomTabsCallback;,
        Lo/getRemoteControlClient$extraCallback;,
        Lo/getRemoteControlClient$onNavigationEvent;
    }
.end annotation


# static fields
.field static onPostMessage:Z = false


# instance fields
.field private final ICustomTabsCallback:Lo/toLegacyStreamType;

.field private final extraCallback:Lo/getRemoteControlClient$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lo/toLegacyStreamType;Lo/setRatingType;)V
    .locals 0

    .line 371
    invoke-direct {p0}, Lo/getCallingPackage;-><init>()V

    .line 372
    iput-object p1, p0, Lo/getRemoteControlClient;->ICustomTabsCallback:Lo/toLegacyStreamType;

    .line 373
    invoke-static {p2}, Lo/getRemoteControlClient$ICustomTabsCallback;->onNavigationEvent(Lo/setRatingType;)Lo/getRemoteControlClient$ICustomTabsCallback;

    move-result-object p1

    iput-object p1, p0, Lo/getRemoteControlClient;->extraCallback:Lo/getRemoteControlClient$ICustomTabsCallback;

    return-void
.end method

.method private ICustomTabsCallback(ILandroid/os/Bundle;Lo/getCallingPackage$ICustomTabsCallback;Lo/getCurrentControllerInfo;)Lo/getCurrentControllerInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lo/getCallingPackage$ICustomTabsCallback<",
            "TD;>;",
            "Lo/getCurrentControllerInfo<",
            "TD;>;)",
            "Lo/getCurrentControllerInfo<",
            "TD;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 382
    :try_start_0
    iget-object v1, p0, Lo/getRemoteControlClient;->extraCallback:Lo/getRemoteControlClient$ICustomTabsCallback;

    const/4 v2, 0x1

    .line 1299
    iput-boolean v2, v1, Lo/getRemoteControlClient$ICustomTabsCallback;->onPostMessage:Z

    .line 383
    invoke-interface {p3, p1, p2}, Lo/getCallingPackage$ICustomTabsCallback;->onCreateLoader(ILandroid/os/Bundle;)Lo/getCurrentControllerInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 388
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 390
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :cond_1
    :goto_0
    new-instance v2, Lo/getRemoteControlClient$onNavigationEvent;

    invoke-direct {v2, p1, p2, v1, p4}, Lo/getRemoteControlClient$onNavigationEvent;-><init>(ILandroid/os/Bundle;Lo/getCurrentControllerInfo;Lo/getCurrentControllerInfo;)V

    .line 396
    iget-object p2, p0, Lo/getRemoteControlClient;->extraCallback:Lo/getRemoteControlClient$ICustomTabsCallback;

    .line 1311
    iget-object p2, p2, Lo/getRemoteControlClient$ICustomTabsCallback;->extraCallback:Lo/describeContents;

    invoke-virtual {p2, p1, v2}, Lo/describeContents;->onPostMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    iget-object p1, p0, Lo/getRemoteControlClient;->extraCallback:Lo/getRemoteControlClient$ICustomTabsCallback;

    .line 2307
    iput-boolean v0, p1, Lo/getRemoteControlClient$ICustomTabsCallback;->onPostMessage:Z

    .line 400
    iget-object p1, p0, Lo/getRemoteControlClient;->ICustomTabsCallback:Lo/toLegacyStreamType;

    invoke-virtual {v2, p1, p3}, Lo/getRemoteControlClient$onNavigationEvent;->onMessageChannelReady(Lo/toLegacyStreamType;Lo/getCallingPackage$ICustomTabsCallback;)Lo/getCurrentControllerInfo;

    move-result-object p1

    return-object p1

    .line 385
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Object returned from onCreateLoader must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 398
    iget-object p2, p0, Lo/getRemoteControlClient;->extraCallback:Lo/getRemoteControlClient$ICustomTabsCallback;

    .line 3307
    iput-boolean v0, p2, Lo/getRemoteControlClient$ICustomTabsCallback;->onPostMessage:Z

    .line 398
    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;Lo/getCallingPackage$ICustomTabsCallback;)Lo/getCurrentControllerInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Bundle;",
            "Lo/getCallingPackage$ICustomTabsCallback<",
            "TD;>;)",
            "Lo/getCurrentControllerInfo<",
            "TD;>;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lo/getRemoteControlClient;->extraCallback:Lo/getRemoteControlClient$ICustomTabsCallback;

    .line 4303
    iget-boolean v0, v0, Lo/getRemoteControlClient$ICustomTabsCallback;->onPostMessage:Z

    if-nez v0, :cond_2

    .line 411
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 415
    iget-object v0, p0, Lo/getRemoteControlClient;->extraCallback:Lo/getRemoteControlClient$ICustomTabsCallback;

    .line 4316
    iget-object v0, v0, Lo/getRemoteControlClient$ICustomTabsCallback;->extraCallback:Lo/describeContents;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/describeContents;->extraCallback(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getRemoteControlClient$onNavigationEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 421
    invoke-direct {p0, v1, p1, p2, v0}, Lo/getRemoteControlClient;->ICustomTabsCallback(ILandroid/os/Bundle;Lo/getCallingPackage$ICustomTabsCallback;Lo/getCurrentControllerInfo;)Lo/getCurrentControllerInfo;

    move-result-object p1

    return-object p1

    .line 424
    :cond_0
    iget-object p1, p0, Lo/getRemoteControlClient;->ICustomTabsCallback:Lo/toLegacyStreamType;

    invoke-virtual {v0, p1, p2}, Lo/getRemoteControlClient$onNavigationEvent;->onMessageChannelReady(Lo/toLegacyStreamType;Lo/getCallingPackage$ICustomTabsCallback;)Lo/getCurrentControllerInfo;

    move-result-object p1

    return-object p1

    .line 412
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "initLoader must be called on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 409
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called while creating a loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ICustomTabsCallback()V
    .locals 4

    .line 481
    iget-object v0, p0, Lo/getRemoteControlClient;->extraCallback:Lo/getRemoteControlClient$ICustomTabsCallback;

    .line 5335
    iget-object v1, v0, Lo/getRemoteControlClient$ICustomTabsCallback;->extraCallback:Lo/describeContents;

    invoke-virtual {v1}, Lo/describeContents;->onNavigationEvent()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5337
    iget-object v3, v0, Lo/getRemoteControlClient$ICustomTabsCallback;->extraCallback:Lo/describeContents;

    invoke-virtual {v3, v2}, Lo/describeContents;->onMessageChannelReady(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getRemoteControlClient$onNavigationEvent;

    .line 5338
    invoke-virtual {v3}, Lo/getRemoteControlClient$onNavigationEvent;->onMessageChannelReady()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(ILandroid/os/Bundle;Lo/getCallingPackage$ICustomTabsCallback;)Lo/getCurrentControllerInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lo/getCallingPackage$ICustomTabsCallback<",
            "TD;>;)",
            "Lo/getCurrentControllerInfo<",
            "TD;>;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lo/getRemoteControlClient;->extraCallback:Lo/getRemoteControlClient$ICustomTabsCallback;

    .line 5303
    iget-boolean v0, v0, Lo/getRemoteControlClient$ICustomTabsCallback;->onPostMessage:Z

    if-nez v0, :cond_2

    .line 436
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 441
    iget-object v0, p0, Lo/getRemoteControlClient;->extraCallback:Lo/getRemoteControlClient$ICustomTabsCallback;

    .line 5316
    iget-object v0, v0, Lo/getRemoteControlClient$ICustomTabsCallback;->extraCallback:Lo/describeContents;

    invoke-virtual {v0, p1}, Lo/describeContents;->extraCallback(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getRemoteControlClient$onNavigationEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 444
    invoke-virtual {v0, v1}, Lo/getRemoteControlClient$onNavigationEvent;->onMessageChannelReady(Z)Lo/getCurrentControllerInfo;

    move-result-object v1

    .line 447
    :cond_0
    invoke-direct {p0, p1, p2, p3, v1}, Lo/getRemoteControlClient;->ICustomTabsCallback(ILandroid/os/Bundle;Lo/getCallingPackage$ICustomTabsCallback;Lo/getCurrentControllerInfo;)Lo/getCurrentControllerInfo;

    move-result-object p1

    return-object p1

    .line 437
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "restartLoader must be called on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 434
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called while creating a loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 498
    iget-object v0, p0, Lo/getRemoteControlClient;->extraCallback:Lo/getRemoteControlClient$ICustomTabsCallback;

    .line 5354
    iget-object v1, v0, Lo/getRemoteControlClient$ICustomTabsCallback;->extraCallback:Lo/describeContents;

    invoke-virtual {v1}, Lo/describeContents;->onNavigationEvent()I

    move-result v1

    if-lez v1, :cond_3

    .line 5355
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Loaders:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5357
    :goto_0
    iget-object v4, v0, Lo/getRemoteControlClient$ICustomTabsCallback;->extraCallback:Lo/describeContents;

    invoke-virtual {v4}, Lo/describeContents;->onNavigationEvent()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 5358
    iget-object v4, v0, Lo/getRemoteControlClient$ICustomTabsCallback;->extraCallback:Lo/describeContents;

    invoke-virtual {v4, v3}, Lo/describeContents;->onMessageChannelReady(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getRemoteControlClient$onNavigationEvent;

    .line 5359
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lo/getRemoteControlClient$ICustomTabsCallback;->extraCallback:Lo/describeContents;

    invoke-virtual {v5, v3}, Lo/describeContents;->ICustomTabsCallback(I)I

    move-result v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    .line 5360
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6212
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mId="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Lo/getRemoteControlClient$onNavigationEvent;->asBinder:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mArgs="

    .line 6213
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lo/getRemoteControlClient$onNavigationEvent;->ICustomTabsCallback$Stub:Landroid/os/Bundle;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6214
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mLoader="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lo/getRemoteControlClient$onNavigationEvent;->onTransact:Lo/getCurrentControllerInfo;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6215
    iget-object v5, v4, Lo/getRemoteControlClient$onNavigationEvent;->onTransact:Lo/getCurrentControllerInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2, p3, p4}, Lo/getCurrentControllerInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6216
    iget-object v5, v4, Lo/getRemoteControlClient$onNavigationEvent;->asInterface:Lo/getRemoteControlClient$extraCallback;

    if-eqz v5, :cond_0

    .line 6217
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mCallbacks="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lo/getRemoteControlClient$onNavigationEvent;->asInterface:Lo/getRemoteControlClient$extraCallback;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6218
    iget-object v5, v4, Lo/getRemoteControlClient$onNavigationEvent;->asInterface:Lo/getRemoteControlClient$extraCallback;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6272
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mDeliveredData="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v5, Lo/getRemoteControlClient$extraCallback;->onPostMessage:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 6220
    :cond_0
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mData="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7071
    iget-object v5, v4, Lo/getRemoteControlClient$onNavigationEvent;->onTransact:Lo/getCurrentControllerInfo;

    .line 7320
    iget-object v6, v4, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 7321
    sget-object v7, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 6221
    :goto_1
    invoke-virtual {v5, v6}, Lo/getCurrentControllerInfo;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 6220
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6222
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mStarted="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7371
    iget v4, v4, Landroidx/lifecycle/LiveData;->onNavigationEvent:I

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 6222
    :goto_2
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    iget-object v1, p0, Lo/getRemoteControlClient;->ICustomTabsCallback:Lo/toLegacyStreamType;

    invoke-static {v1, v0}, Lo/extraCallback;->extraCallback(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string/jumbo v1, "}}"

    .line 491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
