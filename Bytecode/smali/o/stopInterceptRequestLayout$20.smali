.class public final Lo/stopInterceptRequestLayout$20;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopInterceptRequestLayout;-><init>(Lo/releaseGlows;Lo/hasGapsToFix$onMessageChannelReady;Lo/pullGlows;Lo/getServerTime;)V
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
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$27",
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
.field private synthetic onPostMessage:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 379
    iput-object p1, p0, Lo/stopInterceptRequestLayout$20;->onPostMessage:Lo/stopInterceptRequestLayout;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;F)V
    .locals 0

    const-string p2, "bottomSheet"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;I)V
    .locals 1

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x5

    if-ne p2, p1, :cond_5

    .line 387
    iget-object p1, p0, Lo/stopInterceptRequestLayout$20;->onPostMessage:Lo/stopInterceptRequestLayout;

    .line 1039
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 1078
    iget-object p1, p1, Lo/pullGlows;->updateVisuals:Lo/setActive;

    .line 1320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object p2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 387
    :goto_0
    check-cast p1, Ljava/lang/String;

    const-string p2, "dropdown"

    invoke-static {p1, p2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lo/stopInterceptRequestLayout$20;->onPostMessage:Lo/stopInterceptRequestLayout;

    .line 2039
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 2078
    iget-object p1, p1, Lo/pullGlows;->updateVisuals:Lo/setActive;

    .line 2320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object p2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 387
    :goto_1
    check-cast p1, Ljava/lang/String;

    const-string p2, "checkbox"

    invoke-static {p1, p2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lo/stopInterceptRequestLayout$20;->onPostMessage:Lo/stopInterceptRequestLayout;

    .line 3039
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 3078
    iget-object p1, p1, Lo/pullGlows;->updateVisuals:Lo/setActive;

    .line 3320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object p2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, p2, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v0

    .line 387
    :goto_2
    check-cast p1, Ljava/lang/String;

    const-string/jumbo p2, "user_input"

    invoke-static {p1, p2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lo/stopInterceptRequestLayout$20;->onPostMessage:Lo/stopInterceptRequestLayout;

    .line 4039
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 4078
    iget-object p1, p1, Lo/pullGlows;->updateVisuals:Lo/setActive;

    .line 4320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object p2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, p2, :cond_3

    move-object v0, p1

    .line 387
    :cond_3
    check-cast v0, Ljava/lang/String;

    const-string p1, "address"

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 388
    :cond_4
    iget-object p1, p0, Lo/stopInterceptRequestLayout$20;->onPostMessage:Lo/stopInterceptRequestLayout;

    .line 5039
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 388
    invoke-virtual {p1}, Lo/pullGlows;->onRelationshipValidationResult()Z

    .line 389
    iget-object p1, p0, Lo/stopInterceptRequestLayout$20;->onPostMessage:Lo/stopInterceptRequestLayout;

    .line 6036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->onMessageChannelReady:Landroid/view/View;

    .line 389
    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->onMessageChannelReady(Landroid/view/View;)V

    :cond_5
    return-void
.end method
