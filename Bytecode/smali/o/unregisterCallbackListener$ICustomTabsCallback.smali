.class Lo/unregisterCallbackListener$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/unregisterCallbackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# direct methods
.method static onMessageChannelReady(Landroid/view/View;Lo/getVolumeAttributes;Landroid/graphics/Rect;)Lo/getVolumeAttributes;
    .locals 1

    .line 4430
    invoke-virtual {p1}, Lo/getVolumeAttributes;->onRelationshipValidationResult()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4433
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object p0

    .line 4432
    invoke-static {p0}, Lo/getVolumeAttributes;->onPostMessage(Landroid/view/WindowInsets;)Lo/getVolumeAttributes;

    move-result-object p0

    return-object p0

    .line 4435
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-object p1
.end method
