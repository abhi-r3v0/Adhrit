.class final Lo/setLastBaselineToBottomHeight;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/compatMeasureContentWidth$onNavigationEvent;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lo/setVerticalOffset$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setLastBaselineToBottomHeight$onTransact;,
        Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;,
        Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;,
        Lo/setLastBaselineToBottomHeight$onPostMessage;,
        Lo/setLastBaselineToBottomHeight$onMessageChannelReady;,
        Lo/setLastBaselineToBottomHeight$extraCallback;,
        Lo/setLastBaselineToBottomHeight$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/compatMeasureContentWidth$onNavigationEvent;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lo/setLastBaselineToBottomHeight<",
        "*>;>;",
        "Lo/setVerticalOffset$onNavigationEvent;"
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

.field ICustomTabsCallback$Stub:Lo/AppCompatImageHelper;

.field ICustomTabsCallback$Stub$Proxy:I

.field ICustomTabsService:Lo/setLastBaselineToBottomHeight$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setLastBaselineToBottomHeight$onPostMessage<",
            "TR;>;"
        }
    .end annotation
.end field

.field private ICustomTabsService$Stub:J

.field private final ICustomTabsService$Stub$Proxy:Lo/setHorizontalOffset;

.field private INotificationSideChannel:Ljava/lang/Object;

.field private final IPostMessageService:Lo/RatingCompat$StarStyle$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Lo/setLastBaselineToBottomHeight<",
            "*>;>;"
        }
    .end annotation
.end field

.field private IPostMessageService$Stub:Ljava/lang/Thread;

.field private IPostMessageService$Stub$Proxy:Lo/AppCompatImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AppCompatImageView<",
            "*>;"
        }
    .end annotation
.end field

.field asBinder:Lo/getTintList;

.field asInterface:Lo/getTextMetricsParamsCompat;

.field private volatile cancel:Z

.field private cancelAll:Lo/AppCompatImageHelper;

.field final extraCallback:Lo/setLastBaselineToBottomHeight$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setLastBaselineToBottomHeight$onMessageChannelReady<",
            "*>;"
        }
    .end annotation
.end field

.field extraCommand:Z

.field getInterfaceDescriptor:Lo/applyFrameworkTintUsingColorFilter;

.field volatile mayLaunchUrl:Lo/compatMeasureContentWidth;

.field newSession:Lo/getFirstBaselineToTopHeight;

.field private notify:Lo/setImageURI;

.field final onMessageChannelReady:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;

.field final onNavigationEvent:Lo/setLastBaselineToBottomHeight$extraCallback;

.field final onPostMessage:Lo/getLastBaselineToBottomHeight;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getLastBaselineToBottomHeight<",
            "TR;>;"
        }
    .end annotation
.end field

.field onRelationshipValidationResult:I

.field onTransact:I

.field private final postMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field volatile requestPostMessageChannel:Z

.field updateVisuals:Lo/AppCompatImageHelper;

.field private validateRelationship:Lo/setLastBaselineToBottomHeight$onTransact;

.field warmup:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;


# direct methods
.method constructor <init>(Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;Lo/RatingCompat$StarStyle$extraCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;",
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Lo/setLastBaselineToBottomHeight<",
            "*>;>;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lo/getLastBaselineToBottomHeight;

    invoke-direct {v0}, Lo/getLastBaselineToBottomHeight;-><init>()V

    iput-object v0, p0, Lo/setLastBaselineToBottomHeight;->onPostMessage:Lo/getLastBaselineToBottomHeight;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setLastBaselineToBottomHeight;->postMessage:Ljava/util/List;

    .line 1016
    new-instance v0, Lo/setHorizontalOffset$ICustomTabsCallback;

    invoke-direct {v0}, Lo/setHorizontalOffset$ICustomTabsCallback;-><init>()V

    .line 47
    iput-object v0, p0, Lo/setLastBaselineToBottomHeight;->ICustomTabsService$Stub$Proxy:Lo/setHorizontalOffset;

    .line 50
    new-instance v0, Lo/setLastBaselineToBottomHeight$onMessageChannelReady;

    invoke-direct {v0}, Lo/setLastBaselineToBottomHeight$onMessageChannelReady;-><init>()V

    iput-object v0, p0, Lo/setLastBaselineToBottomHeight;->extraCallback:Lo/setLastBaselineToBottomHeight$onMessageChannelReady;

    .line 51
    new-instance v0, Lo/setLastBaselineToBottomHeight$extraCallback;

    invoke-direct {v0}, Lo/setLastBaselineToBottomHeight$extraCallback;-><init>()V

    iput-object v0, p0, Lo/setLastBaselineToBottomHeight;->onNavigationEvent:Lo/setLastBaselineToBottomHeight$extraCallback;

    .line 81
    iput-object p1, p0, Lo/setLastBaselineToBottomHeight;->onMessageChannelReady:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;

    .line 82
    iput-object p2, p0, Lo/setLastBaselineToBottomHeight;->IPostMessageService:Lo/RatingCompat$StarStyle$extraCallback;

    return-void
.end method

.method private ICustomTabsCallback(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-static {p2, p3}, Lo/getAnchorView;->onMessageChannelReady(J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", load key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lo/setLastBaselineToBottomHeight;->asInterface:Lo/getTextMetricsParamsCompat;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    .line 543
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ", "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thread: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DecodeJob"

    .line 536
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private ICustomTabsCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Lo/setImageURI;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "TR;>;",
            "Lo/setImageURI;",
            ")V"
        }
    .end annotation

    .line 439
    instance-of v0, p1, Lo/consumeTextFutureAndSetBlocking;

    if-eqz v0, :cond_0

    .line 440
    move-object v0, p1

    check-cast v0, Lo/consumeTextFutureAndSetBlocking;

    invoke-interface {v0}, Lo/consumeTextFutureAndSetBlocking;->ICustomTabsCallback()V

    :cond_0
    const/4 v0, 0x0

    .line 445
    iget-object v1, p0, Lo/setLastBaselineToBottomHeight;->extraCallback:Lo/setLastBaselineToBottomHeight$onMessageChannelReady;

    .line 5701
    iget-object v1, v1, Lo/setLastBaselineToBottomHeight$onMessageChannelReady;->extraCallback:Lo/setCompoundDrawablesRelative;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 446
    invoke-static {p1}, Lo/setCompoundDrawablesRelative;->onMessageChannelReady(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;)Lo/setCompoundDrawablesRelative;

    move-result-object p1

    move-object v0, p1

    .line 6336
    :cond_2
    invoke-direct {p0}, Lo/setLastBaselineToBottomHeight;->asBinder()V

    .line 6337
    iget-object v1, p0, Lo/setLastBaselineToBottomHeight;->ICustomTabsService:Lo/setLastBaselineToBottomHeight$onPostMessage;

    invoke-interface {v1, p1, p2}, Lo/setLastBaselineToBottomHeight$onPostMessage;->onMessageChannelReady(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Lo/setImageURI;)V

    .line 452
    sget-object p1, Lo/setLastBaselineToBottomHeight$onTransact;->onPostMessage:Lo/setLastBaselineToBottomHeight$onTransact;

    iput-object p1, p0, Lo/setLastBaselineToBottomHeight;->validateRelationship:Lo/setLastBaselineToBottomHeight$onTransact;

    .line 454
    :try_start_0
    iget-object p1, p0, Lo/setLastBaselineToBottomHeight;->extraCallback:Lo/setLastBaselineToBottomHeight$onMessageChannelReady;

    .line 6701
    iget-object p1, p1, Lo/setLastBaselineToBottomHeight$onMessageChannelReady;->extraCallback:Lo/setCompoundDrawablesRelative;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 455
    iget-object p1, p0, Lo/setLastBaselineToBottomHeight;->extraCallback:Lo/setLastBaselineToBottomHeight$onMessageChannelReady;

    iget-object p2, p0, Lo/setLastBaselineToBottomHeight;->onMessageChannelReady:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;

    iget-object v1, p0, Lo/setLastBaselineToBottomHeight;->getInterfaceDescriptor:Lo/applyFrameworkTintUsingColorFilter;

    invoke-virtual {p1, p2, v1}, Lo/setLastBaselineToBottomHeight$onMessageChannelReady;->extraCallback(Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;Lo/applyFrameworkTintUsingColorFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz v0, :cond_5

    .line 459
    invoke-virtual {v0}, Lo/setCompoundDrawablesRelative;->ICustomTabsCallback()V

    .line 7160
    :cond_5
    iget-object p1, p0, Lo/setLastBaselineToBottomHeight;->onNavigationEvent:Lo/setLastBaselineToBottomHeight$extraCallback;

    invoke-virtual {p1}, Lo/setLastBaselineToBottomHeight$extraCallback;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7161
    invoke-virtual {p0}, Lo/setLastBaselineToBottomHeight;->onNavigationEvent()V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_7

    .line 459
    invoke-virtual {v0}, Lo/setCompoundDrawablesRelative;->ICustomTabsCallback()V

    :cond_7
    throw p1
.end method

.method private asBinder()V
    .locals 3

    .line 341
    iget-object v0, p0, Lo/setLastBaselineToBottomHeight;->ICustomTabsService$Stub$Proxy:Lo/setHorizontalOffset;

    invoke-virtual {v0}, Lo/setHorizontalOffset;->extraCallback()V

    .line 342
    iget-boolean v0, p0, Lo/setLastBaselineToBottomHeight;->cancel:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lo/setLastBaselineToBottomHeight;->postMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/setLastBaselineToBottomHeight;->postMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 344
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 346
    :cond_1
    iput-boolean v1, p0, Lo/setLastBaselineToBottomHeight;->cancel:Z

    return-void
.end method

.method private asInterface()V
    .locals 3

    .line 329
    invoke-direct {p0}, Lo/setLastBaselineToBottomHeight;->asBinder()V

    .line 330
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lo/setLastBaselineToBottomHeight;->postMessage:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "Failed to load resource"

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 331
    iget-object v1, p0, Lo/setLastBaselineToBottomHeight;->ICustomTabsService:Lo/setLastBaselineToBottomHeight$onPostMessage;

    invoke-interface {v1, v0}, Lo/setLastBaselineToBottomHeight$onPostMessage;->extraCallback(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 3167
    iget-object v0, p0, Lo/setLastBaselineToBottomHeight;->onNavigationEvent:Lo/setLastBaselineToBottomHeight$extraCallback;

    invoke-virtual {v0}, Lo/setLastBaselineToBottomHeight$extraCallback;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3168
    invoke-virtual {p0}, Lo/setLastBaselineToBottomHeight;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method private extraCallback()Lo/compatMeasureContentWidth;
    .locals 3

    .line 290
    sget-object v0, Lo/setLastBaselineToBottomHeight$5;->onMessageChannelReady:[I

    iget-object v1, p0, Lo/setLastBaselineToBottomHeight;->validateRelationship:Lo/setLastBaselineToBottomHeight$onTransact;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized stage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/setLastBaselineToBottomHeight;->validateRelationship:Lo/setLastBaselineToBottomHeight$onTransact;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_1
    new-instance v0, Lo/getMinimumHeight;

    iget-object v1, p0, Lo/setLastBaselineToBottomHeight;->onPostMessage:Lo/getLastBaselineToBottomHeight;

    invoke-direct {v0, v1, p0}, Lo/getMinimumHeight;-><init>(Lo/getLastBaselineToBottomHeight;Lo/compatMeasureContentWidth$onNavigationEvent;)V

    return-object v0

    .line 294
    :cond_2
    new-instance v0, Lo/AppCompatTextView;

    iget-object v1, p0, Lo/setLastBaselineToBottomHeight;->onPostMessage:Lo/getLastBaselineToBottomHeight;

    invoke-direct {v0, v1, p0}, Lo/AppCompatTextView;-><init>(Lo/getLastBaselineToBottomHeight;Lo/compatMeasureContentWidth$onNavigationEvent;)V

    return-object v0

    .line 292
    :cond_3
    new-instance v0, Lo/setTypeface;

    iget-object v1, p0, Lo/setLastBaselineToBottomHeight;->onPostMessage:Lo/getLastBaselineToBottomHeight;

    invoke-direct {v0, v1, p0}, Lo/setTypeface;-><init>(Lo/getLastBaselineToBottomHeight;Lo/compatMeasureContentWidth$onNavigationEvent;)V

    return-object v0
.end method

.method private extraCallback(Ljava/lang/Object;Lo/setImageURI;Lo/setCompoundDrawablesWithIntrinsicBounds;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lo/setImageURI;",
            "Lo/setCompoundDrawablesWithIntrinsicBounds<",
            "TData;TResourceType;TR;>;)",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    .line 10493
    iget-object v0, p0, Lo/setLastBaselineToBottomHeight;->getInterfaceDescriptor:Lo/applyFrameworkTintUsingColorFilter;

    .line 10494
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    goto :goto_3

    .line 10498
    :cond_0
    sget-object v1, Lo/setImageURI;->onPostMessage:Lo/setImageURI;

    if-eq p2, v1, :cond_2

    iget-object v1, p0, Lo/setLastBaselineToBottomHeight;->onPostMessage:Lo/getLastBaselineToBottomHeight;

    .line 11149
    iget-boolean v1, v1, Lo/getLastBaselineToBottomHeight;->extraCommand:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 10500
    :goto_1
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lo/setInternalImageTint;

    .line 12027
    iget-object v3, v0, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v3, v2}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v3, v2}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 12101
    :cond_3
    iget-object v2, v2, Lo/setInternalImageTint;->onMessageChannelReady:Ljava/lang/Object;

    .line 10500
    :goto_2
    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    .line 10504
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    :goto_3
    move-object v6, v0

    goto :goto_4

    .line 10510
    :cond_5
    new-instance v0, Lo/applyFrameworkTintUsingColorFilter;

    invoke-direct {v0}, Lo/applyFrameworkTintUsingColorFilter;-><init>()V

    .line 10511
    iget-object v2, p0, Lo/setLastBaselineToBottomHeight;->getInterfaceDescriptor:Lo/applyFrameworkTintUsingColorFilter;

    .line 13015
    iget-object v3, v0, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    iget-object v2, v2, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v3, v2}, Lo/fromMediaItemList;->onPostMessage(Lo/fromMediaItemList;)V

    .line 10512
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lo/setInternalImageTint;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 13020
    iget-object v3, v0, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v3, v2, v1}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 521
    :goto_4
    iget-object v0, p0, Lo/setLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 13109
    iget-object v0, v0, Lo/tintDrawableUsingColorFilter;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    .line 13580
    iget-object v0, v0, Lcom/bumptech/glide/Registry;->ICustomTabsCallback:Lo/setPopupBackgroundResource;

    invoke-virtual {v0, p1}, Lo/setPopupBackgroundResource;->extraCallback(Ljava/lang/Object;)Lo/setPopupBackgroundDrawable;

    move-result-object p1

    .line 524
    :try_start_0
    iget v7, p0, Lo/setLastBaselineToBottomHeight;->onTransact:I

    iget v8, p0, Lo/setLastBaselineToBottomHeight;->onRelationshipValidationResult:I

    new-instance v9, Lo/setLastBaselineToBottomHeight$onNavigationEvent;

    invoke-direct {v9, p0, p2}, Lo/setLastBaselineToBottomHeight$onNavigationEvent;-><init>(Lo/setLastBaselineToBottomHeight;Lo/setImageURI;)V

    move-object v4, p3

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lo/setCompoundDrawablesWithIntrinsicBounds;->onPostMessage(Lo/setPopupBackgroundDrawable;Lo/applyFrameworkTintUsingColorFilter;IILo/setFirstBaselineToTopHeight$onPostMessage;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    invoke-interface {p1}, Lo/setPopupBackgroundDrawable;->onPostMessage()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lo/setPopupBackgroundDrawable;->onPostMessage()V

    throw p2
.end method

.method private onMessageChannelReady(Lo/AppCompatImageView;Ljava/lang/Object;Lo/setImageURI;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/AppCompatImageView<",
            "*>;TData;",
            "Lo/setImageURI;",
            ")",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 480
    invoke-interface {p1}, Lo/AppCompatImageView;->onPostMessage()V

    return-object v0

    .line 473
    :cond_0
    :try_start_0
    invoke-static {}, Lo/getAnchorView;->ICustomTabsCallback()J

    move-result-wide v1

    .line 7487
    iget-object v3, p0, Lo/setLastBaselineToBottomHeight;->onPostMessage:Lo/getLastBaselineToBottomHeight;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 8145
    iget-object v5, v3, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 9109
    iget-object v5, v5, Lo/tintDrawableUsingColorFilter;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    .line 8145
    iget-object v6, v3, Lo/getLastBaselineToBottomHeight;->onRelationshipValidationResult:Ljava/lang/Class;

    iget-object v3, v3, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Class;

    invoke-virtual {v5, v4, v6, v3}, Lcom/bumptech/glide/Registry;->extraCallback(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lo/setCompoundDrawablesWithIntrinsicBounds;

    move-result-object v3

    .line 7488
    invoke-direct {p0, p2, p3, v3}, Lo/setLastBaselineToBottomHeight;->extraCallback(Ljava/lang/Object;Lo/setImageURI;Lo/setCompoundDrawablesWithIntrinsicBounds;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v3, 0x2

    .line 475
    invoke-static {p3, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "Decoded result "

    .line 476
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 9532
    invoke-direct {p0, p3, v1, v2, v0}, Lo/setLastBaselineToBottomHeight;->ICustomTabsCallback(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    :cond_1
    invoke-interface {p1}, Lo/AppCompatImageView;->onPostMessage()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lo/AppCompatImageView;->onPostMessage()V

    throw p2
.end method

.method private onPostMessage()V
    .locals 3

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lo/setLastBaselineToBottomHeight;->IPostMessageService$Stub:Ljava/lang/Thread;

    .line 306
    invoke-static {}, Lo/getAnchorView;->ICustomTabsCallback()J

    move-result-wide v0

    iput-wide v0, p0, Lo/setLastBaselineToBottomHeight;->ICustomTabsService$Stub:J

    const/4 v0, 0x0

    .line 308
    :cond_0
    iget-boolean v1, p0, Lo/setLastBaselineToBottomHeight;->requestPostMessageChannel:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/setLastBaselineToBottomHeight;->mayLaunchUrl:Lo/compatMeasureContentWidth;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lo/setLastBaselineToBottomHeight;->mayLaunchUrl:Lo/compatMeasureContentWidth;

    .line 310
    invoke-interface {v0}, Lo/compatMeasureContentWidth;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    iget-object v1, p0, Lo/setLastBaselineToBottomHeight;->validateRelationship:Lo/setLastBaselineToBottomHeight$onTransact;

    invoke-virtual {p0, v1}, Lo/setLastBaselineToBottomHeight;->onMessageChannelReady(Lo/setLastBaselineToBottomHeight$onTransact;)Lo/setLastBaselineToBottomHeight$onTransact;

    move-result-object v1

    iput-object v1, p0, Lo/setLastBaselineToBottomHeight;->validateRelationship:Lo/setLastBaselineToBottomHeight$onTransact;

    .line 312
    invoke-direct {p0}, Lo/setLastBaselineToBottomHeight;->extraCallback()Lo/compatMeasureContentWidth;

    move-result-object v1

    iput-object v1, p0, Lo/setLastBaselineToBottomHeight;->mayLaunchUrl:Lo/compatMeasureContentWidth;

    .line 314
    iget-object v1, p0, Lo/setLastBaselineToBottomHeight;->validateRelationship:Lo/setLastBaselineToBottomHeight$onTransact;

    sget-object v2, Lo/setLastBaselineToBottomHeight$onTransact;->extraCallback:Lo/setLastBaselineToBottomHeight$onTransact;

    if-ne v1, v2, :cond_0

    .line 2372
    sget-object v0, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    iput-object v0, p0, Lo/setLastBaselineToBottomHeight;->warmup:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    .line 2373
    iget-object v0, p0, Lo/setLastBaselineToBottomHeight;->ICustomTabsService:Lo/setLastBaselineToBottomHeight$onPostMessage;

    invoke-interface {v0, p0}, Lo/setLastBaselineToBottomHeight$onPostMessage;->extraCallback(Lo/setLastBaselineToBottomHeight;)V

    return-void

    .line 320
    :cond_1
    iget-object v1, p0, Lo/setLastBaselineToBottomHeight;->validateRelationship:Lo/setLastBaselineToBottomHeight$onTransact;

    sget-object v2, Lo/setLastBaselineToBottomHeight$onTransact;->onRelationshipValidationResult:Lo/setLastBaselineToBottomHeight$onTransact;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lo/setLastBaselineToBottomHeight;->requestPostMessageChannel:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 321
    invoke-direct {p0}, Lo/setLastBaselineToBottomHeight;->asInterface()V

    :cond_3
    return-void
.end method

.method private onTransact()V
    .locals 4

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    .line 413
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-wide v0, p0, Lo/setLastBaselineToBottomHeight;->ICustomTabsService$Stub:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/setLastBaselineToBottomHeight;->INotificationSideChannel:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cache key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/setLastBaselineToBottomHeight;->updateVisuals:Lo/AppCompatImageHelper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fetcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/setLastBaselineToBottomHeight;->IPostMessageService$Stub$Proxy:Lo/AppCompatImageView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Retrieved data"

    invoke-direct {p0, v3, v0, v1, v2}, Lo/setLastBaselineToBottomHeight;->ICustomTabsCallback(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 426
    :try_start_0
    iget-object v1, p0, Lo/setLastBaselineToBottomHeight;->IPostMessageService$Stub$Proxy:Lo/AppCompatImageView;

    iget-object v2, p0, Lo/setLastBaselineToBottomHeight;->INotificationSideChannel:Ljava/lang/Object;

    iget-object v3, p0, Lo/setLastBaselineToBottomHeight;->notify:Lo/setImageURI;

    invoke-direct {p0, v1, v2, v3}, Lo/setLastBaselineToBottomHeight;->onMessageChannelReady(Lo/AppCompatImageView;Ljava/lang/Object;Lo/setImageURI;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    move-result-object v0
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/GlideException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 428
    iget-object v2, p0, Lo/setLastBaselineToBottomHeight;->cancelAll:Lo/AppCompatImageHelper;

    iget-object v3, p0, Lo/setLastBaselineToBottomHeight;->notify:Lo/setImageURI;

    .line 5049
    iput-object v2, v1, Lcom/bumptech/glide/load/engine/GlideException;->onNavigationEvent:Lo/AppCompatImageHelper;

    .line 5050
    iput-object v3, v1, Lcom/bumptech/glide/load/engine/GlideException;->onMessageChannelReady:Lo/setImageURI;

    .line 5051
    iput-object v0, v1, Lcom/bumptech/glide/load/engine/GlideException;->onPostMessage:Ljava/lang/Class;

    .line 429
    iget-object v2, p0, Lo/setLastBaselineToBottomHeight;->postMessage:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v0, :cond_1

    .line 432
    iget-object v1, p0, Lo/setLastBaselineToBottomHeight;->notify:Lo/setImageURI;

    invoke-direct {p0, v0, v1}, Lo/setLastBaselineToBottomHeight;->ICustomTabsCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Lo/setImageURI;)V

    return-void

    .line 434
    :cond_1
    invoke-direct {p0}, Lo/setLastBaselineToBottomHeight;->onPostMessage()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 372
    sget-object v0, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    iput-object v0, p0, Lo/setLastBaselineToBottomHeight;->warmup:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    .line 373
    iget-object v0, p0, Lo/setLastBaselineToBottomHeight;->ICustomTabsService:Lo/setLastBaselineToBottomHeight$onPostMessage;

    invoke-interface {v0, p0}, Lo/setLastBaselineToBottomHeight$onPostMessage;->extraCallback(Lo/setLastBaselineToBottomHeight;)V

    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 38
    check-cast p1, Lo/setLastBaselineToBottomHeight;

    .line 14207
    iget-object v0, p0, Lo/setLastBaselineToBottomHeight;->asBinder:Lo/getTintList;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 15207
    iget-object v1, p1, Lo/setLastBaselineToBottomHeight;->asBinder:Lo/getTintList;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 14201
    iget v0, p0, Lo/setLastBaselineToBottomHeight;->ICustomTabsCallback$Stub$Proxy:I

    iget p1, p1, Lo/setLastBaselineToBottomHeight;->ICustomTabsCallback$Stub$Proxy:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final extraCallback(Lo/AppCompatImageHelper;Ljava/lang/Exception;Lo/AppCompatImageView;Lo/setImageURI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppCompatImageHelper;",
            "Ljava/lang/Exception;",
            "Lo/AppCompatImageView<",
            "*>;",
            "Lo/setImageURI;",
            ")V"
        }
    .end annotation

    .line 400
    invoke-interface {p3}, Lo/AppCompatImageView;->onPostMessage()V

    .line 401
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    invoke-interface {p3}, Lo/AppCompatImageView;->onNavigationEvent()Ljava/lang/Class;

    move-result-object p2

    .line 4049
    iput-object p1, v0, Lcom/bumptech/glide/load/engine/GlideException;->onNavigationEvent:Lo/AppCompatImageHelper;

    .line 4050
    iput-object p4, v0, Lcom/bumptech/glide/load/engine/GlideException;->onMessageChannelReady:Lo/setImageURI;

    .line 4051
    iput-object p2, v0, Lcom/bumptech/glide/load/engine/GlideException;->onPostMessage:Ljava/lang/Class;

    .line 403
    iget-object p1, p0, Lo/setLastBaselineToBottomHeight;->postMessage:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lo/setLastBaselineToBottomHeight;->IPostMessageService$Stub:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 405
    sget-object p1, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    iput-object p1, p0, Lo/setLastBaselineToBottomHeight;->warmup:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    .line 406
    iget-object p1, p0, Lo/setLastBaselineToBottomHeight;->ICustomTabsService:Lo/setLastBaselineToBottomHeight$onPostMessage;

    invoke-interface {p1, p0}, Lo/setLastBaselineToBottomHeight$onPostMessage;->extraCallback(Lo/setLastBaselineToBottomHeight;)V

    return-void

    .line 408
    :cond_0
    invoke-direct {p0}, Lo/setLastBaselineToBottomHeight;->onPostMessage()V

    return-void
.end method

.method public final f_()Lo/setHorizontalOffset;
    .locals 1

    .line 551
    iget-object v0, p0, Lo/setLastBaselineToBottomHeight;->ICustomTabsService$Stub$Proxy:Lo/setHorizontalOffset;

    return-object v0
.end method

.method final onMessageChannelReady(Lo/setLastBaselineToBottomHeight$onTransact;)Lo/setLastBaselineToBottomHeight$onTransact;
    .locals 2

    .line 350
    :goto_0
    sget-object v0, Lo/setLastBaselineToBottomHeight$5;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 352
    iget-object p1, p0, Lo/setLastBaselineToBottomHeight;->newSession:Lo/getFirstBaselineToTopHeight;

    invoke-virtual {p1}, Lo/getFirstBaselineToTopHeight;->onMessageChannelReady()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 353
    sget-object p1, Lo/setLastBaselineToBottomHeight$onTransact;->ICustomTabsCallback:Lo/setLastBaselineToBottomHeight$onTransact;

    return-object p1

    .line 354
    :cond_0
    sget-object p1, Lo/setLastBaselineToBottomHeight$onTransact;->ICustomTabsCallback:Lo/setLastBaselineToBottomHeight$onTransact;

    goto :goto_0

    .line 366
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unrecognized stage: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_2
    sget-object p1, Lo/setLastBaselineToBottomHeight$onTransact;->onRelationshipValidationResult:Lo/setLastBaselineToBottomHeight$onTransact;

    return-object p1

    .line 361
    :cond_3
    iget-boolean p1, p0, Lo/setLastBaselineToBottomHeight;->extraCommand:Z

    if-eqz p1, :cond_4

    sget-object p1, Lo/setLastBaselineToBottomHeight$onTransact;->onRelationshipValidationResult:Lo/setLastBaselineToBottomHeight$onTransact;

    return-object p1

    :cond_4
    sget-object p1, Lo/setLastBaselineToBottomHeight$onTransact;->extraCallback:Lo/setLastBaselineToBottomHeight$onTransact;

    return-object p1

    .line 356
    :cond_5
    iget-object p1, p0, Lo/setLastBaselineToBottomHeight;->newSession:Lo/getFirstBaselineToTopHeight;

    invoke-virtual {p1}, Lo/getFirstBaselineToTopHeight;->onNavigationEvent()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 357
    sget-object p1, Lo/setLastBaselineToBottomHeight$onTransact;->onNavigationEvent:Lo/setLastBaselineToBottomHeight$onTransact;

    return-object p1

    .line 358
    :cond_6
    sget-object p1, Lo/setLastBaselineToBottomHeight$onTransact;->onNavigationEvent:Lo/setLastBaselineToBottomHeight$onTransact;

    goto :goto_0
.end method

.method final onNavigationEvent()V
    .locals 4

    .line 173
    iget-object v0, p0, Lo/setLastBaselineToBottomHeight;->onNavigationEvent:Lo/setLastBaselineToBottomHeight$extraCallback;

    invoke-virtual {v0}, Lo/setLastBaselineToBottomHeight$extraCallback;->ICustomTabsCallback()V

    .line 174
    iget-object v0, p0, Lo/setLastBaselineToBottomHeight;->extraCallback:Lo/setLastBaselineToBottomHeight$onMessageChannelReady;

    const/4 v1, 0x0

    .line 1705
    iput-object v1, v0, Lo/setLastBaselineToBottomHeight$onMessageChannelReady;->onMessageChannelReady:Lo/AppCompatImageHelper;

    .line 1706
    iput-object v1, v0, Lo/setLastBaselineToBottomHeight$onMessageChannelReady;->onNavigationEvent:Lo/shouldApplyFrameworkTintUsingColorFilter;

    .line 1707
    iput-object v1, v0, Lo/setLastBaselineToBottomHeight$onMessageChannelReady;->extraCallback:Lo/setCompoundDrawablesRelative;

    .line 175
    iget-object v0, p0, Lo/setLastBaselineToBottomHeight;->onPostMessage:Lo/getLastBaselineToBottomHeight;

    .line 2078
    iput-object v1, v0, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 2079
    iput-object v1, v0, Lo/getLastBaselineToBottomHeight;->onMessageChannelReady:Ljava/lang/Object;

    .line 2080
    iput-object v1, v0, Lo/getLastBaselineToBottomHeight;->getInterfaceDescriptor:Lo/AppCompatImageHelper;

    .line 2081
    iput-object v1, v0, Lo/getLastBaselineToBottomHeight;->onRelationshipValidationResult:Ljava/lang/Class;

    .line 2082
    iput-object v1, v0, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Class;

    .line 2083
    iput-object v1, v0, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback$Stub:Lo/applyFrameworkTintUsingColorFilter;

    .line 2084
    iput-object v1, v0, Lo/getLastBaselineToBottomHeight;->warmup:Lo/getTintList;

    .line 2085
    iput-object v1, v0, Lo/getLastBaselineToBottomHeight;->asBinder:Ljava/util/Map;

    .line 2086
    iput-object v1, v0, Lo/getLastBaselineToBottomHeight;->updateVisuals:Lo/getFirstBaselineToTopHeight;

    .line 2088
    iget-object v2, v0, Lo/getLastBaselineToBottomHeight;->onPostMessage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    .line 2089
    iput-boolean v2, v0, Lo/getLastBaselineToBottomHeight;->newSession:Z

    .line 2090
    iget-object v3, v0, Lo/getLastBaselineToBottomHeight;->extraCallback:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2091
    iput-boolean v2, v0, Lo/getLastBaselineToBottomHeight;->ICustomTabsService:Z

    .line 176
    iput-boolean v2, p0, Lo/setLastBaselineToBottomHeight;->cancel:Z

    .line 177
    iput-object v1, p0, Lo/setLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 178
    iput-object v1, p0, Lo/setLastBaselineToBottomHeight;->ICustomTabsCallback$Stub:Lo/AppCompatImageHelper;

    .line 179
    iput-object v1, p0, Lo/setLastBaselineToBottomHeight;->getInterfaceDescriptor:Lo/applyFrameworkTintUsingColorFilter;

    .line 180
    iput-object v1, p0, Lo/setLastBaselineToBottomHeight;->asBinder:Lo/getTintList;

    .line 181
    iput-object v1, p0, Lo/setLastBaselineToBottomHeight;->asInterface:Lo/getTextMetricsParamsCompat;

    .line 182
    iput-object v1, p0, Lo/setLastBaselineToBottomHeight;->ICustomTabsService:Lo/setLastBaselineToBottomHeight$onPostMessage;

    .line 183
    iput-object v1, p0, Lo/setLastBaselineToBottomHeight;->validateRelationship:Lo/setLastBaselineToBottomHeight$onTransact;

    .line 184
    iput-object v1, p0, Lo/setLastBaselineToBottomHeight;->mayLaunchUrl:Lo/compatMeasureContentWidth;

    .line 185
    iput-object v1, p0, Lo/setLastBaselineToBottomHeight;->IPostMessageService$Stub:Ljava/lang/Thread;

    .line 186
    iput-object v1, p0, Lo/setLastBaselineToBottomHeight;->updateVisuals:Lo/AppCompatImageHelper;

    .line 187
    iput-object v1, p0, Lo/setLastBaselineToBottomHeight;->INotificationSideChannel:Ljava/lang/Object;

    .line 188
    iput-object v1, p0, Lo/setLastBaselineToBottomHeight;->notify:Lo/setImageURI;

    .line 189
    iput-object v1, p0, Lo/setLastBaselineToBottomHeight;->IPostMessageService$Stub$Proxy:Lo/AppCompatImageView;

    const-wide/16 v0, 0x0

    .line 190
    iput-wide v0, p0, Lo/setLastBaselineToBottomHeight;->ICustomTabsService$Stub:J

    .line 191
    iput-boolean v2, p0, Lo/setLastBaselineToBottomHeight;->requestPostMessageChannel:Z

    .line 193
    iget-object v0, p0, Lo/setLastBaselineToBottomHeight;->postMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    iget-object v0, p0, Lo/setLastBaselineToBottomHeight;->IPostMessageService:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v0, p0}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPostMessage(Lo/AppCompatImageHelper;Ljava/lang/Object;Lo/AppCompatImageView;Lo/setImageURI;Lo/AppCompatImageHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppCompatImageHelper;",
            "Ljava/lang/Object;",
            "Lo/AppCompatImageView<",
            "*>;",
            "Lo/setImageURI;",
            "Lo/AppCompatImageHelper;",
            ")V"
        }
    .end annotation

    .line 379
    iput-object p1, p0, Lo/setLastBaselineToBottomHeight;->updateVisuals:Lo/AppCompatImageHelper;

    .line 380
    iput-object p2, p0, Lo/setLastBaselineToBottomHeight;->INotificationSideChannel:Ljava/lang/Object;

    .line 381
    iput-object p3, p0, Lo/setLastBaselineToBottomHeight;->IPostMessageService$Stub$Proxy:Lo/AppCompatImageView;

    .line 382
    iput-object p4, p0, Lo/setLastBaselineToBottomHeight;->notify:Lo/setImageURI;

    .line 383
    iput-object p5, p0, Lo/setLastBaselineToBottomHeight;->cancelAll:Lo/AppCompatImageHelper;

    .line 384
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lo/setLastBaselineToBottomHeight;->IPostMessageService$Stub:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 385
    sget-object p1, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;->extraCallback:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    iput-object p1, p0, Lo/setLastBaselineToBottomHeight;->warmup:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    .line 386
    iget-object p1, p0, Lo/setLastBaselineToBottomHeight;->ICustomTabsService:Lo/setLastBaselineToBottomHeight$onPostMessage;

    invoke-interface {p1, p0}, Lo/setLastBaselineToBottomHeight$onPostMessage;->extraCallback(Lo/setLastBaselineToBottomHeight;)V

    return-void

    .line 390
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lo/setLastBaselineToBottomHeight;->onTransact()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 392
    throw p1
.end method

.method public final run()V
    .locals 6

    const-string v0, "DecodeJob"

    .line 228
    iget-object v1, p0, Lo/setLastBaselineToBottomHeight;->IPostMessageService$Stub$Proxy:Lo/AppCompatImageView;

    const/4 v2, 0x3

    .line 230
    :try_start_0
    iget-boolean v3, p0, Lo/setLastBaselineToBottomHeight;->requestPostMessageChannel:Z

    if-eqz v3, :cond_1

    .line 231
    invoke-direct {p0}, Lo/setLastBaselineToBottomHeight;->asInterface()V
    :try_end_0
    .catch Lo/getInternalPopup; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 265
    invoke-interface {v1}, Lo/AppCompatImageView;->onPostMessage()V

    :cond_0
    return-void

    .line 2272
    :cond_1
    :try_start_1
    sget-object v3, Lo/setLastBaselineToBottomHeight$5;->extraCallback:[I

    iget-object v4, p0, Lo/setLastBaselineToBottomHeight;->warmup:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    if-ne v3, v2, :cond_2

    .line 2282
    invoke-direct {p0}, Lo/setLastBaselineToBottomHeight;->onTransact()V

    goto :goto_0

    .line 2285
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unrecognized run reason: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lo/setLastBaselineToBottomHeight;->warmup:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2279
    :cond_3
    invoke-direct {p0}, Lo/setLastBaselineToBottomHeight;->onPostMessage()V

    goto :goto_0

    .line 2274
    :cond_4
    sget-object v3, Lo/setLastBaselineToBottomHeight$onTransact;->onMessageChannelReady:Lo/setLastBaselineToBottomHeight$onTransact;

    invoke-virtual {p0, v3}, Lo/setLastBaselineToBottomHeight;->onMessageChannelReady(Lo/setLastBaselineToBottomHeight$onTransact;)Lo/setLastBaselineToBottomHeight$onTransact;

    move-result-object v3

    iput-object v3, p0, Lo/setLastBaselineToBottomHeight;->validateRelationship:Lo/setLastBaselineToBottomHeight$onTransact;

    .line 2275
    invoke-direct {p0}, Lo/setLastBaselineToBottomHeight;->extraCallback()Lo/compatMeasureContentWidth;

    move-result-object v3

    iput-object v3, p0, Lo/setLastBaselineToBottomHeight;->mayLaunchUrl:Lo/compatMeasureContentWidth;

    .line 2276
    invoke-direct {p0}, Lo/setLastBaselineToBottomHeight;->onPostMessage()V
    :try_end_1
    .catch Lo/getInternalPopup; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_5

    .line 265
    invoke-interface {v1}, Lo/AppCompatImageView;->onPostMessage()V

    :cond_5
    return-void

    :catchall_0
    move-exception v3

    .line 246
    :try_start_2
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lo/setLastBaselineToBottomHeight;->requestPostMessageChannel:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", stage: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/setLastBaselineToBottomHeight;->validateRelationship:Lo/setLastBaselineToBottomHeight$onTransact;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    :cond_6
    iget-object v0, p0, Lo/setLastBaselineToBottomHeight;->validateRelationship:Lo/setLastBaselineToBottomHeight$onTransact;

    sget-object v2, Lo/setLastBaselineToBottomHeight$onTransact;->onPostMessage:Lo/setLastBaselineToBottomHeight$onTransact;

    if-eq v0, v2, :cond_7

    .line 254
    iget-object v0, p0, Lo/setLastBaselineToBottomHeight;->postMessage:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-direct {p0}, Lo/setLastBaselineToBottomHeight;->asInterface()V

    .line 257
    :cond_7
    iget-boolean v0, p0, Lo/setLastBaselineToBottomHeight;->requestPostMessageChannel:Z

    if-nez v0, :cond_8

    .line 258
    throw v3

    .line 260
    :cond_8
    throw v3

    :catch_0
    move-exception v0

    .line 238
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_9

    .line 265
    invoke-interface {v1}, Lo/AppCompatImageView;->onPostMessage()V

    .line 267
    :cond_9
    throw v0
.end method
