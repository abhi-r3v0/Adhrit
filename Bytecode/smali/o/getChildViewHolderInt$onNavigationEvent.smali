.class public final Lo/getChildViewHolderInt$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChildViewHolderInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineFragment$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineFragment;",
        "winMachineData",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineFragment$WinMachineData;",
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

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 458
    invoke-direct {p0}, Lo/getChildViewHolderInt$onNavigationEvent;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady(Lo/getChildViewHolderInt$onMessageChannelReady;)Lo/getChildViewHolderInt;
    .locals 3

    const-string/jumbo v0, "winMachineData"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    new-instance v0, Lo/getChildViewHolderInt;

    invoke-direct {v0}, Lo/getChildViewHolderInt;-><init>()V

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    check-cast p0, Landroid/os/Parcelable;

    const-string v2, "extra"

    .line 1016
    invoke-static {v1, p0, v2}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    return-object v0
.end method
