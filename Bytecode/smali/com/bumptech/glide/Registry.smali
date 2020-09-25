.class public final Lcom/bumptech/glide/Registry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/Registry$NoImageHeaderParserException;,
        Lcom/bumptech/glide/Registry$MissingComponentException;,
        Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;,
        Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;,
        Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/setPopupBackgroundResource;

.field public final ICustomTabsCallback$Stub:Lo/setContentWidth;

.field public final asBinder:Lo/setContentWidth$onPostMessage;

.field private final asInterface:Lo/getChildrenSkipCount;

.field public final extraCallback:Lo/layoutHorizontal;

.field public final onMessageChannelReady:Lo/getLocationOffset;

.field public final onNavigationEvent:Lo/measureVertical;

.field public final onPostMessage:Lo/setNavigationIcon;

.field public final onRelationshipValidationResult:Lo/drawHorizontalDivider;

.field private final onTransact:Lo/RatingCompat$StarStyle$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lo/setContentWidth$onPostMessage;

    invoke-direct {v0}, Lo/setContentWidth$onPostMessage;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->asBinder:Lo/setContentWidth$onPostMessage;

    .line 56
    new-instance v0, Lo/getChildrenSkipCount;

    invoke-direct {v0}, Lo/getChildrenSkipCount;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->asInterface:Lo/getChildrenSkipCount;

    .line 57
    invoke-static {}, Lo/setVerticalOffset;->onMessageChannelReady()Lo/RatingCompat$StarStyle$extraCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    .line 60
    new-instance v1, Lo/setNavigationIcon;

    invoke-direct {v1, v0}, Lo/setNavigationIcon;-><init>(Lo/RatingCompat$StarStyle$extraCallback;)V

    iput-object v1, p0, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    .line 61
    new-instance v0, Lo/measureVertical;

    invoke-direct {v0}, Lo/measureVertical;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->onNavigationEvent:Lo/measureVertical;

    .line 62
    new-instance v0, Lo/getLocationOffset;

    invoke-direct {v0}, Lo/getLocationOffset;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    .line 63
    new-instance v0, Lo/layoutHorizontal;

    invoke-direct {v0}, Lo/layoutHorizontal;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->extraCallback:Lo/layoutHorizontal;

    .line 64
    new-instance v0, Lo/setPopupBackgroundResource;

    invoke-direct {v0}, Lo/setPopupBackgroundResource;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->ICustomTabsCallback:Lo/setPopupBackgroundResource;

    .line 65
    new-instance v0, Lo/drawHorizontalDivider;

    invoke-direct {v0}, Lo/drawHorizontalDivider;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->onRelationshipValidationResult:Lo/drawHorizontalDivider;

    .line 66
    new-instance v0, Lo/setContentWidth;

    invoke-direct {v0}, Lo/setContentWidth;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->ICustomTabsCallback$Stub:Lo/setContentWidth;

    const-string v0, "Gif"

    const-string v1, "Bitmap"

    const-string v2, "BitmapDrawable"

    .line 67
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1263
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1264
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    const-string v2, "legacy_prepend_all"

    .line 1265
    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string v0, "legacy_append"

    .line 1266
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    invoke-virtual {v0, v1}, Lo/getLocationOffset;->onNavigationEvent(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lo/setCompoundDrawablesWithIntrinsicBounds;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Lo/setCompoundDrawablesWithIntrinsicBounds<",
            "TData;TTResource;TTranscode;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 470
    iget-object v2, v1, Lcom/bumptech/glide/Registry;->asInterface:Lo/getChildrenSkipCount;

    .line 471
    invoke-virtual {v2, v0, v9, v10}, Lo/getChildrenSkipCount;->onPostMessage(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lo/setCompoundDrawablesWithIntrinsicBounds;

    move-result-object v2

    .line 472
    invoke-static {v2}, Lo/getChildrenSkipCount;->ICustomTabsCallback(Lo/setCompoundDrawablesWithIntrinsicBounds;)Z

    move-result v3

    const/4 v11, 0x0

    if-eqz v3, :cond_0

    return-object v11

    :cond_0
    if-nez v2, :cond_5

    .line 1496
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1497
    iget-object v2, v1, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    .line 1498
    invoke-virtual {v2, v0, v9}, Lo/getLocationOffset;->extraCallback(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 1500
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/Class;

    .line 1501
    iget-object v2, v1, Lcom/bumptech/glide/Registry;->onRelationshipValidationResult:Lo/drawHorizontalDivider;

    .line 1502
    invoke-virtual {v2, v14, v10}, Lo/drawHorizontalDivider;->onNavigationEvent(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 1504
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Class;

    .line 1506
    iget-object v2, v1, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    .line 1507
    invoke-virtual {v2, v0, v14}, Lo/getLocationOffset;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    .line 1508
    iget-object v2, v1, Lcom/bumptech/glide/Registry;->onRelationshipValidationResult:Lo/drawHorizontalDivider;

    .line 1509
    invoke-virtual {v2, v14, v5}, Lo/drawHorizontalDivider;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;)Lo/drawDividersHorizontal;

    move-result-object v7

    .line 1511
    new-instance v8, Lo/setFirstBaselineToTopHeight;

    iget-object v4, v1, Lcom/bumptech/glide/Registry;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    move-object v2, v8

    move-object/from16 v3, p1

    move-object/from16 v16, v4

    move-object v4, v14

    move-object v11, v8

    move-object/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Lo/setFirstBaselineToTopHeight;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lo/drawDividersHorizontal;Lo/RatingCompat$StarStyle$extraCallback;)V

    .line 1519
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    goto :goto_0

    .line 479
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    .line 482
    :cond_3
    new-instance v8, Lo/setCompoundDrawablesWithIntrinsicBounds;

    iget-object v7, v1, Lcom/bumptech/glide/Registry;->onTransact:Lo/RatingCompat$StarStyle$extraCallback;

    move-object v2, v8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v12

    invoke-direct/range {v2 .. v7}, Lo/setCompoundDrawablesWithIntrinsicBounds;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lo/RatingCompat$StarStyle$extraCallback;)V

    .line 486
    :goto_1
    iget-object v3, v1, Lcom/bumptech/glide/Registry;->asInterface:Lo/getChildrenSkipCount;

    .line 2069
    iget-object v4, v3, Lo/getChildrenSkipCount;->onPostMessage:Lo/postOrRun;

    monitor-enter v4

    .line 2070
    :try_start_0
    iget-object v3, v3, Lo/getChildrenSkipCount;->onPostMessage:Lo/postOrRun;

    new-instance v5, Lo/setInputMethodMode$ICustomTabsCallback;

    invoke-direct {v5, v0, v9, v10}, Lo/setInputMethodMode$ICustomTabsCallback;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    if-eqz v2, :cond_4

    move-object v0, v2

    goto :goto_2

    .line 2072
    :cond_4
    sget-object v0, Lo/getChildrenSkipCount;->onMessageChannelReady:Lo/setCompoundDrawablesWithIntrinsicBounds;

    .line 2070
    :goto_2
    invoke-virtual {v3, v5, v0}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2073
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_5
    :goto_3
    return-object v2
.end method

.method public final onPostMessage(Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List<",
            "Lo/setNavigationContentDescription<",
            "TModel;*>;>;"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    .line 2123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2075
    invoke-virtual {v0, v1}, Lo/setNavigationIcon;->onPostMessage(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 2076
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2079
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2081
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    .line 2084
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/setNavigationContentDescription;

    .line 2085
    invoke-interface {v6, p1}, Lo/setNavigationContentDescription;->onMessageChannelReady(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v4, :cond_0

    .line 2087
    new-instance v2, Ljava/util/ArrayList;

    sub-int v4, v1, v5

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    .line 2090
    :cond_0
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2093
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    return-object v2

    .line 2094
    :cond_3
    new-instance v1, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;

    invoke-direct {v1, p1, v0}, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    throw v1

    .line 2077
    :cond_4
    new-instance v0, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
