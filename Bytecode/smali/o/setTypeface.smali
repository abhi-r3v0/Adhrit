.class final Lo/setTypeface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/compatMeasureContentWidth;
.implements Lo/AppCompatImageView$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/compatMeasureContentWidth;",
        "Lo/AppCompatImageView$ICustomTabsCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/compatMeasureContentWidth$onNavigationEvent;

.field private ICustomTabsCallback$Stub:I

.field private volatile asBinder:Lo/setNavigationContentDescription$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setNavigationContentDescription$ICustomTabsCallback<",
            "*>;"
        }
    .end annotation
.end field

.field private asInterface:Ljava/io/File;

.field private final extraCallback:Lo/getLastBaselineToBottomHeight;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getLastBaselineToBottomHeight<",
            "*>;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Lo/AppCompatImageHelper;

.field private onNavigationEvent:I

.field private onPostMessage:I

.field private onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setNavigationContentDescription<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private onTransact:Lo/setCompoundDrawables;


# direct methods
.method constructor <init>(Lo/getLastBaselineToBottomHeight;Lo/compatMeasureContentWidth$onNavigationEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getLastBaselineToBottomHeight<",
            "*>;",
            "Lo/compatMeasureContentWidth$onNavigationEvent;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lo/setTypeface;->onPostMessage:I

    .line 36
    iput-object p1, p0, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    .line 37
    iput-object p2, p0, Lo/setTypeface;->ICustomTabsCallback:Lo/compatMeasureContentWidth$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    .line 115
    iget-object v0, p0, Lo/setTypeface;->asBinder:Lo/setNavigationContentDescription$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, v0, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    invoke-interface {v0}, Lo/AppCompatImageView;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method

.method public final extraCallback(Ljava/lang/Exception;)V
    .locals 4

    .line 129
    iget-object v0, p0, Lo/setTypeface;->ICustomTabsCallback:Lo/compatMeasureContentWidth$onNavigationEvent;

    iget-object v1, p0, Lo/setTypeface;->onTransact:Lo/setCompoundDrawables;

    iget-object v2, p0, Lo/setTypeface;->asBinder:Lo/setNavigationContentDescription$ICustomTabsCallback;

    iget-object v2, v2, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    sget-object v3, Lo/setImageURI;->onPostMessage:Lo/setImageURI;

    invoke-interface {v0, v1, p1, v2, v3}, Lo/compatMeasureContentWidth$onNavigationEvent;->extraCallback(Lo/AppCompatImageHelper;Ljava/lang/Exception;Lo/AppCompatImageView;Lo/setImageURI;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

    .line 123
    iget-object v0, p0, Lo/setTypeface;->ICustomTabsCallback:Lo/compatMeasureContentWidth$onNavigationEvent;

    iget-object v1, p0, Lo/setTypeface;->onMessageChannelReady:Lo/AppCompatImageHelper;

    iget-object v2, p0, Lo/setTypeface;->asBinder:Lo/setNavigationContentDescription$ICustomTabsCallback;

    iget-object v3, v2, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    sget-object v4, Lo/setImageURI;->onPostMessage:Lo/setImageURI;

    iget-object v5, p0, Lo/setTypeface;->onTransact:Lo/setCompoundDrawables;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lo/compatMeasureContentWidth$onNavigationEvent;->onPostMessage(Lo/AppCompatImageHelper;Ljava/lang/Object;Lo/AppCompatImageView;Lo/setImageURI;Lo/AppCompatImageHelper;)V

    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 17

    move-object/from16 v1, p0

    .line 44
    iget-object v0, v1, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    invoke-virtual {v0}, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 48
    :cond_0
    iget-object v2, v1, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    .line 1135
    iget-object v4, v2, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 2109
    iget-object v4, v4, Lo/tintDrawableUsingColorFilter;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    .line 1136
    iget-object v5, v2, Lo/getLastBaselineToBottomHeight;->onMessageChannelReady:Ljava/lang/Object;

    .line 1137
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, v2, Lo/getLastBaselineToBottomHeight;->onRelationshipValidationResult:Ljava/lang/Class;

    iget-object v2, v2, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Class;

    .line 2530
    iget-object v7, v4, Lcom/bumptech/glide/Registry;->asBinder:Lo/setContentWidth$onPostMessage;

    .line 2531
    invoke-virtual {v7, v5, v6, v2}, Lo/setContentWidth$onPostMessage;->onNavigationEvent(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_4

    .line 2534
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2535
    iget-object v8, v4, Lcom/bumptech/glide/Registry;->onPostMessage:Lo/setNavigationIcon;

    invoke-virtual {v8, v5}, Lo/setNavigationIcon;->ICustomTabsCallback(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    .line 2536
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    .line 2537
    iget-object v10, v4, Lcom/bumptech/glide/Registry;->onMessageChannelReady:Lo/getLocationOffset;

    .line 2538
    invoke-virtual {v10, v9, v6}, Lo/getLocationOffset;->extraCallback(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    .line 2539
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    .line 2540
    iget-object v11, v4, Lcom/bumptech/glide/Registry;->onRelationshipValidationResult:Lo/drawHorizontalDivider;

    .line 2541
    invoke-virtual {v11, v10, v2}, Lo/drawHorizontalDivider;->onNavigationEvent(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v11

    .line 2542
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 2543
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2547
    :cond_3
    iget-object v4, v4, Lcom/bumptech/glide/Registry;->asBinder:Lo/setContentWidth$onPostMessage;

    .line 2548
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 3043
    iget-object v9, v4, Lo/setContentWidth$onPostMessage;->onNavigationEvent:Lo/postOrRun;

    monitor-enter v9

    .line 3044
    :try_start_0
    iget-object v4, v4, Lo/setContentWidth$onPostMessage;->onNavigationEvent:Lo/postOrRun;

    new-instance v10, Lo/setInputMethodMode$ICustomTabsCallback;

    invoke-direct {v10, v5, v6, v2}, Lo/setInputMethodMode$ICustomTabsCallback;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v4, v10, v8}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3046
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 49
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 50
    const-class v0, Ljava/io/File;

    iget-object v2, v1, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    .line 3127
    iget-object v2, v2, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Class;

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    .line 53
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to find any load path from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    .line 3131
    iget-object v3, v3, Lo/getLastBaselineToBottomHeight;->onMessageChannelReady:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    .line 4127
    iget-object v3, v3, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Class;

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_6
    :goto_2
    iget-object v2, v1, Lo/setTypeface;->onRelationshipValidationResult:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v2, :cond_d

    .line 5110
    iget v5, v1, Lo/setTypeface;->ICustomTabsCallback$Stub:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_8

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    .line 93
    iput-object v0, v1, Lo/setTypeface;->asBinder:Lo/setNavigationContentDescription$ICustomTabsCallback;

    const/4 v0, 0x0

    :cond_9
    :goto_4
    if-nez v0, :cond_c

    .line 10110
    iget v2, v1, Lo/setTypeface;->ICustomTabsCallback$Stub:I

    iget-object v5, v1, Lo/setTypeface;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_a

    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_c

    .line 96
    iget-object v2, v1, Lo/setTypeface;->onRelationshipValidationResult:Ljava/util/List;

    iget v5, v1, Lo/setTypeface;->ICustomTabsCallback$Stub:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v1, Lo/setTypeface;->ICustomTabsCallback$Stub:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setNavigationContentDescription;

    .line 97
    iget-object v5, v1, Lo/setTypeface;->asInterface:Ljava/io/File;

    iget-object v6, v1, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    .line 10115
    iget v6, v6, Lo/getLastBaselineToBottomHeight;->onNavigationEvent:I

    .line 99
    iget-object v7, v1, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    .line 10119
    iget v7, v7, Lo/getLastBaselineToBottomHeight;->onTransact:I

    .line 99
    iget-object v8, v1, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    .line 11107
    iget-object v8, v8, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback$Stub:Lo/applyFrameworkTintUsingColorFilter;

    .line 98
    invoke-interface {v2, v5, v6, v7, v8}, Lo/setNavigationContentDescription;->extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;

    move-result-object v2

    iput-object v2, v1, Lo/setTypeface;->asBinder:Lo/setNavigationContentDescription$ICustomTabsCallback;

    .line 100
    iget-object v2, v1, Lo/setTypeface;->asBinder:Lo/setNavigationContentDescription$ICustomTabsCallback;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    iget-object v5, v1, Lo/setTypeface;->asBinder:Lo/setNavigationContentDescription$ICustomTabsCallback;

    iget-object v5, v5, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    invoke-interface {v5}, Lo/AppCompatImageView;->onNavigationEvent()Ljava/lang/Class;

    move-result-object v5

    .line 11145
    iget-object v6, v2, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 12109
    iget-object v6, v6, Lo/tintDrawableUsingColorFilter;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    .line 11145
    iget-object v7, v2, Lo/getLastBaselineToBottomHeight;->onRelationshipValidationResult:Ljava/lang/Class;

    iget-object v2, v2, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Class;

    invoke-virtual {v6, v5, v7, v2}, Lcom/bumptech/glide/Registry;->extraCallback(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lo/setCompoundDrawablesWithIntrinsicBounds;

    move-result-object v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_9

    .line 102
    iget-object v0, v1, Lo/setTypeface;->asBinder:Lo/setNavigationContentDescription$ICustomTabsCallback;

    iget-object v0, v0, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    iget-object v2, v1, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    .line 13103
    iget-object v2, v2, Lo/getLastBaselineToBottomHeight;->warmup:Lo/getTintList;

    .line 102
    invoke-interface {v0, v2, v1}, Lo/AppCompatImageView;->onPostMessage(Lo/getTintList;Lo/AppCompatImageView$ICustomTabsCallback;)V

    const/4 v0, 0x1

    goto :goto_4

    :cond_c
    return v0

    .line 60
    :cond_d
    :goto_7
    iget v2, v1, Lo/setTypeface;->onPostMessage:I

    add-int/2addr v2, v4

    iput v2, v1, Lo/setTypeface;->onPostMessage:I

    .line 61
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_f

    .line 62
    iget v2, v1, Lo/setTypeface;->onNavigationEvent:I

    add-int/2addr v2, v4

    iput v2, v1, Lo/setTypeface;->onNavigationEvent:I

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_e

    return v3

    .line 66
    :cond_e
    iput v3, v1, Lo/setTypeface;->onPostMessage:I

    .line 69
    :cond_f
    iget v2, v1, Lo/setTypeface;->onNavigationEvent:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AppCompatImageHelper;

    .line 70
    iget v4, v1, Lo/setTypeface;->onPostMessage:I

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/Class;

    .line 71
    iget-object v4, v1, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    invoke-virtual {v4, v15}, Lo/getLastBaselineToBottomHeight;->extraCallback(Ljava/lang/Class;)Lo/AppCompatRadioButton;

    move-result-object v14

    .line 75
    new-instance v4, Lo/setCompoundDrawables;

    iget-object v5, v1, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    .line 5123
    iget-object v5, v5, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 6118
    iget-object v9, v5, Lo/tintDrawableUsingColorFilter;->ICustomTabsCallback:Lo/ButtonBarLayout;

    .line 77
    iget-object v5, v1, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    .line 7111
    iget-object v11, v5, Lo/getLastBaselineToBottomHeight;->getInterfaceDescriptor:Lo/AppCompatImageHelper;

    .line 79
    iget-object v5, v1, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    .line 7115
    iget v12, v5, Lo/getLastBaselineToBottomHeight;->onNavigationEvent:I

    .line 80
    iget-object v5, v1, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    .line 7119
    iget v13, v5, Lo/getLastBaselineToBottomHeight;->onTransact:I

    .line 81
    iget-object v5, v1, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    .line 8107
    iget-object v5, v5, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback$Stub:Lo/applyFrameworkTintUsingColorFilter;

    move-object v8, v4

    move-object v10, v2

    move-object/from16 v16, v5

    .line 84
    invoke-direct/range {v8 .. v16}, Lo/setCompoundDrawables;-><init>(Lo/ButtonBarLayout;Lo/AppCompatImageHelper;Lo/AppCompatImageHelper;IILo/AppCompatRadioButton;Ljava/lang/Class;Lo/applyFrameworkTintUsingColorFilter;)V

    iput-object v4, v1, Lo/setTypeface;->onTransact:Lo/setCompoundDrawables;

    .line 85
    iget-object v4, v1, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    .line 9095
    iget-object v4, v4, Lo/getLastBaselineToBottomHeight;->asInterface:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;

    invoke-interface {v4}, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;->ICustomTabsCallback()Lo/ContentFrameLayout$OnAttachListener;

    move-result-object v4

    .line 85
    iget-object v5, v1, Lo/setTypeface;->onTransact:Lo/setCompoundDrawables;

    invoke-interface {v4, v5}, Lo/ContentFrameLayout$OnAttachListener;->onPostMessage(Lo/AppCompatImageHelper;)Ljava/io/File;

    move-result-object v4

    iput-object v4, v1, Lo/setTypeface;->asInterface:Ljava/io/File;

    if-eqz v4, :cond_6

    .line 87
    iput-object v2, v1, Lo/setTypeface;->onMessageChannelReady:Lo/AppCompatImageHelper;

    .line 88
    iget-object v2, v1, Lo/setTypeface;->extraCallback:Lo/getLastBaselineToBottomHeight;

    .line 9188
    iget-object v2, v2, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 10109
    iget-object v2, v2, Lo/tintDrawableUsingColorFilter;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    .line 9188
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/Registry;->onPostMessage(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 88
    iput-object v2, v1, Lo/setTypeface;->onRelationshipValidationResult:Ljava/util/List;

    .line 89
    iput v3, v1, Lo/setTypeface;->ICustomTabsCallback$Stub:I

    goto/16 :goto_2
.end method
