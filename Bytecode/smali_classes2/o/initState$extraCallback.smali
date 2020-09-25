.class public final Lo/initState$extraCallback;
.super Lo/rate$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/initState;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0003H\u0016J0\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003H\u0016J \u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0003H\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "com/dreamplug/fabrik/helper/ui/widget/SwipeCardLayout$mDragHelperCallback$1",
        "Landroidx/customview/widget/ViewDragHelper$Callback;",
        "clampViewPositionHorizontal",
        "",
        "child",
        "Landroid/view/View;",
        "left",
        "dx",
        "onEdgeDragStarted",
        "",
        "edgeFlags",
        "pointerId",
        "onViewPositionChanged",
        "changedView",
        "top",
        "dy",
        "onViewReleased",
        "releasedChild",
        "xvel",
        "",
        "yvel",
        "tryCaptureView",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/initState;


# direct methods
.method constructor <init>(Lo/initState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-direct {p0}, Lo/rate$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/view/View;I)Z
    .locals 2

    const-string v0, "child"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    .line 1089
    iget-boolean p1, p1, Lo/initState;->onNavigationEvent:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 163
    :cond_0
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p1}, Lo/initState;->extraCallback(Lo/initState;)Lo/rate;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    iget-object v1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {v1}, Lo/initState;->onMessageChannelReady(Lo/initState;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-virtual {p1, v1, p2}, Lo/rate;->extraCallback(Landroid/view/View;I)V

    return v0
.end method

.method public final onNavigationEvent(II)V
    .locals 4

    .line 245
    invoke-super {p0, p1, p2}, Lo/rate$ICustomTabsCallback;->onNavigationEvent(II)V

    .line 246
    iget-object v0, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    .line 6089
    iget-boolean v0, v0, Lo/initState;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {v0}, Lo/initState;->onPostMessage(Lo/initState;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 250
    :goto_0
    iget-object v3, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {v3}, Lo/initState;->onPostMessage(Lo/initState;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_6

    .line 251
    :cond_3
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p1}, Lo/initState;->extraCallback(Lo/initState;)Lo/rate;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    iget-object v0, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {v0}, Lo/initState;->onMessageChannelReady(Lo/initState;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    invoke-virtual {p1, v0, p2}, Lo/rate;->extraCallback(Landroid/view/View;I)V

    :cond_6
    return-void
.end method

.method public final onNavigationEvent(Landroid/view/View;FF)V
    .locals 3

    const-string p3, "releasedChild"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    float-to-int p2, p2

    invoke-static {p1, p2}, Lo/initState;->extraCallback(Lo/initState;I)I

    move-result p1

    iget-object p3, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p3}, Lo/initState;->asInterface(Lo/initState;)I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 201
    :goto_0
    iget-object p3, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p3, p2}, Lo/initState;->extraCallback(Lo/initState;I)I

    move-result p2

    iget-object p3, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p3}, Lo/initState;->asInterface(Lo/initState;)I

    move-result p3

    neg-int p3, p3

    if-gt p2, p3, :cond_1

    const/4 v0, 0x1

    .line 203
    :cond_1
    sget-object p2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 5000
    sget-object p2, Lo/setTrackTintMode;->getDefaultImpl:Lo/setTitleTextColor;

    sget-object p3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x20

    aget-object p3, p3, v2

    invoke-virtual {p2, p3}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    .line 204
    sget-object p2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 6000
    sget-object p2, Lo/setTrackTintMode;->getDefaultImpl:Lo/setTitleTextColor;

    sget-object p3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object p3, p3, v2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3, v2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 207
    :cond_2
    iget-object p2, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p2}, Lo/initState;->onTransact(Lo/initState;)I

    move-result p2

    .line 208
    iget-object p3, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p3}, Lo/initState;->onPostMessage(Lo/initState;)Z

    move-result p3

    if-eqz p3, :cond_7

    const-string p3, "card_swipe_right"

    if-eqz p1, :cond_4

    .line 210
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-virtual {p1, p3}, Lo/initState;->setDragState(Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p1}, Lo/initState;->warmup(Lo/initState;)Lo/onDisconnectSetValue;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, p3}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_3
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-virtual {p1}, Lo/initState;->onNavigationEvent()V

    return-void

    :cond_4
    if-nez v0, :cond_c

    .line 216
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p1}, Lo/initState;->onMessageChannelReady(Lo/initState;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    if-lt p1, p2, :cond_c

    .line 219
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-virtual {p1, p3}, Lo/initState;->setDragState(Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p1}, Lo/initState;->warmup(Lo/initState;)Lo/onDisconnectSetValue;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1, p3}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_6
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-virtual {p1}, Lo/initState;->onNavigationEvent()V

    return-void

    :cond_7
    if-nez p1, :cond_c

    const-string p1, "card_swipe_left"

    if-eqz v0, :cond_9

    .line 228
    iget-object p2, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-virtual {p2, p1}, Lo/initState;->setDragState(Ljava/lang/String;)V

    .line 229
    iget-object p2, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p2}, Lo/initState;->warmup(Lo/initState;)Lo/onDisconnectSetValue;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-interface {p2, p1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_8
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-virtual {p1}, Lo/initState;->onNavigationEvent()V

    return-void

    .line 232
    :cond_9
    iget-object p3, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p3}, Lo/initState;->onMessageChannelReady(Lo/initState;)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_a

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_a
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    if-ge p3, p2, :cond_c

    .line 233
    iget-object p2, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-virtual {p2, p1}, Lo/initState;->setDragState(Ljava/lang/String;)V

    .line 234
    iget-object p2, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p2}, Lo/initState;->warmup(Lo/initState;)Lo/onDisconnectSetValue;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-interface {p2, p1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_b
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-virtual {p1}, Lo/initState;->onNavigationEvent()V

    return-void

    .line 237
    :cond_c
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-virtual {p1, v1}, Lo/initState;->onPostMessage(Z)V

    return-void
.end method

.method public final onNavigationEvent(Landroid/view/View;IIII)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-super/range {p0 .. p5}, Lo/rate$ICustomTabsCallback;->onNavigationEvent(Landroid/view/View;IIII)V

    .line 256
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;I)I
    .locals 5

    const-string v0, "child"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    .line 1094
    iget-boolean v0, p1, Lo/initState;->onPostMessage:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    .line 1098
    iget-boolean v0, v0, Lo/initState;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    if-lez p2, :cond_1

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    .line 2094
    iget-boolean v0, v0, Lo/initState;->onPostMessage:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 169
    :goto_0
    invoke-static {p1, v1}, Lo/initState;->onMessageChannelReady(Lo/initState;Z)V

    .line 174
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p1}, Lo/initState;->onPostMessage(Lo/initState;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_8

    .line 176
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p1}, Lo/initState;->ICustomTabsCallback(Lo/initState;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 177
    :cond_2
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p1}, Lo/initState;->onNavigationEvent(Lo/initState;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_3
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p1}, Lo/initState;->onRelationshipValidationResult(Lo/initState;)Landroid/graphics/Rect;

    move-result-object p1

    .line 179
    iget-object v0, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {v0}, Lo/initState;->ICustomTabsCallback$Stub(Lo/initState;)I

    move-result v0

    .line 180
    iget-object v1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {v1}, Lo/initState;->asBinder(Lo/initState;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 181
    iget-object v2, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {v2}, Lo/initState;->ICustomTabsCallback$Stub(Lo/initState;)I

    move-result v2

    iget-object v3, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {v3}, Lo/initState;->onMessageChannelReady(Lo/initState;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 182
    iget-object v3, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {v3}, Lo/initState;->asBinder(Lo/initState;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {v4}, Lo/initState;->onMessageChannelReady(Lo/initState;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 178
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 184
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p1}, Lo/initState;->ICustomTabsCallback$Stub(Lo/initState;)I

    move-result p1

    if-le p2, p1, :cond_6

    move p2, p1

    :cond_6
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p1}, Lo/initState;->asBinder(Lo/initState;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-ge p2, p1, :cond_7

    return p1

    :cond_7
    return p2

    .line 187
    :cond_8
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p1}, Lo/initState;->ICustomTabsCallback(Lo/initState;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :cond_9
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p1}, Lo/initState;->onNavigationEvent(Lo/initState;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_a
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p1}, Lo/initState;->onRelationshipValidationResult(Lo/initState;)Landroid/graphics/Rect;

    move-result-object p1

    .line 190
    iget-object v0, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {v0}, Lo/initState;->ICustomTabsCallback$Stub(Lo/initState;)I

    move-result v0

    .line 191
    iget-object v1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {v1}, Lo/initState;->asBinder(Lo/initState;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 192
    iget-object v2, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {v2}, Lo/initState;->ICustomTabsCallback$Stub(Lo/initState;)I

    move-result v2

    iget-object v3, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {v3}, Lo/initState;->onMessageChannelReady(Lo/initState;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_b

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_b
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 193
    iget-object v3, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {v3}, Lo/initState;->asBinder(Lo/initState;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {v4}, Lo/initState;->onMessageChannelReady(Lo/initState;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_c

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 189
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 195
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p1}, Lo/initState;->asBinder(Lo/initState;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-le p2, p1, :cond_d

    move p2, p1

    :cond_d
    iget-object p1, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {p1}, Lo/initState;->asBinder(Lo/initState;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lo/initState$extraCallback;->onNavigationEvent:Lo/initState;

    invoke-static {v0}, Lo/initState;->ICustomTabsCallback(Lo/initState;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    if-ge p2, p1, :cond_f

    return p1

    :cond_f
    return p2
.end method
