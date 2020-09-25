.class public final Lo/getGravity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getNextLocationOffset;
.implements Lo/LinearLayoutCompat$OrientationMode;
.implements Lo/setOrientation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getGravity$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getNextLocationOffset;",
        "Lo/LinearLayoutCompat$OrientationMode;",
        "Lo/setOrientation;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Z


# instance fields
.field private final ICustomTabsCallback$Stub:Landroid/content/Context;

.field private final ICustomTabsCallback$Stub$Proxy:I

.field private final ICustomTabsService:Lo/measureChildBeforeLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/measureChildBeforeLayout<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile ICustomTabsService$Stub:Lo/setLineHeight;

.field private ICustomTabsService$Stub$Proxy:Landroid/graphics/drawable/Drawable;

.field private INotificationSideChannel:I

.field private IPostMessageService:J

.field private IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

.field private IPostMessageService$Stub$Proxy:Z

.field private final asBinder:Ljava/lang/Object;

.field private final asInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field private cancel:Ljava/lang/RuntimeException;

.field private cancelAll:I

.field private final extraCallback:Lo/setHorizontalOffset;

.field private final extraCommand:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/layoutVertical<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field private final getInterfaceDescriptor:Lo/getTintList;

.field private final mayLaunchUrl:Lo/isModal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isModal<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final newSession:I

.field private notify:Landroid/graphics/drawable/Drawable;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Lo/layoutVertical;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/layoutVertical<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/lang/Object;

.field private final onRelationshipValidationResult:Lo/tintDrawableUsingColorFilter;

.field private final onTransact:Lo/onPostMessage$extraCallback;

.field private postMessage:Lo/setLineHeight$onNavigationEvent;

.field private requestPostMessageChannel:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final updateVisuals:Ljava/util/concurrent/Executor;

.field private validateRelationship:Landroid/graphics/drawable/Drawable;

.field private final warmup:Lo/ListPopupWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ListPopupWindow<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Request"

    const/4 v1, 0x2

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lo/getGravity;->ICustomTabsCallback:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lo/tintDrawableUsingColorFilter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lo/measureChildBeforeLayout;IILo/getTintList;Lo/ListPopupWindow;Lo/layoutVertical;Ljava/util/List;Lo/onPostMessage$extraCallback;Lo/setLineHeight;Lo/isModal;Ljava/util/concurrent/Executor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/tintDrawableUsingColorFilter;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lo/measureChildBeforeLayout<",
            "*>;II",
            "Lo/getTintList;",
            "Lo/ListPopupWindow<",
            "TR;>;",
            "Lo/layoutVertical<",
            "TR;>;",
            "Ljava/util/List<",
            "Lo/layoutVertical<",
            "TR;>;>;",
            "Lo/onPostMessage$extraCallback;",
            "Lo/setLineHeight;",
            "Lo/isModal<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-boolean v2, Lo/getGravity;->ICustomTabsCallback:Z

    if-eqz v2, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v0, Lo/getGravity;->onMessageChannelReady:Ljava/lang/String;

    .line 2016
    new-instance v2, Lo/setHorizontalOffset$ICustomTabsCallback;

    invoke-direct {v2}, Lo/setHorizontalOffset$ICustomTabsCallback;-><init>()V

    .line 60
    iput-object v2, v0, Lo/getGravity;->extraCallback:Lo/setHorizontalOffset;

    move-object v2, p3

    .line 188
    iput-object v2, v0, Lo/getGravity;->onPostMessage:Ljava/lang/Object;

    move-object v2, p1

    .line 189
    iput-object v2, v0, Lo/getGravity;->ICustomTabsCallback$Stub:Landroid/content/Context;

    .line 190
    iput-object v1, v0, Lo/getGravity;->onRelationshipValidationResult:Lo/tintDrawableUsingColorFilter;

    move-object v2, p4

    .line 191
    iput-object v2, v0, Lo/getGravity;->asBinder:Ljava/lang/Object;

    move-object v2, p5

    .line 192
    iput-object v2, v0, Lo/getGravity;->asInterface:Ljava/lang/Class;

    move-object v2, p6

    .line 193
    iput-object v2, v0, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    move v2, p7

    .line 194
    iput v2, v0, Lo/getGravity;->ICustomTabsCallback$Stub$Proxy:I

    move v2, p8

    .line 195
    iput v2, v0, Lo/getGravity;->newSession:I

    move-object v2, p9

    .line 196
    iput-object v2, v0, Lo/getGravity;->getInterfaceDescriptor:Lo/getTintList;

    move-object v2, p10

    .line 197
    iput-object v2, v0, Lo/getGravity;->warmup:Lo/ListPopupWindow;

    move-object v2, p11

    .line 198
    iput-object v2, v0, Lo/getGravity;->onNavigationEvent:Lo/layoutVertical;

    move-object v2, p12

    .line 199
    iput-object v2, v0, Lo/getGravity;->extraCommand:Ljava/util/List;

    move-object/from16 v2, p13

    .line 200
    iput-object v2, v0, Lo/getGravity;->onTransact:Lo/onPostMessage$extraCallback;

    move-object/from16 v2, p14

    .line 201
    iput-object v2, v0, Lo/getGravity;->ICustomTabsService$Stub:Lo/setLineHeight;

    move-object/from16 v2, p15

    .line 202
    iput-object v2, v0, Lo/getGravity;->mayLaunchUrl:Lo/isModal;

    move-object/from16 v2, p16

    .line 203
    iput-object v2, v0, Lo/getGravity;->updateVisuals:Ljava/util/concurrent/Executor;

    .line 204
    sget-object v2, Lo/getGravity$ICustomTabsCallback;->onMessageChannelReady:Lo/getGravity$ICustomTabsCallback;

    iput-object v2, v0, Lo/getGravity;->IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

    .line 206
    iget-object v2, v0, Lo/getGravity;->cancel:Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    .line 2128
    iget-boolean v1, v1, Lo/tintDrawableUsingColorFilter;->asInterface:Z

    if-eqz v1, :cond_1

    .line 207
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Glide request origin trace"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lo/getGravity;->cancel:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;Lo/tintDrawableUsingColorFilter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lo/measureChildBeforeLayout;IILo/getTintList;Lo/ListPopupWindow;Lo/layoutVertical;Ljava/util/List;Lo/onPostMessage$extraCallback;Lo/setLineHeight;Lo/isModal;Ljava/util/concurrent/Executor;)Lo/getGravity;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lo/tintDrawableUsingColorFilter;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lo/measureChildBeforeLayout<",
            "*>;II",
            "Lo/getTintList;",
            "Lo/ListPopupWindow<",
            "TR;>;",
            "Lo/layoutVertical<",
            "TR;>;",
            "Ljava/util/List<",
            "Lo/layoutVertical<",
            "TR;>;>;",
            "Lo/onPostMessage$extraCallback;",
            "Lo/setLineHeight;",
            "Lo/isModal<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lo/getGravity<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 150
    new-instance v17, Lo/getGravity;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lo/getGravity;-><init>(Landroid/content/Context;Lo/tintDrawableUsingColorFilter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lo/measureChildBeforeLayout;IILo/getTintList;Lo/ListPopupWindow;Lo/layoutVertical;Ljava/util/List;Lo/onPostMessage$extraCallback;Lo/setLineHeight;Lo/isModal;Ljava/util/concurrent/Executor;)V

    return-object v17
.end method

.method private asBinder()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 391
    iget-object v0, p0, Lo/getGravity;->notify:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 7360
    iget-object v0, v0, Lo/measureChildBeforeLayout;->asInterface:Landroid/graphics/drawable/Drawable;

    .line 392
    iput-object v0, p0, Lo/getGravity;->notify:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 8354
    iget v0, v0, Lo/measureChildBeforeLayout;->ICustomTabsService:I

    if-lez v0, :cond_0

    .line 394
    iget-object v0, p0, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 9354
    iget v0, v0, Lo/measureChildBeforeLayout;->ICustomTabsService:I

    .line 394
    invoke-direct {p0, v0}, Lo/getGravity;->onPostMessage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/getGravity;->notify:Landroid/graphics/drawable/Drawable;

    .line 397
    :cond_0
    iget-object v0, p0, Lo/getGravity;->notify:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private asInterface()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 380
    iget-object v0, p0, Lo/getGravity;->ICustomTabsService$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 5349
    iget-object v0, v0, Lo/measureChildBeforeLayout;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    .line 381
    iput-object v0, p0, Lo/getGravity;->ICustomTabsService$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 6343
    iget v0, v0, Lo/measureChildBeforeLayout;->onRelationshipValidationResult:I

    if-lez v0, :cond_0

    .line 383
    iget-object v0, p0, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 7343
    iget v0, v0, Lo/measureChildBeforeLayout;->onRelationshipValidationResult:I

    .line 383
    invoke-direct {p0, v0}, Lo/getGravity;->onPostMessage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/getGravity;->ICustomTabsService$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    .line 386
    :cond_0
    iget-object v0, p0, Lo/getGravity;->ICustomTabsService$Stub$Proxy:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private onMessageChannelReady(Lcom/bumptech/glide/load/engine/GlideException;I)V
    .locals 4

    .line 653
    iget-object v0, p0, Lo/getGravity;->extraCallback:Lo/setHorizontalOffset;

    invoke-virtual {v0}, Lo/setHorizontalOffset;->extraCallback()V

    .line 654
    iget-object v0, p0, Lo/getGravity;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_0
    iget-object v1, p0, Lo/getGravity;->onRelationshipValidationResult:Lo/tintDrawableUsingColorFilter;

    .line 20113
    iget v1, v1, Lo/tintDrawableUsingColorFilter;->asBinder:I

    if-gt v1, p2, :cond_0

    const-string p2, "Glide"

    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/getGravity;->asBinder:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lo/getGravity;->INotificationSideChannel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lo/getGravity;->cancelAll:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x4

    if-gt v1, p2, :cond_0

    const-string p2, "Glide"

    .line 661
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/engine/GlideException;->onPostMessage(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 665
    iput-object p1, p0, Lo/getGravity;->postMessage:Lo/setLineHeight$onNavigationEvent;

    .line 666
    sget-object p1, Lo/getGravity$ICustomTabsCallback;->onNavigationEvent:Lo/getGravity$ICustomTabsCallback;

    iput-object p1, p0, Lo/getGravity;->IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

    const/4 p1, 0x1

    .line 668
    iput-boolean p1, p0, Lo/getGravity;->IPostMessageService$Stub$Proxy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 672
    :try_start_1
    iget-object p2, p0, Lo/getGravity;->extraCommand:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 673
    iget-object p2, p0, Lo/getGravity;->extraCommand:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 683
    :cond_1
    invoke-direct {p0}, Lo/getGravity;->onRelationshipValidationResult()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    :try_start_2
    iput-boolean p1, p0, Lo/getGravity;->IPostMessageService$Stub$Proxy:Z

    .line 690
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p2

    .line 686
    iput-boolean p1, p0, Lo/getGravity;->IPostMessageService$Stub$Proxy:Z

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 690
    monitor-exit v0

    throw p1
.end method

.method private onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lo/getGravity;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Request"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onMessageChannelReady(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Ljava/lang/Object;Lo/setImageURI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "TR;>;TR;",
            "Lo/setImageURI;",
            ")V"
        }
    .end annotation

    .line 595
    sget-object v0, Lo/getGravity$ICustomTabsCallback;->ICustomTabsCallback:Lo/getGravity$ICustomTabsCallback;

    iput-object v0, p0, Lo/getGravity;->IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

    .line 596
    iput-object p1, p0, Lo/getGravity;->requestPostMessageChannel:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    .line 598
    iget-object p1, p0, Lo/getGravity;->onRelationshipValidationResult:Lo/tintDrawableUsingColorFilter;

    .line 19113
    iget p1, p1, Lo/tintDrawableUsingColorFilter;->asBinder:I

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 599
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Finished loading "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lo/getGravity;->asBinder:Ljava/lang/Object;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " with size ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lo/getGravity;->INotificationSideChannel:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lo/getGravity;->cancelAll:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lo/getGravity;->IPostMessageService:J

    .line 612
    invoke-static {v0, v1}, Lo/getAnchorView;->onMessageChannelReady(J)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, " ms"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Glide"

    .line 599
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 616
    iput-boolean p1, p0, Lo/getGravity;->IPostMessageService$Stub$Proxy:Z

    const/4 p1, 0x0

    .line 619
    :try_start_0
    iget-object p3, p0, Lo/getGravity;->extraCommand:Ljava/util/List;

    if-eqz p3, :cond_1

    .line 620
    iget-object p3, p0, Lo/getGravity;->extraCommand:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 630
    :cond_1
    iget-object p3, p0, Lo/getGravity;->mayLaunchUrl:Lo/isModal;

    invoke-interface {p3}, Lo/isModal;->extraCallback()Lo/setPromptPosition;

    .line 631
    iget-object p3, p0, Lo/getGravity;->warmup:Lo/ListPopupWindow;

    invoke-interface {p3, p2}, Lo/ListPopupWindow;->extraCallback(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    iput-boolean p1, p0, Lo/getGravity;->IPostMessageService$Stub$Proxy:Z

    return-void

    :catchall_0
    move-exception p2

    iput-boolean p1, p0, Lo/getGravity;->IPostMessageService$Stub$Proxy:Z

    throw p2
.end method

.method private onPostMessage(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 403
    iget-object v0, p0, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 9365
    iget-object v0, v0, Lo/measureChildBeforeLayout;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 10365
    iget-object v0, v0, Lo/measureChildBeforeLayout;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/Resources$Theme;

    goto :goto_0

    .line 403
    :cond_0
    iget-object v0, p0, Lo/getGravity;->ICustomTabsCallback$Stub:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 404
    :goto_0
    iget-object v1, p0, Lo/getGravity;->onRelationshipValidationResult:Lo/tintDrawableUsingColorFilter;

    invoke-static {v1, p1, v0}, Lo/onViewAttachedToWindow;->onPostMessage(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private onRelationshipValidationResult()V
    .locals 2

    .line 10498
    iget-object v0, p0, Lo/getGravity;->onTransact:Lo/onPostMessage$extraCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/onPostMessage$extraCallback;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 414
    iget-object v1, p0, Lo/getGravity;->asBinder:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 415
    invoke-direct {p0}, Lo/getGravity;->asBinder()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_5

    .line 11369
    iget-object v0, p0, Lo/getGravity;->validateRelationship:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 11370
    iget-object v0, p0, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 12333
    iget-object v0, v0, Lo/measureChildBeforeLayout;->onPostMessage:Landroid/graphics/drawable/Drawable;

    .line 11370
    iput-object v0, p0, Lo/getGravity;->validateRelationship:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 11371
    iget-object v0, p0, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 12338
    iget v0, v0, Lo/measureChildBeforeLayout;->extraCallback:I

    if-lez v0, :cond_4

    .line 11372
    iget-object v0, p0, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 13338
    iget v0, v0, Lo/measureChildBeforeLayout;->extraCallback:I

    .line 11372
    invoke-direct {p0, v0}, Lo/getGravity;->onPostMessage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/getGravity;->validateRelationship:Landroid/graphics/drawable/Drawable;

    .line 11375
    :cond_4
    iget-object v0, p0, Lo/getGravity;->validateRelationship:Landroid/graphics/drawable/Drawable;

    :cond_5
    if-nez v0, :cond_6

    .line 423
    invoke-direct {p0}, Lo/getGravity;->asInterface()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 425
    :cond_6
    iget-object v1, p0, Lo/getGravity;->warmup:Lo/ListPopupWindow;

    invoke-interface {v1, v0}, Lo/ListPopupWindow;->onPostMessage(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 332
    iget-object v0, p0, Lo/getGravity;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lo/getGravity;->extraCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {p0}, Lo/getGravity;->onMessageChannelReady()V

    .line 336
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final ICustomTabsCallback$Stub()Ljava/lang/Object;
    .locals 1

    .line 648
    iget-object v0, p0, Lo/getGravity;->extraCallback:Lo/setHorizontalOffset;

    invoke-virtual {v0}, Lo/setHorizontalOffset;->extraCallback()V

    .line 649
    iget-object v0, p0, Lo/getGravity;->onPostMessage:Ljava/lang/Object;

    return-object v0
.end method

.method public final extraCallback(II)V
    .locals 22

    move-object/from16 v15, p0

    move/from16 v0, p1

    move/from16 v1, p2

    .line 431
    iget-object v2, v15, Lo/getGravity;->extraCallback:Lo/setHorizontalOffset;

    invoke-virtual {v2}, Lo/setHorizontalOffset;->extraCallback()V

    .line 432
    iget-object v14, v15, Lo/getGravity;->onPostMessage:Ljava/lang/Object;

    monitor-enter v14

    .line 433
    :try_start_0
    sget-boolean v2, Lo/getGravity;->ICustomTabsCallback:Z

    if-eqz v2, :cond_0

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got onSizeReady in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v15, Lo/getGravity;->IPostMessageService:J

    invoke-static {v3, v4}, Lo/getAnchorView;->onMessageChannelReady(J)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lo/getGravity;->onMessageChannelReady(Ljava/lang/String;)V

    .line 436
    :cond_0
    iget-object v2, v15, Lo/getGravity;->IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

    sget-object v3, Lo/getGravity$ICustomTabsCallback;->onPostMessage:Lo/getGravity$ICustomTabsCallback;

    if-eq v2, v3, :cond_1

    .line 437
    monitor-exit v14

    return-void

    .line 439
    :cond_1
    sget-object v2, Lo/getGravity$ICustomTabsCallback;->extraCallback:Lo/getGravity$ICustomTabsCallback;

    iput-object v2, v15, Lo/getGravity;->IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

    .line 441
    iget-object v2, v15, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 13400
    iget v2, v2, Lo/measureChildBeforeLayout;->ICustomTabsCallback:F

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    mul-float v0, v0, v2

    .line 13483
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 442
    :goto_0
    iput v0, v15, Lo/getGravity;->INotificationSideChannel:I

    if-ne v1, v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    int-to-float v0, v1

    mul-float v2, v2, v0

    .line 14483
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 443
    :goto_1
    iput v0, v15, Lo/getGravity;->cancelAll:I

    .line 445
    sget-boolean v0, Lo/getGravity;->ICustomTabsCallback:Z

    if-eqz v0, :cond_4

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finished setup for calling load in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v15, Lo/getGravity;->IPostMessageService:J

    invoke-static {v1, v2}, Lo/getAnchorView;->onMessageChannelReady(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Lo/getGravity;->onMessageChannelReady(Ljava/lang/String;)V

    .line 448
    :cond_4
    iget-object v1, v15, Lo/getGravity;->ICustomTabsService$Stub:Lo/setLineHeight;

    iget-object v2, v15, Lo/getGravity;->onRelationshipValidationResult:Lo/tintDrawableUsingColorFilter;

    iget-object v3, v15, Lo/getGravity;->asBinder:Ljava/lang/Object;

    iget-object v0, v15, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 15375
    iget-object v4, v0, Lo/measureChildBeforeLayout;->onTransact:Lo/AppCompatImageHelper;

    .line 452
    iget v5, v15, Lo/getGravity;->INotificationSideChannel:I

    iget v6, v15, Lo/getGravity;->cancelAll:I

    iget-object v0, v15, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 16322
    iget-object v7, v0, Lo/measureChildBeforeLayout;->warmup:Ljava/lang/Class;

    .line 455
    iget-object v8, v15, Lo/getGravity;->asInterface:Ljava/lang/Class;

    iget-object v9, v15, Lo/getGravity;->getInterfaceDescriptor:Lo/getTintList;

    iget-object v0, v15, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 16327
    iget-object v10, v0, Lo/measureChildBeforeLayout;->onNavigationEvent:Lo/getFirstBaselineToTopHeight;

    .line 458
    iget-object v0, v15, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 17307
    iget-object v11, v0, Lo/measureChildBeforeLayout;->getInterfaceDescriptor:Ljava/util/Map;

    .line 459
    iget-object v0, v15, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 17312
    iget-boolean v12, v0, Lo/measureChildBeforeLayout;->ICustomTabsCallback$Stub:Z

    .line 460
    iget-object v0, v15, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 17404
    iget-boolean v13, v0, Lo/measureChildBeforeLayout;->postMessage:Z

    .line 461
    iget-object v0, v15, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 18317
    iget-object v0, v0, Lo/measureChildBeforeLayout;->newSession:Lo/applyFrameworkTintUsingColorFilter;

    move-object/from16 v16, v0

    .line 462
    iget-object v0, v15, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 18370
    iget-boolean v0, v0, Lo/measureChildBeforeLayout;->asBinder:Z

    move/from16 v17, v0

    .line 463
    iget-object v0, v15, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 18414
    iget-boolean v0, v0, Lo/measureChildBeforeLayout;->updateVisuals:Z

    move/from16 v18, v0

    .line 464
    iget-object v0, v15, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 18420
    iget-boolean v0, v0, Lo/measureChildBeforeLayout;->requestPostMessageChannel:Z

    move/from16 v19, v0

    .line 465
    iget-object v0, v15, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 18426
    iget-boolean v0, v0, Lo/measureChildBeforeLayout;->mayLaunchUrl:Z

    move/from16 v20, v0

    .line 466
    iget-object v0, v15, Lo/getGravity;->updateVisuals:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v21, v14

    move-object/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move-object/from16 v19, p0

    move-object/from16 v20, v0

    .line 449
    :try_start_1
    invoke-virtual/range {v1 .. v20}, Lo/setLineHeight;->onNavigationEvent(Lo/tintDrawableUsingColorFilter;Ljava/lang/Object;Lo/AppCompatImageHelper;IILjava/lang/Class;Ljava/lang/Class;Lo/getTintList;Lo/getFirstBaselineToTopHeight;Ljava/util/Map;ZZLo/applyFrameworkTintUsingColorFilter;ZZZZLo/setOrientation;Ljava/util/concurrent/Executor;)Lo/setLineHeight$onNavigationEvent;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    :try_start_2
    iput-object v0, v1, Lo/getGravity;->postMessage:Lo/setLineHeight$onNavigationEvent;

    .line 473
    iget-object v0, v1, Lo/getGravity;->IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

    sget-object v2, Lo/getGravity$ICustomTabsCallback;->extraCallback:Lo/getGravity$ICustomTabsCallback;

    if-eq v0, v2, :cond_5

    const/4 v0, 0x0

    .line 474
    iput-object v0, v1, Lo/getGravity;->postMessage:Lo/setLineHeight$onNavigationEvent;

    .line 476
    :cond_5
    sget-boolean v0, Lo/getGravity;->ICustomTabsCallback:Z

    if-eqz v0, :cond_6

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "finished onSizeReady in "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v1, Lo/getGravity;->IPostMessageService:J

    invoke-static {v2, v3}, Lo/getAnchorView;->onMessageChannelReady(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lo/getGravity;->onMessageChannelReady(Ljava/lang/String;)V

    .line 479
    :cond_6
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v21, v14

    move-object v1, v15

    :goto_2
    monitor-exit v21

    throw v0
.end method

.method public final extraCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Lo/setImageURI;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "*>;",
            "Lo/setImageURI;",
            ")V"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lo/getGravity;->extraCallback:Lo/setHorizontalOffset;

    invoke-virtual {v0}, Lo/setHorizontalOffset;->extraCallback()V

    const/4 v0, 0x0

    .line 527
    :try_start_0
    iget-object v1, p0, Lo/getGravity;->onPostMessage:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 528
    :try_start_1
    iput-object v0, p0, Lo/getGravity;->postMessage:Lo/setLineHeight$onNavigationEvent;

    if-nez p1, :cond_0

    .line 530
    new-instance p1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Expected to receive a Resource<R> with an object of "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/getGravity;->asInterface:Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " inside, but instead got null."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0, p1}, Lo/getGravity;->onPostMessage(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 537
    monitor-exit v1

    return-void

    .line 540
    :cond_0
    invoke-interface {p1}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 541
    iget-object v3, p0, Lo/getGravity;->asInterface:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 18488
    :cond_1
    iget-object v3, p0, Lo/getGravity;->onTransact:Lo/onPostMessage$extraCallback;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lo/getGravity;->onTransact:Lo/onPostMessage$extraCallback;

    invoke-interface {v3}, Lo/onPostMessage$extraCallback;->extraCallback()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_5

    .line 569
    :try_start_2
    iput-object v0, p0, Lo/getGravity;->requestPostMessageChannel:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    .line 571
    sget-object p2, Lo/getGravity$ICustomTabsCallback;->ICustomTabsCallback:Lo/getGravity$ICustomTabsCallback;

    iput-object p2, p0, Lo/getGravity;->IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

    .line 572
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_4

    .line 579
    invoke-static {p1}, Lo/setLineHeight;->extraCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;)V

    :cond_4
    return-void

    .line 575
    :cond_5
    :try_start_3
    invoke-direct {p0, p1, v2, p2}, Lo/getGravity;->onMessageChannelReady(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Ljava/lang/Object;Lo/setImageURI;)V

    .line 576
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 543
    :cond_6
    :goto_2
    :try_start_4
    iput-object v0, p0, Lo/getGravity;->requestPostMessageChannel:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    .line 544
    new-instance p2, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Expected to receive an object of "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/getGravity;->asInterface:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but instead got "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_7

    .line 550
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_3

    :cond_7
    const-string v3, ""

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "} inside Resource{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_8

    const-string v2, ""

    goto :goto_4

    :cond_8
    const-string v2, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    .line 560
    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0, p2}, Lo/getGravity;->onPostMessage(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 564
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_9

    .line 579
    invoke-static {p1}, Lo/setLineHeight;->extraCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;)V

    :cond_9
    return-void

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 576
    :goto_5
    :try_start_5
    monitor-exit v1

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_a

    .line 579
    invoke-static {v0}, Lo/setLineHeight;->extraCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;)V

    :cond_a
    throw p1
.end method

.method public final extraCallback()Z
    .locals 3

    .line 341
    iget-object v0, p0, Lo/getGravity;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_0
    iget-object v1, p0, Lo/getGravity;->IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

    sget-object v2, Lo/getGravity$ICustomTabsCallback;->extraCallback:Lo/getGravity$ICustomTabsCallback;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lo/getGravity;->IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

    sget-object v2, Lo/getGravity$ICustomTabsCallback;->onPostMessage:Lo/getGravity$ICustomTabsCallback;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 343
    monitor-exit v0

    throw v1
.end method

.method public final onMessageChannelReady()V
    .locals 5

    .line 306
    iget-object v0, p0, Lo/getGravity;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 3286
    :try_start_0
    iget-boolean v1, p0, Lo/getGravity;->IPostMessageService$Stub$Proxy:Z

    if-nez v1, :cond_8

    .line 308
    iget-object v1, p0, Lo/getGravity;->extraCallback:Lo/setHorizontalOffset;

    invoke-virtual {v1}, Lo/setHorizontalOffset;->extraCallback()V

    .line 309
    iget-object v1, p0, Lo/getGravity;->IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

    sget-object v2, Lo/getGravity$ICustomTabsCallback;->onTransact:Lo/getGravity$ICustomTabsCallback;

    if-ne v1, v2, :cond_0

    .line 310
    monitor-exit v0

    return-void

    .line 4286
    :cond_0
    iget-boolean v1, p0, Lo/getGravity;->IPostMessageService$Stub$Proxy:Z

    if-nez v1, :cond_7

    .line 4275
    iget-object v1, p0, Lo/getGravity;->extraCallback:Lo/setHorizontalOffset;

    invoke-virtual {v1}, Lo/setHorizontalOffset;->extraCallback()V

    .line 4276
    iget-object v1, p0, Lo/getGravity;->warmup:Lo/ListPopupWindow;

    invoke-interface {v1, p0}, Lo/ListPopupWindow;->onNavigationEvent(Lo/LinearLayoutCompat$OrientationMode;)V

    .line 4277
    iget-object v1, p0, Lo/getGravity;->postMessage:Lo/setLineHeight$onNavigationEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4278
    iget-object v1, p0, Lo/getGravity;->postMessage:Lo/setLineHeight$onNavigationEvent;

    .line 4432
    iget-object v3, v1, Lo/setLineHeight$onNavigationEvent;->onNavigationEvent:Lo/setLineHeight;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4433
    :try_start_1
    iget-object v4, v1, Lo/setLineHeight$onNavigationEvent;->onPostMessage:Lo/setPrecomputedText;

    iget-object v1, v1, Lo/setLineHeight$onNavigationEvent;->onMessageChannelReady:Lo/setOrientation;

    invoke-virtual {v4, v1}, Lo/setPrecomputedText;->onNavigationEvent(Lo/setOrientation;)V

    .line 4434
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4279
    :try_start_2
    iput-object v2, p0, Lo/getGravity;->postMessage:Lo/setLineHeight$onNavigationEvent;

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4434
    monitor-exit v3

    throw v1

    .line 314
    :cond_1
    :goto_0
    iget-object v1, p0, Lo/getGravity;->requestPostMessageChannel:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    if-eqz v1, :cond_2

    .line 315
    iget-object v1, p0, Lo/getGravity;->requestPostMessageChannel:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    .line 316
    iput-object v2, p0, Lo/getGravity;->requestPostMessageChannel:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    move-object v2, v1

    .line 4493
    :cond_2
    iget-object v1, p0, Lo/getGravity;->onTransact:Lo/onPostMessage$extraCallback;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/getGravity;->onTransact:Lo/onPostMessage$extraCallback;

    invoke-interface {v1}, Lo/onPostMessage$extraCallback;->asInterface()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_5

    .line 319
    iget-object v1, p0, Lo/getGravity;->warmup:Lo/ListPopupWindow;

    invoke-direct {p0}, Lo/getGravity;->asInterface()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v3}, Lo/ListPopupWindow;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)V

    .line 322
    :cond_5
    sget-object v1, Lo/getGravity$ICustomTabsCallback;->onTransact:Lo/getGravity$ICustomTabsCallback;

    iput-object v1, p0, Lo/getGravity;->IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

    .line 323
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_6

    .line 326
    invoke-static {v2}, Lo/setLineHeight;->extraCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;)V

    :cond_6
    return-void

    .line 4287
    :cond_7
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3287
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 323
    monitor-exit v0

    throw v1
.end method

.method public final onMessageChannelReady(Lo/getNextLocationOffset;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 695
    instance-of v2, v0, Lo/getGravity;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 706
    :cond_0
    iget-object v2, v1, Lo/getGravity;->onPostMessage:Ljava/lang/Object;

    monitor-enter v2

    .line 707
    :try_start_0
    iget v4, v1, Lo/getGravity;->ICustomTabsCallback$Stub$Proxy:I

    .line 708
    iget v5, v1, Lo/getGravity;->newSession:I

    .line 709
    iget-object v6, v1, Lo/getGravity;->asBinder:Ljava/lang/Object;

    .line 710
    iget-object v7, v1, Lo/getGravity;->asInterface:Ljava/lang/Class;

    .line 711
    iget-object v8, v1, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 712
    iget-object v9, v1, Lo/getGravity;->getInterfaceDescriptor:Lo/getTintList;

    .line 713
    iget-object v10, v1, Lo/getGravity;->extraCommand:Ljava/util/List;

    if-eqz v10, :cond_1

    iget-object v10, v1, Lo/getGravity;->extraCommand:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 714
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 716
    check-cast v0, Lo/getGravity;

    .line 724
    iget-object v2, v0, Lo/getGravity;->onPostMessage:Ljava/lang/Object;

    monitor-enter v2

    .line 725
    :try_start_1
    iget v11, v0, Lo/getGravity;->ICustomTabsCallback$Stub$Proxy:I

    .line 726
    iget v12, v0, Lo/getGravity;->newSession:I

    .line 727
    iget-object v13, v0, Lo/getGravity;->asBinder:Ljava/lang/Object;

    .line 728
    iget-object v14, v0, Lo/getGravity;->asInterface:Ljava/lang/Class;

    .line 729
    iget-object v15, v0, Lo/getGravity;->ICustomTabsService:Lo/measureChildBeforeLayout;

    .line 730
    iget-object v3, v0, Lo/getGravity;->getInterfaceDescriptor:Lo/getTintList;

    .line 731
    iget-object v1, v0, Lo/getGravity;->extraCommand:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lo/getGravity;->extraCommand:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 732
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v11, :cond_3

    if-ne v5, v12, :cond_3

    .line 739
    invoke-static {v6, v13}, Lo/getHorizontalOffset;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 740
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 741
    invoke-virtual {v8, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne v9, v3, :cond_3

    if-ne v10, v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 732
    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    .line 714
    monitor-exit v2

    throw v0
.end method

.method public final onNavigationEvent()V
    .locals 4

    .line 213
    iget-object v0, p0, Lo/getGravity;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 2286
    :try_start_0
    iget-boolean v1, p0, Lo/getGravity;->IPostMessageService$Stub$Proxy:Z

    if-nez v1, :cond_b

    .line 215
    iget-object v1, p0, Lo/getGravity;->extraCallback:Lo/setHorizontalOffset;

    invoke-virtual {v1}, Lo/setHorizontalOffset;->extraCallback()V

    .line 216
    invoke-static {}, Lo/getAnchorView;->ICustomTabsCallback()J

    move-result-wide v1

    iput-wide v1, p0, Lo/getGravity;->IPostMessageService:J

    .line 217
    iget-object v1, p0, Lo/getGravity;->asBinder:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 218
    iget v1, p0, Lo/getGravity;->ICustomTabsCallback$Stub$Proxy:I

    iget v2, p0, Lo/getGravity;->newSession:I

    invoke-static {v1, v2}, Lo/getHorizontalOffset;->onMessageChannelReady(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget v1, p0, Lo/getGravity;->ICustomTabsCallback$Stub$Proxy:I

    iput v1, p0, Lo/getGravity;->INotificationSideChannel:I

    .line 220
    iget v1, p0, Lo/getGravity;->newSession:I

    iput v1, p0, Lo/getGravity;->cancelAll:I

    .line 224
    :cond_0
    invoke-direct {p0}, Lo/getGravity;->asBinder()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 225
    :goto_0
    new-instance v2, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v3, "Received null model"

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lo/getGravity;->onMessageChannelReady(Lcom/bumptech/glide/load/engine/GlideException;I)V

    .line 226
    monitor-exit v0

    return-void

    .line 229
    :cond_2
    iget-object v1, p0, Lo/getGravity;->IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

    sget-object v2, Lo/getGravity$ICustomTabsCallback;->extraCallback:Lo/getGravity$ICustomTabsCallback;

    if-eq v1, v2, :cond_a

    .line 239
    iget-object v1, p0, Lo/getGravity;->IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

    sget-object v2, Lo/getGravity$ICustomTabsCallback;->ICustomTabsCallback:Lo/getGravity$ICustomTabsCallback;

    if-ne v1, v2, :cond_3

    .line 240
    iget-object v1, p0, Lo/getGravity;->requestPostMessageChannel:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    sget-object v2, Lo/setImageURI;->extraCallback:Lo/setImageURI;

    invoke-virtual {p0, v1, v2}, Lo/getGravity;->extraCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Lo/setImageURI;)V

    .line 241
    monitor-exit v0

    return-void

    .line 247
    :cond_3
    sget-object v1, Lo/getGravity$ICustomTabsCallback;->onPostMessage:Lo/getGravity$ICustomTabsCallback;

    iput-object v1, p0, Lo/getGravity;->IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

    .line 248
    iget v1, p0, Lo/getGravity;->ICustomTabsCallback$Stub$Proxy:I

    iget v2, p0, Lo/getGravity;->newSession:I

    invoke-static {v1, v2}, Lo/getHorizontalOffset;->onMessageChannelReady(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 249
    iget v1, p0, Lo/getGravity;->ICustomTabsCallback$Stub$Proxy:I

    iget v2, p0, Lo/getGravity;->newSession:I

    invoke-virtual {p0, v1, v2}, Lo/getGravity;->extraCallback(II)V

    goto :goto_1

    .line 251
    :cond_4
    iget-object v1, p0, Lo/getGravity;->warmup:Lo/ListPopupWindow;

    invoke-interface {v1, p0}, Lo/ListPopupWindow;->onMessageChannelReady(Lo/LinearLayoutCompat$OrientationMode;)V

    .line 254
    :goto_1
    iget-object v1, p0, Lo/getGravity;->IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

    sget-object v2, Lo/getGravity$ICustomTabsCallback;->extraCallback:Lo/getGravity$ICustomTabsCallback;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lo/getGravity;->IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

    sget-object v2, Lo/getGravity$ICustomTabsCallback;->onPostMessage:Lo/getGravity$ICustomTabsCallback;

    if-ne v1, v2, :cond_8

    .line 2498
    :cond_5
    iget-object v1, p0, Lo/getGravity;->onTransact:Lo/onPostMessage$extraCallback;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lo/getGravity;->onTransact:Lo/onPostMessage$extraCallback;

    invoke-interface {v1}, Lo/onPostMessage$extraCallback;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_8

    .line 256
    iget-object v1, p0, Lo/getGravity;->warmup:Lo/ListPopupWindow;

    invoke-direct {p0}, Lo/getGravity;->asInterface()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/ListPopupWindow;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;)V

    .line 258
    :cond_8
    sget-boolean v1, Lo/getGravity;->ICustomTabsCallback:Z

    if-eqz v1, :cond_9

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finished run method in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lo/getGravity;->IPostMessageService:J

    invoke-static {v2, v3}, Lo/getAnchorView;->onMessageChannelReady(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/getGravity;->onMessageChannelReady(Ljava/lang/String;)V

    .line 261
    :cond_9
    monitor-exit v0

    return-void

    .line 230
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot restart a running request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2287
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    .line 261
    monitor-exit v0

    throw v1
.end method

.method public final onPostMessage(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 1

    const/4 v0, 0x5

    .line 643
    invoke-direct {p0, p1, v0}, Lo/getGravity;->onMessageChannelReady(Lcom/bumptech/glide/load/engine/GlideException;I)V

    return-void
.end method

.method public final onPostMessage()Z
    .locals 3

    .line 348
    iget-object v0, p0, Lo/getGravity;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iget-object v1, p0, Lo/getGravity;->IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

    sget-object v2, Lo/getGravity$ICustomTabsCallback;->ICustomTabsCallback:Lo/getGravity$ICustomTabsCallback;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 350
    monitor-exit v0

    throw v1
.end method

.method public final onTransact()Z
    .locals 3

    .line 355
    iget-object v0, p0, Lo/getGravity;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_0
    iget-object v1, p0, Lo/getGravity;->IPostMessageService$Stub:Lo/getGravity$ICustomTabsCallback;

    sget-object v2, Lo/getGravity$ICustomTabsCallback;->onTransact:Lo/getGravity$ICustomTabsCallback;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 357
    monitor-exit v0

    throw v1
.end method
