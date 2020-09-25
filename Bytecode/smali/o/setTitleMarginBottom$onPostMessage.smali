.class public final Lo/setTitleMarginBottom$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setTitleMarginBottom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/gating/NewOnboardAddCardFragment$Companion;",
        "",
        "()V",
        "CARDS_COUNT",
        "",
        "CARD_DETAILS",
        "NUMBER",
        "newInstance",
        "Lcom/dreamplug/androidapp/gating/NewOnboardAddCardFragment;",
        "data",
        "Lcom/dreamplug/androidapp/gating/NewOnboardAddCardFragment$AddVerifyCardLaunchData;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 684
    invoke-direct {p0}, Lo/setTitleMarginBottom$onPostMessage;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Lo/setTitleMarginBottom$extraCallback;)Lo/setTitleMarginBottom;
    .locals 5

    .line 686
    new-instance v0, Lo/setTitleMarginBottom;

    invoke-direct {v0}, Lo/setTitleMarginBottom;-><init>()V

    .line 687
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    .line 1704
    iget-object v2, p0, Lo/setTitleMarginBottom$extraCallback;->extraCallback:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    .line 689
    invoke-static {v2}, Lo/getMaxName;->onNavigationEvent(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v2

    const-string v3, "cardDetails"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2704
    iget-object v2, p0, Lo/setTitleMarginBottom$extraCallback;->onPostMessage:Ljava/lang/String;

    const-string v3, "SOURCE"

    .line 690
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3704
    iget-object v2, p0, Lo/setTitleMarginBottom$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, "NUMBER"

    .line 691
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4704
    iget-object v2, p0, Lo/setTitleMarginBottom$extraCallback;->onNavigationEvent:Ljava/lang/String;

    const-string/jumbo v4, "verify_card_trigger_action"

    .line 692
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5704
    iget p0, p0, Lo/setTitleMarginBottom$extraCallback;->onMessageChannelReady:I

    .line 693
    invoke-virtual {v1, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 695
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
