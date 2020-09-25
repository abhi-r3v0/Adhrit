.class public final Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub$2;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;->run()V
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lending/dialog/StashPaymentOrderStatusDialog$onCreateView$5$1",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "onSlide",
        "",
        "bottomSheet",
        "Landroid/view/View;",
        "slideOffset",
        "",
        "onStateChanged",
        "newState",
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
.field private synthetic onMessageChannelReady:Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;


# direct methods
.method constructor <init>(Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub$2;->onMessageChannelReady:Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;F)V
    .locals 1

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 134
    :goto_0
    iget-object p1, p0, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub$2;->onMessageChannelReady:Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;->onMessageChannelReady:Landroid/view/View;

    const-string p2, "backgroundView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;I)V
    .locals 1

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 139
    iget-object p1, p0, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub$2;->onMessageChannelReady:Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/addChildDrawingOrderCallback;

    invoke-static {p1}, Lo/addChildDrawingOrderCallback;->onNavigationEvent(Lo/addChildDrawingOrderCallback;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 140
    iget-object p1, p0, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub$2;->onMessageChannelReady:Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/addChildDrawingOrderCallback;

    invoke-static {p1}, Lo/addChildDrawingOrderCallback;->onMessageChannelReady(Lo/addChildDrawingOrderCallback;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    return-void

    :cond_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_3

    .line 143
    iget-object p2, p0, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub$2;->onMessageChannelReady:Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;

    iget-object p2, p2, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/addChildDrawingOrderCallback;

    invoke-static {p2}, Lo/addChildDrawingOrderCallback;->extraCallback(Lo/addChildDrawingOrderCallback;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 147
    iget-object p2, p0, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub$2;->onMessageChannelReady:Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;

    iget-object p2, p2, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/addChildDrawingOrderCallback;

    invoke-static {p2}, Lo/addChildDrawingOrderCallback;->onRelationshipValidationResult(Lo/addChildDrawingOrderCallback;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "failed"

    invoke-static {p2, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 151
    iget-object p1, p0, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub$2;->onMessageChannelReady:Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/addChildDrawingOrderCallback;

    invoke-static {p1}, Lo/addChildDrawingOrderCallback;->asBinder(Lo/addChildDrawingOrderCallback;)V

    .line 152
    iget-object p1, p0, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub$2;->onMessageChannelReady:Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/addChildDrawingOrderCallback;

    invoke-static {p1}, Lo/addChildDrawingOrderCallback;->onTransact(Lo/addChildDrawingOrderCallback;)V

    return-void

    .line 157
    :cond_2
    iget-object p2, p0, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub$2;->onMessageChannelReady:Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;

    iget-object p2, p2, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/addChildDrawingOrderCallback;

    iget-object v0, p0, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub$2;->onMessageChannelReady:Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;

    iget-object v0, v0, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/addChildDrawingOrderCallback;

    invoke-static {v0}, Lo/addChildDrawingOrderCallback;->ICustomTabsCallback(Lo/addChildDrawingOrderCallback;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lo/addChildDrawingOrderCallback;->onPostMessage(Lo/addChildDrawingOrderCallback;Ljava/lang/String;)V

    .line 158
    iget-object p2, p0, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub$2;->onMessageChannelReady:Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;

    iget-object p2, p2, Lo/addChildDrawingOrderCallback$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/addChildDrawingOrderCallback;

    invoke-static {p2, p1}, Lo/addChildDrawingOrderCallback;->extraCallback(Lo/addChildDrawingOrderCallback;Z)V

    :cond_3
    return-void
.end method
