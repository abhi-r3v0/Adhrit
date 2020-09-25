.class public final Lo/onReset$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onRelationshipValidationResult"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/addcard/NewAddCardDialogFragment$Companion;",
        "",
        "()V",
        "CARD_DETAILS",
        "",
        "CARD_LINK_ENABLED",
        "",
        "INSTRUMENT_ID",
        "NAME",
        "newInstance",
        "Lcom/dreamplug/fabrik/ui/control/addcard/NewAddCardDialogFragment;",
        "data",
        "Lcom/dreamplug/fabrik/ui/control/addcard/NewAddCardDialogFragment$AddVerifyCardLaunchData;",
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

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 578
    invoke-direct {p0}, Lo/onReset$onRelationshipValidationResult;-><init>()V

    return-void
.end method

.method public static extraCallback(Lo/onReset$extraCallback;)Lo/onReset;
    .locals 4

    .line 580
    new-instance v0, Lo/onReset;

    invoke-direct {v0}, Lo/onReset;-><init>()V

    .line 581
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    .line 1597
    iget-object v2, p0, Lo/onReset$extraCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 583
    invoke-static {v2}, Lo/getMaxName;->onNavigationEvent(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v2

    const-string v3, "cardDetails"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2597
    iget-object v2, p0, Lo/onReset$extraCallback;->onPostMessage:Ljava/lang/String;

    const-string v3, "SOURCE"

    .line 584
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3597
    iget-object p0, p0, Lo/onReset$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "instrumentId"

    .line 585
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
