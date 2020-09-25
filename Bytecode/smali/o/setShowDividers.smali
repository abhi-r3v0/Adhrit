.class public final Lo/setShowDividers;
.super Lo/onViewDetachedFromWindow;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/onViewDetachedFromWindow<",
        "Lo/toGlobalMotionEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/toGlobalMotionEvent;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lo/onViewDetachedFromWindow;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 34
    iget-object v0, p0, Lo/onViewDetachedFromWindow;->extraCallback:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lo/toGlobalMotionEvent;

    .line 5155
    iget-object v0, v0, Lo/toGlobalMotionEvent;->onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

    iget-object v0, v0, Lo/toGlobalMotionEvent$extraCallback;->onNavigationEvent:Lo/getShowDividers;

    .line 6118
    iget-object v0, v0, Lo/getShowDividers;->asInterface:Landroid/graphics/Bitmap;

    .line 34
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public final extraCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lo/toGlobalMotionEvent;",
            ">;"
        }
    .end annotation

    .line 18
    const-class v0, Lo/toGlobalMotionEvent;

    return-object v0
.end method

.method public final onMessageChannelReady()V
    .locals 5

    .line 28
    iget-object v0, p0, Lo/onViewDetachedFromWindow;->extraCallback:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lo/toGlobalMotionEvent;

    invoke-virtual {v0}, Lo/toGlobalMotionEvent;->stop()V

    .line 29
    iget-object v0, p0, Lo/onViewDetachedFromWindow;->extraCallback:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lo/toGlobalMotionEvent;

    const/4 v1, 0x1

    .line 2368
    iput-boolean v1, v0, Lo/toGlobalMotionEvent;->onMessageChannelReady:Z

    .line 2369
    iget-object v0, v0, Lo/toGlobalMotionEvent;->onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

    iget-object v0, v0, Lo/toGlobalMotionEvent$extraCallback;->onNavigationEvent:Lo/getShowDividers;

    .line 3185
    iget-object v2, v0, Lo/getShowDividers;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3236
    iget-object v2, v0, Lo/getShowDividers;->asInterface:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3237
    iget-object v2, v0, Lo/getShowDividers;->extraCallback:Lo/dispatchFitSystemWindows;

    iget-object v4, v0, Lo/getShowDividers;->asInterface:Landroid/graphics/Bitmap;

    invoke-interface {v2, v4}, Lo/dispatchFitSystemWindows;->extraCallback(Landroid/graphics/Bitmap;)V

    .line 3238
    iput-object v3, v0, Lo/getShowDividers;->asInterface:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v2, 0x0

    .line 4181
    iput-boolean v2, v0, Lo/getShowDividers;->onNavigationEvent:Z

    .line 3188
    iget-object v2, v0, Lo/getShowDividers;->asBinder:Lo/getShowDividers$ICustomTabsCallback;

    if-eqz v2, :cond_1

    .line 3189
    iget-object v2, v0, Lo/getShowDividers;->ICustomTabsCallback:Lo/AppCompatImageButton;

    iget-object v4, v0, Lo/getShowDividers;->asBinder:Lo/getShowDividers$ICustomTabsCallback;

    invoke-virtual {v2, v4}, Lo/AppCompatImageButton;->onMessageChannelReady(Lo/ListPopupWindow;)V

    .line 3190
    iput-object v3, v0, Lo/getShowDividers;->asBinder:Lo/getShowDividers$ICustomTabsCallback;

    .line 3192
    :cond_1
    iget-object v2, v0, Lo/getShowDividers;->onRelationshipValidationResult:Lo/getShowDividers$ICustomTabsCallback;

    if-eqz v2, :cond_2

    .line 3193
    iget-object v2, v0, Lo/getShowDividers;->ICustomTabsCallback:Lo/AppCompatImageButton;

    iget-object v4, v0, Lo/getShowDividers;->onRelationshipValidationResult:Lo/getShowDividers$ICustomTabsCallback;

    invoke-virtual {v2, v4}, Lo/AppCompatImageButton;->onMessageChannelReady(Lo/ListPopupWindow;)V

    .line 3194
    iput-object v3, v0, Lo/getShowDividers;->onRelationshipValidationResult:Lo/getShowDividers$ICustomTabsCallback;

    .line 3196
    :cond_2
    iget-object v2, v0, Lo/getShowDividers;->onTransact:Lo/getShowDividers$ICustomTabsCallback;

    if-eqz v2, :cond_3

    .line 3197
    iget-object v2, v0, Lo/getShowDividers;->ICustomTabsCallback:Lo/AppCompatImageButton;

    iget-object v4, v0, Lo/getShowDividers;->onTransact:Lo/getShowDividers$ICustomTabsCallback;

    invoke-virtual {v2, v4}, Lo/AppCompatImageButton;->onMessageChannelReady(Lo/ListPopupWindow;)V

    .line 3198
    iput-object v3, v0, Lo/getShowDividers;->onTransact:Lo/getShowDividers$ICustomTabsCallback;

    .line 3200
    :cond_3
    iget-object v2, v0, Lo/getShowDividers;->onPostMessage:Lo/setSupportImageTintList;

    invoke-interface {v2}, Lo/setSupportImageTintList;->onRelationshipValidationResult()V

    .line 3201
    iput-boolean v1, v0, Lo/getShowDividers;->ICustomTabsCallback$Stub:Z

    return-void
.end method

.method public final onNavigationEvent()I
    .locals 2

    .line 23
    iget-object v0, p0, Lo/onViewDetachedFromWindow;->extraCallback:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lo/toGlobalMotionEvent;

    .line 1151
    iget-object v0, v0, Lo/toGlobalMotionEvent;->onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

    iget-object v0, v0, Lo/toGlobalMotionEvent$extraCallback;->onNavigationEvent:Lo/getShowDividers;

    .line 2151
    iget-object v1, v0, Lo/getShowDividers;->onPostMessage:Lo/setSupportImageTintList;

    invoke-interface {v1}, Lo/setSupportImageTintList;->ICustomTabsCallback$Stub()I

    move-result v1

    iget v0, v0, Lo/getShowDividers;->getInterfaceDescriptor:I

    add-int/2addr v1, v0

    return v1
.end method
