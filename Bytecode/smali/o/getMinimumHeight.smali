.class final Lo/getMinimumHeight;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/compatMeasureContentWidth;
.implements Lo/compatMeasureContentWidth$onNavigationEvent;


# instance fields
.field final ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getLastBaselineToBottomHeight<",
            "*>;"
        }
    .end annotation
.end field

.field private asBinder:I

.field volatile extraCallback:Lo/setNavigationContentDescription$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setNavigationContentDescription$ICustomTabsCallback<",
            "*>;"
        }
    .end annotation
.end field

.field onMessageChannelReady:Lo/onRestoreInstanceState;

.field onNavigationEvent:Ljava/lang/Object;

.field final onPostMessage:Lo/compatMeasureContentWidth$onNavigationEvent;

.field private onRelationshipValidationResult:Lo/AppCompatTextView;


# direct methods
.method constructor <init>(Lo/getLastBaselineToBottomHeight;Lo/compatMeasureContentWidth$onNavigationEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getLastBaselineToBottomHeight<",
            "*>;",
            "Lo/compatMeasureContentWidth$onNavigationEvent;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lo/getMinimumHeight;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    .line 39
    iput-object p2, p0, Lo/getMinimumHeight;->onPostMessage:Lo/compatMeasureContentWidth$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final extraCallback()V
    .locals 1

    .line 132
    iget-object v0, p0, Lo/getMinimumHeight;->extraCallback:Lo/setNavigationContentDescription$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, v0, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    invoke-interface {v0}, Lo/AppCompatImageView;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/AppCompatImageHelper;Ljava/lang/Exception;Lo/AppCompatImageView;Lo/setImageURI;)V
    .locals 1
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

    .line 182
    iget-object p4, p0, Lo/getMinimumHeight;->onPostMessage:Lo/compatMeasureContentWidth$onNavigationEvent;

    iget-object v0, p0, Lo/getMinimumHeight;->extraCallback:Lo/setNavigationContentDescription$ICustomTabsCallback;

    iget-object v0, v0, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    invoke-interface {v0}, Lo/AppCompatImageView;->extraCallback()Lo/setImageURI;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lo/compatMeasureContentWidth$onNavigationEvent;->extraCallback(Lo/AppCompatImageHelper;Ljava/lang/Exception;Lo/AppCompatImageView;Lo/setImageURI;)V

    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 10

    const-string v0, "SourceGenerator"

    .line 44
    iget-object v1, p0, Lo/getMinimumHeight;->onNavigationEvent:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 46
    iput-object v2, p0, Lo/getMinimumHeight;->onNavigationEvent:Ljava/lang/Object;

    .line 1102
    invoke-static {}, Lo/getAnchorView;->ICustomTabsCallback()J

    move-result-wide v3

    .line 1104
    :try_start_0
    iget-object v5, p0, Lo/getMinimumHeight;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    .line 1242
    iget-object v5, v5, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 2109
    iget-object v5, v5, Lo/tintDrawableUsingColorFilter;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    .line 2571
    iget-object v5, v5, Lcom/bumptech/glide/Registry;->onNavigationEvent:Lo/measureVertical;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lo/measureVertical;->ICustomTabsCallback(Ljava/lang/Class;)Lo/getSupportImageTintList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1105
    new-instance v6, Lo/getPrompt;

    iget-object v7, p0, Lo/getMinimumHeight;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    .line 3107
    iget-object v7, v7, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback$Stub:Lo/applyFrameworkTintUsingColorFilter;

    .line 1106
    invoke-direct {v6, v5, v1, v7}, Lo/getPrompt;-><init>(Lo/getSupportImageTintList;Ljava/lang/Object;Lo/applyFrameworkTintUsingColorFilter;)V

    .line 1107
    new-instance v7, Lo/onRestoreInstanceState;

    iget-object v8, p0, Lo/getMinimumHeight;->extraCallback:Lo/setNavigationContentDescription$ICustomTabsCallback;

    iget-object v8, v8, Lo/setNavigationContentDescription$ICustomTabsCallback;->onMessageChannelReady:Lo/AppCompatImageHelper;

    iget-object v9, p0, Lo/getMinimumHeight;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    .line 3111
    iget-object v9, v9, Lo/getLastBaselineToBottomHeight;->getInterfaceDescriptor:Lo/AppCompatImageHelper;

    .line 1107
    invoke-direct {v7, v8, v9}, Lo/onRestoreInstanceState;-><init>(Lo/AppCompatImageHelper;Lo/AppCompatImageHelper;)V

    iput-object v7, p0, Lo/getMinimumHeight;->onMessageChannelReady:Lo/onRestoreInstanceState;

    .line 1108
    iget-object v7, p0, Lo/getMinimumHeight;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    .line 4095
    iget-object v7, v7, Lo/getLastBaselineToBottomHeight;->asInterface:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;

    invoke-interface {v7}, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;->ICustomTabsCallback()Lo/ContentFrameLayout$OnAttachListener;

    move-result-object v7

    .line 1108
    iget-object v8, p0, Lo/getMinimumHeight;->onMessageChannelReady:Lo/onRestoreInstanceState;

    invoke-interface {v7, v8, v6}, Lo/ContentFrameLayout$OnAttachListener;->onPostMessage(Lo/AppCompatImageHelper;Lo/ContentFrameLayout$OnAttachListener$onPostMessage;)V

    const/4 v6, 0x2

    .line 1109
    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1110
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Finished encoding source to cache, key: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lo/getMinimumHeight;->onMessageChannelReady:Lo/onRestoreInstanceState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encoder: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    invoke-static {v3, v4}, Lo/getAnchorView;->onMessageChannelReady(J)D

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1110
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    :cond_0
    iget-object v0, p0, Lo/getMinimumHeight;->extraCallback:Lo/setNavigationContentDescription$ICustomTabsCallback;

    iget-object v0, v0, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    invoke-interface {v0}, Lo/AppCompatImageView;->onPostMessage()V

    .line 1126
    new-instance v0, Lo/AppCompatTextView;

    iget-object v1, p0, Lo/getMinimumHeight;->extraCallback:Lo/setNavigationContentDescription$ICustomTabsCallback;

    iget-object v1, v1, Lo/setNavigationContentDescription$ICustomTabsCallback;->onMessageChannelReady:Lo/AppCompatImageHelper;

    .line 1127
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lo/getMinimumHeight;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    invoke-direct {v0, v1, v3, p0}, Lo/AppCompatTextView;-><init>(Ljava/util/List;Lo/getLastBaselineToBottomHeight;Lo/compatMeasureContentWidth$onNavigationEvent;)V

    iput-object v0, p0, Lo/getMinimumHeight;->onRelationshipValidationResult:Lo/AppCompatTextView;

    goto :goto_0

    .line 2575
    :cond_1
    :try_start_1
    new-instance v0, Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 1123
    iget-object v1, p0, Lo/getMinimumHeight;->extraCallback:Lo/setNavigationContentDescription$ICustomTabsCallback;

    iget-object v1, v1, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    invoke-interface {v1}, Lo/AppCompatImageView;->onPostMessage()V

    throw v0

    .line 50
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/getMinimumHeight;->onRelationshipValidationResult:Lo/AppCompatTextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lo/AppCompatTextView;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 53
    :cond_3
    iput-object v2, p0, Lo/getMinimumHeight;->onRelationshipValidationResult:Lo/AppCompatTextView;

    .line 55
    iput-object v2, p0, Lo/getMinimumHeight;->extraCallback:Lo/setNavigationContentDescription$ICustomTabsCallback;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_4
    :goto_1
    if-nez v2, :cond_8

    .line 4098
    iget v3, p0, Lo/getMinimumHeight;->asBinder:I

    iget-object v4, p0, Lo/getMinimumHeight;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    invoke-virtual {v4}, Lo/getLastBaselineToBottomHeight;->onMessageChannelReady()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_8

    .line 58
    iget-object v3, p0, Lo/getMinimumHeight;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    invoke-virtual {v3}, Lo/getLastBaselineToBottomHeight;->onMessageChannelReady()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lo/getMinimumHeight;->asBinder:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lo/getMinimumHeight;->asBinder:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setNavigationContentDescription$ICustomTabsCallback;

    iput-object v3, p0, Lo/getMinimumHeight;->extraCallback:Lo/setNavigationContentDescription$ICustomTabsCallback;

    .line 59
    iget-object v3, p0, Lo/getMinimumHeight;->extraCallback:Lo/setNavigationContentDescription$ICustomTabsCallback;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lo/getMinimumHeight;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    .line 4099
    iget-object v3, v3, Lo/getLastBaselineToBottomHeight;->updateVisuals:Lo/getFirstBaselineToTopHeight;

    .line 60
    iget-object v4, p0, Lo/getMinimumHeight;->extraCallback:Lo/setNavigationContentDescription$ICustomTabsCallback;

    iget-object v4, v4, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    invoke-interface {v4}, Lo/AppCompatImageView;->extraCallback()Lo/setImageURI;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/getFirstBaselineToTopHeight;->onMessageChannelReady(Lo/setImageURI;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lo/getMinimumHeight;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    iget-object v4, p0, Lo/getMinimumHeight;->extraCallback:Lo/setNavigationContentDescription$ICustomTabsCallback;

    iget-object v4, v4, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    .line 61
    invoke-interface {v4}, Lo/AppCompatImageView;->onNavigationEvent()Ljava/lang/Class;

    move-result-object v4

    .line 4145
    iget-object v5, v3, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 5109
    iget-object v5, v5, Lo/tintDrawableUsingColorFilter;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    .line 4145
    iget-object v6, v3, Lo/getLastBaselineToBottomHeight;->onRelationshipValidationResult:Ljava/lang/Class;

    iget-object v3, v3, Lo/getLastBaselineToBottomHeight;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Class;

    invoke-virtual {v5, v4, v6, v3}, Lcom/bumptech/glide/Registry;->extraCallback(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lo/setCompoundDrawablesWithIntrinsicBounds;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_4

    .line 63
    :cond_7
    iget-object v2, p0, Lo/getMinimumHeight;->extraCallback:Lo/setNavigationContentDescription$ICustomTabsCallback;

    .line 6070
    iget-object v3, p0, Lo/getMinimumHeight;->extraCallback:Lo/setNavigationContentDescription$ICustomTabsCallback;

    iget-object v3, v3, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    iget-object v4, p0, Lo/getMinimumHeight;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    .line 6103
    iget-object v4, v4, Lo/getLastBaselineToBottomHeight;->warmup:Lo/getTintList;

    .line 6071
    new-instance v5, Lo/getMinimumHeight$3;

    invoke-direct {v5, p0, v2}, Lo/getMinimumHeight$3;-><init>(Lo/getMinimumHeight;Lo/setNavigationContentDescription$ICustomTabsCallback;)V

    .line 6070
    invoke-interface {v3, v4, v5}, Lo/AppCompatImageView;->onPostMessage(Lo/getTintList;Lo/AppCompatImageView$ICustomTabsCallback;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_8
    return v2
.end method

.method public final onPostMessage(Lo/AppCompatImageHelper;Ljava/lang/Object;Lo/AppCompatImageView;Lo/setImageURI;Lo/AppCompatImageHelper;)V
    .locals 6
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

    .line 176
    iget-object v0, p0, Lo/getMinimumHeight;->onPostMessage:Lo/compatMeasureContentWidth$onNavigationEvent;

    iget-object p4, p0, Lo/getMinimumHeight;->extraCallback:Lo/setNavigationContentDescription$ICustomTabsCallback;

    iget-object p4, p4, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    invoke-interface {p4}, Lo/AppCompatImageView;->extraCallback()Lo/setImageURI;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lo/compatMeasureContentWidth$onNavigationEvent;->onPostMessage(Lo/AppCompatImageHelper;Ljava/lang/Object;Lo/AppCompatImageView;Lo/setImageURI;Lo/AppCompatImageHelper;)V

    return-void
.end method
