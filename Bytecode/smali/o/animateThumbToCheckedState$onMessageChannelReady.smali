.class public final Lo/animateThumbToCheckedState$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateThumbToCheckedState;->extraCallback(Lo/onSessionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0017\u0010\u0008\u001a\u00020\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0002\u0010\u0006R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0002X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0007\u001a\u0004\u0008\u0003\u0010\u0004\"\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/androidapp/data/repository/maintainence/MaintenanceManager$attach$1",
        "Landroidx/lifecycle/Observer;",
        "",
        "isUnderMaintenance",
        "()Ljava/lang/Boolean;",
        "setUnderMaintenance",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "onChanged",
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
.field private onMessageChannelReady:Ljava/lang/Boolean;

.field private synthetic onNavigationEvent:Lo/onSessionEvent;


# direct methods
.method constructor <init>(Lo/onSessionEvent;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lo/animateThumbToCheckedState$onMessageChannelReady;->onNavigationEvent:Lo/onSessionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 73
    check-cast p1, Ljava/lang/Boolean;

    .line 1076
    iget-object v0, p0, Lo/animateThumbToCheckedState$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1077
    iput-object p1, p0, Lo/animateThumbToCheckedState$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Boolean;

    .line 1078
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1079
    iget-object p1, p0, Lo/animateThumbToCheckedState$onMessageChannelReady;->onNavigationEvent:Lo/onSessionEvent;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/animateThumbToCheckedState$onMessageChannelReady;->onNavigationEvent:Lo/onSessionEvent;

    check-cast v1, Landroid/content/Context;

    const-class v2, Lo/Toolbar$SavedState;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 1080
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1079
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
