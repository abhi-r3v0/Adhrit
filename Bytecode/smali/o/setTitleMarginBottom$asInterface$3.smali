.class final Lo/setTitleMarginBottom$asInterface$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setTitleMarginBottom$asInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/setTitleMarginBottom$asInterface;


# direct methods
.method constructor <init>(Lo/setTitleMarginBottom$asInterface;)V
    .locals 0

    iput-object p1, p0, Lo/setTitleMarginBottom$asInterface$3;->onMessageChannelReady:Lo/setTitleMarginBottom$asInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 112
    iget-object v0, p0, Lo/setTitleMarginBottom$asInterface$3;->onMessageChannelReady:Lo/setTitleMarginBottom$asInterface;

    iget-object v0, v0, Lo/setTitleMarginBottom$asInterface;->onNavigationEvent:Lo/setTitleMarginBottom;

    invoke-static {v0}, Lo/setTitleMarginBottom;->extraCallback(Lo/setTitleMarginBottom;)Lo/setTitleMarginStart;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 112
    new-instance v1, Lo/getThumbTintList;

    new-instance v9, Lo/setTitleMarginStart$extraCallback;

    const-string v3, "COINS_INTRO_FRAGMENT"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v1, v9}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
