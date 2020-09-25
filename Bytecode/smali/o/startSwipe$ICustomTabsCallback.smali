.class public final Lo/startSwipe$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/startSwipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/SeeScheduleDialog$Companion;",
        "",
        "()V",
        "TYPE",
        "",
        "getInstance",
        "Lcom/dreamplug/fabrik/ui/lending/dialog/SeeScheduleDialog;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$SeeScheduleDialogExtra;",
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

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lo/startSwipe$ICustomTabsCallback;-><init>()V

    return-void
.end method

.method public static extraCallback(Lo/onDetach$cancelAll;)Lo/startSwipe;
    .locals 3

    const-string v0, "extra"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v1, Lo/startSwipe;

    invoke-direct {v1}, Lo/startSwipe;-><init>()V

    .line 133
    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/Fragment;

    check-cast p0, Landroid/os/Parcelable;

    .line 1016
    invoke-static {v2, p0, v0}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    return-object v1
.end method
