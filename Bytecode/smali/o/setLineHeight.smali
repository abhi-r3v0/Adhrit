.class public final Lo/setLineHeight;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setTextMetricsParamsCompat;
.implements Lo/DecorToolbar$extraCallback;
.implements Lo/setTextFuture$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setLineHeight$ICustomTabsCallback;,
        Lo/setLineHeight$extraCallback;,
        Lo/setLineHeight$onPostMessage;,
        Lo/setLineHeight$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Z


# instance fields
.field private final ICustomTabsCallback:Lo/setLineHeight$ICustomTabsCallback;

.field private final ICustomTabsCallback$Stub:Lo/setLineHeight$onPostMessage;

.field private final asInterface:Lo/setLineHeight$extraCallback;

.field private final extraCallback:Lo/DecorToolbar;

.field private final onNavigationEvent:Lo/getNextVisibleChildIndex;

.field private final onPostMessage:Lo/isHideOnContentScrollEnabled;

.field private final onTransact:Lo/performClick;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lo/setLineHeight;->onMessageChannelReady:Z

    return-void
.end method

.method public constructor <init>(Lo/DecorToolbar;Lo/ContentFrameLayout$OnAttachListener$ICustomTabsCallback;Lo/initProgress;Lo/initProgress;Lo/initProgress;Lo/initProgress;Z)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 53
    invoke-direct/range {v0 .. v8}, Lo/setLineHeight;-><init>(Lo/DecorToolbar;Lo/ContentFrameLayout$OnAttachListener$ICustomTabsCallback;Lo/initProgress;Lo/initProgress;Lo/initProgress;Lo/initProgress;ZB)V

    return-void
.end method

.method private constructor <init>(Lo/DecorToolbar;Lo/ContentFrameLayout$OnAttachListener$ICustomTabsCallback;Lo/initProgress;Lo/initProgress;Lo/initProgress;Lo/initProgress;ZB)V
    .locals 7

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lo/setLineHeight;->extraCallback:Lo/DecorToolbar;

    .line 85
    new-instance p8, Lo/setLineHeight$onPostMessage;

    invoke-direct {p8, p2}, Lo/setLineHeight$onPostMessage;-><init>(Lo/ContentFrameLayout$OnAttachListener$ICustomTabsCallback;)V

    iput-object p8, p0, Lo/setLineHeight;->ICustomTabsCallback$Stub:Lo/setLineHeight$onPostMessage;

    .line 88
    new-instance p2, Lo/performClick;

    invoke-direct {p2, p7}, Lo/performClick;-><init>(Z)V

    .line 90
    iput-object p2, p0, Lo/setLineHeight;->onTransact:Lo/performClick;

    .line 1067
    monitor-enter p0

    .line 1068
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1069
    :try_start_1
    iput-object p0, p2, Lo/performClick;->onPostMessage:Lo/setTextFuture$onPostMessage;

    .line 1070
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1071
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    new-instance p2, Lo/isHideOnContentScrollEnabled;

    invoke-direct {p2}, Lo/isHideOnContentScrollEnabled;-><init>()V

    .line 101
    iput-object p2, p0, Lo/setLineHeight;->onPostMessage:Lo/isHideOnContentScrollEnabled;

    .line 104
    new-instance p2, Lo/setLineHeight$ICustomTabsCallback;

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lo/setLineHeight$ICustomTabsCallback;-><init>(Lo/initProgress;Lo/initProgress;Lo/initProgress;Lo/initProgress;Lo/setTextMetricsParamsCompat;Lo/setTextFuture$onPostMessage;)V

    .line 113
    iput-object p2, p0, Lo/setLineHeight;->ICustomTabsCallback:Lo/setLineHeight$ICustomTabsCallback;

    .line 116
    new-instance p2, Lo/setLineHeight$extraCallback;

    iget-object p3, p0, Lo/setLineHeight;->ICustomTabsCallback$Stub:Lo/setLineHeight$onPostMessage;

    invoke-direct {p2, p3}, Lo/setLineHeight$extraCallback;-><init>(Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;)V

    .line 118
    iput-object p2, p0, Lo/setLineHeight;->asInterface:Lo/setLineHeight$extraCallback;

    .line 121
    new-instance p2, Lo/getNextVisibleChildIndex;

    invoke-direct {p2}, Lo/getNextVisibleChildIndex;-><init>()V

    .line 123
    iput-object p2, p0, Lo/setLineHeight;->onNavigationEvent:Lo/getNextVisibleChildIndex;

    .line 125
    invoke-interface {p1, p0}, Lo/DecorToolbar;->ICustomTabsCallback(Lo/DecorToolbar$extraCallback;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1070
    :try_start_3
    monitor-exit p2

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1071
    monitor-exit p0

    throw p1
.end method

.method public static extraCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "*>;)V"
        }
    .end annotation

    .line 361
    instance-of v0, p0, Lo/setTextFuture;

    if-eqz v0, :cond_0

    .line 362
    check-cast p0, Lo/setTextFuture;

    invoke-virtual {p0}, Lo/setTextFuture;->ICustomTabsCallback$Stub()V

    return-void

    .line 364
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onPostMessage(Ljava/lang/String;JLo/AppCompatImageHelper;)V
    .locals 1

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lo/getAnchorView;->onMessageChannelReady(J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/AppCompatImageHelper;Lo/setTextFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppCompatImageHelper;",
            "Lo/setTextFuture<",
            "*>;)V"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lo/setLineHeight;->onTransact:Lo/performClick;

    invoke-virtual {v0, p1}, Lo/performClick;->onNavigationEvent(Lo/AppCompatImageHelper;)V

    .line 10045
    iget-boolean v0, p2, Lo/setTextFuture;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lo/setLineHeight;->extraCallback:Lo/DecorToolbar;

    invoke-interface {v0, p1, p2}, Lo/DecorToolbar;->onMessageChannelReady(Lo/AppCompatImageHelper;Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    return-void

    .line 398
    :cond_0
    iget-object p1, p0, Lo/setLineHeight;->onNavigationEvent:Lo/getNextVisibleChildIndex;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lo/getNextVisibleChildIndex;->onNavigationEvent(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Z)V

    return-void
.end method

.method public final declared-synchronized ICustomTabsCallback(Lo/setPrecomputedText;Lo/AppCompatImageHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPrecomputedText<",
            "*>;",
            "Lo/AppCompatImageHelper;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 382
    :try_start_0
    iget-object v0, p0, Lo/setLineHeight;->onPostMessage:Lo/isHideOnContentScrollEnabled;

    invoke-virtual {v0, p2, p1}, Lo/isHideOnContentScrollEnabled;->onMessageChannelReady(Lo/AppCompatImageHelper;Lo/setPrecomputedText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onNavigationEvent(Lo/tintDrawableUsingColorFilter;Ljava/lang/Object;Lo/AppCompatImageHelper;IILjava/lang/Class;Ljava/lang/Class;Lo/getTintList;Lo/getFirstBaselineToTopHeight;Ljava/util/Map;ZZLo/applyFrameworkTintUsingColorFilter;ZZZZLo/setOrientation;Ljava/util/concurrent/Executor;)Lo/setLineHeight$onNavigationEvent;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/tintDrawableUsingColorFilter;",
            "Ljava/lang/Object;",
            "Lo/AppCompatImageHelper;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lo/getTintList;",
            "Lo/getFirstBaselineToTopHeight;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/AppCompatRadioButton<",
            "*>;>;ZZ",
            "Lo/applyFrameworkTintUsingColorFilter;",
            "ZZZZ",
            "Lo/setOrientation;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lo/setLineHeight$onNavigationEvent;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p3

    move/from16 v5, p4

    move/from16 v4, p5

    move-object/from16 v3, p8

    move-object/from16 v2, p9

    move-object/from16 v1, p13

    move/from16 v15, p17

    move-object/from16 v14, p18

    move-object/from16 v13, p19

    .line 175
    sget-boolean v8, Lo/setLineHeight;->onMessageChannelReady:Z

    if-eqz v8, :cond_0

    invoke-static {}, Lo/getAnchorView;->ICustomTabsCallback()J

    move-result-wide v8

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x0

    :goto_0
    move-wide v11, v8

    .line 2020
    new-instance v10, Lo/getTextMetricsParamsCompat;

    move-object v8, v10

    move-object/from16 v9, p2

    move-object v4, v10

    move-object/from16 v10, p3

    move-wide/from16 v17, v11

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p10

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p13

    invoke-direct/range {v8 .. v16}, Lo/getTextMetricsParamsCompat;-><init>(Ljava/lang/Object;Lo/AppCompatImageHelper;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lo/applyFrameworkTintUsingColorFilter;)V

    .line 189
    monitor-enter p0

    if-eqz p14, :cond_7

    .line 2326
    :try_start_0
    iget-object v9, v7, Lo/setLineHeight;->onTransact:Lo/performClick;

    invoke-virtual {v9, v4}, Lo/performClick;->extraCallback(Lo/AppCompatImageHelper;)Lo/setTextFuture;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 2328
    invoke-virtual {v9}, Lo/setTextFuture;->ICustomTabsCallback()V

    :cond_1
    if-eqz v9, :cond_3

    .line 2303
    sget-boolean v10, Lo/setLineHeight;->onMessageChannelReady:Z

    if-eqz v10, :cond_2

    const-string v10, "Loaded resource from active resources"

    move-wide/from16 v11, v17

    .line 2304
    invoke-static {v10, v11, v12, v4}, Lo/setLineHeight;->onPostMessage(Ljava/lang/String;JLo/AppCompatImageHelper;)V

    goto :goto_1

    :cond_2
    move-wide/from16 v11, v17

    :goto_1
    move/from16 v13, p5

    move-object v15, v1

    move-object v8, v2

    move v14, v5

    move-object v10, v6

    move-object v1, v9

    move-object v9, v3

    move-object v6, v4

    goto/16 :goto_4

    :cond_3
    move-wide/from16 v11, v17

    .line 2344
    iget-object v9, v7, Lo/setLineHeight;->extraCallback:Lo/DecorToolbar;

    invoke-interface {v9, v4}, Lo/DecorToolbar;->extraCallback(Lo/AppCompatImageHelper;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    move-result-object v9

    if-nez v9, :cond_4

    move/from16 v13, p5

    move-object v15, v1

    move-object v8, v2

    move-object v9, v3

    move-object/from16 v17, v4

    move v14, v5

    move-object v10, v6

    const/4 v1, 0x0

    goto :goto_2

    .line 2349
    :cond_4
    instance-of v10, v9, Lo/setTextFuture;

    if-eqz v10, :cond_5

    .line 2351
    check-cast v9, Lo/setTextFuture;

    move/from16 v13, p5

    move-object v15, v1

    move-object v8, v2

    move-object/from16 v17, v4

    move v14, v5

    move-object v10, v6

    move-object v1, v9

    move-object v9, v3

    goto :goto_2

    .line 2353
    :cond_5
    new-instance v10, Lo/setTextFuture;

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v15, v1

    move-object v1, v10

    move-object v8, v2

    move-object v2, v9

    move-object v9, v3

    move v3, v13

    move/from16 v13, p5

    move-object/from16 v17, v4

    move v4, v14

    move v14, v5

    move-object/from16 v5, v17

    move-object/from16 v18, v10

    move-object v10, v6

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, Lo/setTextFuture;-><init>(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;ZZLo/AppCompatImageHelper;Lo/setTextFuture$onPostMessage;)V

    move-object/from16 v1, v18

    :goto_2
    if-eqz v1, :cond_6

    .line 2337
    invoke-virtual {v1}, Lo/setTextFuture;->ICustomTabsCallback()V

    .line 2338
    iget-object v2, v7, Lo/setLineHeight;->onTransact:Lo/performClick;

    move-object/from16 v6, v17

    invoke-virtual {v2, v6, v1}, Lo/performClick;->onPostMessage(Lo/AppCompatImageHelper;Lo/setTextFuture;)V

    goto :goto_3

    :cond_6
    move-object/from16 v6, v17

    :goto_3
    if-eqz v1, :cond_8

    .line 2311
    sget-boolean v2, Lo/setLineHeight;->onMessageChannelReady:Z

    if-eqz v2, :cond_9

    const-string v2, "Loaded resource from cache"

    .line 2312
    invoke-static {v2, v11, v12, v6}, Lo/setLineHeight;->onPostMessage(Ljava/lang/String;JLo/AppCompatImageHelper;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_7
    move/from16 v13, p5

    move-object v15, v1

    move-object v8, v2

    move-object v9, v3

    move v14, v5

    move-object v10, v6

    move-wide/from16 v11, v17

    move-object v6, v4

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_4
    if-nez v1, :cond_11

    .line 3247
    iget-object v1, v7, Lo/setLineHeight;->onPostMessage:Lo/isHideOnContentScrollEnabled;

    move/from16 v5, p17

    if-eqz v5, :cond_a

    .line 4034
    iget-object v1, v1, Lo/isHideOnContentScrollEnabled;->onPostMessage:Ljava/util/Map;

    goto :goto_5

    :cond_a
    iget-object v1, v1, Lo/isHideOnContentScrollEnabled;->onNavigationEvent:Ljava/util/Map;

    .line 4019
    :goto_5
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setPrecomputedText;

    if-eqz v1, :cond_c

    move-object/from16 v4, p18

    move-object/from16 v3, p19

    .line 3249
    invoke-virtual {v1, v4, v3}, Lo/setPrecomputedText;->onNavigationEvent(Lo/setOrientation;Ljava/util/concurrent/Executor;)V

    .line 3250
    sget-boolean v0, Lo/setLineHeight;->onMessageChannelReady:Z

    if-eqz v0, :cond_b

    const-string v0, "Added to existing load"

    .line 3251
    invoke-static {v0, v11, v12, v6}, Lo/setLineHeight;->onPostMessage(Ljava/lang/String;JLo/AppCompatImageHelper;)V

    .line 3253
    :cond_b
    new-instance v0, Lo/setLineHeight$onNavigationEvent;

    invoke-direct {v0, v7, v4, v1}, Lo/setLineHeight$onNavigationEvent;-><init>(Lo/setLineHeight;Lo/setOrientation;Lo/setPrecomputedText;)V

    goto/16 :goto_7

    :cond_c
    move-object/from16 v4, p18

    move-object/from16 v3, p19

    .line 3256
    iget-object v1, v7, Lo/setLineHeight;->ICustomTabsCallback:Lo/setLineHeight$ICustomTabsCallback;

    .line 4589
    iget-object v1, v1, Lo/setLineHeight$ICustomTabsCallback;->asBinder:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v1}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setPrecomputedText;

    const-string v2, "Argument must not be null"

    if-eqz v1, :cond_10

    check-cast v1, Lo/setPrecomputedText;

    move-object v2, v6

    move-wide/from16 v17, v11

    move-object v11, v3

    move/from16 v3, p14

    move-object v12, v4

    move/from16 v4, p15

    move v11, v5

    move/from16 v5, p16

    move-object v12, v6

    move/from16 v6, p17

    .line 4590
    invoke-virtual/range {v1 .. v6}, Lo/setPrecomputedText;->onNavigationEvent(Lo/AppCompatImageHelper;ZZZZ)Lo/setPrecomputedText;

    move-result-object v1

    .line 3264
    iget-object v2, v7, Lo/setLineHeight;->asInterface:Lo/setLineHeight$extraCallback;

    .line 5510
    iget-object v3, v2, Lo/setLineHeight$extraCallback;->ICustomTabsCallback:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v3}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setLastBaselineToBottomHeight;

    const-string v4, "Argument must not be null"

    if-eqz v3, :cond_f

    check-cast v3, Lo/setLastBaselineToBottomHeight;

    .line 5511
    iget v4, v2, Lo/setLineHeight$extraCallback;->onMessageChannelReady:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Lo/setLineHeight$extraCallback;->onMessageChannelReady:I

    .line 6103
    iget-object v2, v3, Lo/setLastBaselineToBottomHeight;->onPostMessage:Lo/getLastBaselineToBottomHeight;

    iget-object v5, v3, Lo/setLastBaselineToBottomHeight;->onMessageChannelReady:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;

    .line 7061
    iput-object v0, v2, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    move-object/from16 v6, p2

    .line 7062
    iput-object v6, v2, Lo/getLastBaselineToBottomHeight;->onMessageChannelReady:Ljava/lang/Object;

    .line 7063
    iput-object v10, v2, Lo/getLastBaselineToBottomHeight;->getInterfaceDescriptor:Lo/AppCompatImageHelper;

    .line 7064
    iput v14, v2, Lo/getLastBaselineToBottomHeight;->onNavigationEvent:I

    .line 7065
    iput v13, v2, Lo/getLastBaselineToBottomHeight;->onTransact:I

    .line 7066
    iput-object v8, v2, Lo/getLastBaselineToBottomHeight;->updateVisuals:Lo/getFirstBaselineToTopHeight;

    move-object/from16 v6, p6

    .line 7067
    iput-object v6, v2, Lo/getLastBaselineToBottomHeight;->onRelationshipValidationResult:Ljava/lang/Class;

    .line 7068
    iput-object v5, v2, Lo/getLastBaselineToBottomHeight;->asInterface:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;

    move-object/from16 v5, p7

    .line 7069
    iput-object v5, v2, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Class;

    .line 7070
    iput-object v9, v2, Lo/getLastBaselineToBottomHeight;->warmup:Lo/getTintList;

    .line 7071
    iput-object v15, v2, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback$Stub:Lo/applyFrameworkTintUsingColorFilter;

    move-object/from16 v5, p10

    .line 7072
    iput-object v5, v2, Lo/getLastBaselineToBottomHeight;->asBinder:Ljava/util/Map;

    move/from16 v5, p11

    .line 7073
    iput-boolean v5, v2, Lo/getLastBaselineToBottomHeight;->requestPostMessageChannel:Z

    move/from16 v5, p12

    .line 7074
    iput-boolean v5, v2, Lo/getLastBaselineToBottomHeight;->extraCommand:Z

    .line 6118
    iput-object v0, v3, Lo/setLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 6119
    iput-object v10, v3, Lo/setLastBaselineToBottomHeight;->ICustomTabsCallback$Stub:Lo/AppCompatImageHelper;

    .line 6120
    iput-object v9, v3, Lo/setLastBaselineToBottomHeight;->asBinder:Lo/getTintList;

    .line 6121
    iput-object v12, v3, Lo/setLastBaselineToBottomHeight;->asInterface:Lo/getTextMetricsParamsCompat;

    .line 6122
    iput v14, v3, Lo/setLastBaselineToBottomHeight;->onTransact:I

    .line 6123
    iput v13, v3, Lo/setLastBaselineToBottomHeight;->onRelationshipValidationResult:I

    .line 6124
    iput-object v8, v3, Lo/setLastBaselineToBottomHeight;->newSession:Lo/getFirstBaselineToTopHeight;

    .line 6125
    iput-boolean v11, v3, Lo/setLastBaselineToBottomHeight;->extraCommand:Z

    .line 6126
    iput-object v15, v3, Lo/setLastBaselineToBottomHeight;->getInterfaceDescriptor:Lo/applyFrameworkTintUsingColorFilter;

    .line 6127
    iput-object v1, v3, Lo/setLastBaselineToBottomHeight;->ICustomTabsService:Lo/setLastBaselineToBottomHeight$onPostMessage;

    .line 6128
    iput v4, v3, Lo/setLastBaselineToBottomHeight;->ICustomTabsCallback$Stub$Proxy:I

    .line 6129
    sget-object v0, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    iput-object v0, v3, Lo/setLastBaselineToBottomHeight;->warmup:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback$Stub;

    .line 3283
    iget-object v0, v7, Lo/setLineHeight;->onPostMessage:Lo/isHideOnContentScrollEnabled;

    .line 8191
    iget-boolean v2, v1, Lo/setPrecomputedText;->ICustomTabsCallback:Z

    if-eqz v2, :cond_d

    .line 9034
    iget-object v0, v0, Lo/isHideOnContentScrollEnabled;->onPostMessage:Ljava/util/Map;

    goto :goto_6

    :cond_d
    iget-object v0, v0, Lo/isHideOnContentScrollEnabled;->onNavigationEvent:Ljava/util/Map;

    .line 8023
    :goto_6
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p18

    move-object/from16 v2, p19

    move-object v4, v12

    .line 3285
    invoke-virtual {v1, v0, v2}, Lo/setPrecomputedText;->onNavigationEvent(Lo/setOrientation;Ljava/util/concurrent/Executor;)V

    .line 3286
    invoke-virtual {v1, v3}, Lo/setPrecomputedText;->onPostMessage(Lo/setLastBaselineToBottomHeight;)V

    .line 3288
    sget-boolean v2, Lo/setLineHeight;->onMessageChannelReady:Z

    if-eqz v2, :cond_e

    const-string v2, "Started new load"

    move-wide/from16 v8, v17

    .line 3289
    invoke-static {v2, v8, v9, v4}, Lo/setLineHeight;->onPostMessage(Ljava/lang/String;JLo/AppCompatImageHelper;)V

    .line 3291
    :cond_e
    new-instance v2, Lo/setLineHeight$onNavigationEvent;

    invoke-direct {v2, v7, v0, v1}, Lo/setLineHeight$onNavigationEvent;-><init>(Lo/setLineHeight;Lo/setOrientation;Lo/setPrecomputedText;)V

    move-object v0, v2

    .line 193
    :goto_7
    monitor-exit p0

    return-object v0

    .line 6029
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5029
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :goto_8
    monitor-exit p0

    throw v0

    :cond_11
    move-object/from16 v0, p18

    monitor-exit p0

    .line 220
    sget-object v2, Lo/setImageURI;->extraCallback:Lo/setImageURI;

    invoke-interface {v0, v1, v2}, Lo/setOrientation;->extraCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Lo/setImageURI;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized onNavigationEvent(Lo/setPrecomputedText;Lo/AppCompatImageHelper;Lo/setTextFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPrecomputedText<",
            "*>;",
            "Lo/AppCompatImageHelper;",
            "Lo/setTextFuture<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    .line 9045
    :try_start_0
    iget-boolean v0, p3, Lo/setTextFuture;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lo/setLineHeight;->onTransact:Lo/performClick;

    invoke-virtual {v0, p2, p3}, Lo/performClick;->onPostMessage(Lo/AppCompatImageHelper;Lo/setTextFuture;)V

    .line 377
    :cond_0
    iget-object p3, p0, Lo/setLineHeight;->onPostMessage:Lo/isHideOnContentScrollEnabled;

    invoke-virtual {p3, p2, p1}, Lo/isHideOnContentScrollEnabled;->onMessageChannelReady(Lo/AppCompatImageHelper;Lo/setPrecomputedText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPostMessage(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "*>;)V"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lo/setLineHeight;->onNavigationEvent:Lo/getNextVisibleChildIndex;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lo/getNextVisibleChildIndex;->onNavigationEvent(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Z)V

    return-void
.end method
