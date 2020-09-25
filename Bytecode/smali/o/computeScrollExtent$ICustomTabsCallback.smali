.class public final Lo/computeScrollExtent$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeScrollExtent;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$Companion;",
        "",
        "()V",
        "getInstance",
        "Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment;",
        "reward",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
        "position",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 499
    invoke-direct {p0}, Lo/computeScrollExtent$ICustomTabsCallback;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;I)Lo/computeScrollExtent;
    .locals 2

    .line 501
    new-instance v0, Lo/computeScrollExtent;

    invoke-direct {v0}, Lo/computeScrollExtent;-><init>()V

    .line 1068
    iput-object p0, v0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 504
    move-object p0, v0

    check-cast p0, Landroidx/fragment/app/Fragment;

    new-instance v1, Lo/computeScrollExtent$onNavigationEvent;

    invoke-direct {v1, p1}, Lo/computeScrollExtent$onNavigationEvent;-><init>(I)V

    check-cast v1, Landroid/os/Parcelable;

    const-string p1, "extra"

    .line 2016
    invoke-static {p0, v1, p1}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    return-object v0
.end method
