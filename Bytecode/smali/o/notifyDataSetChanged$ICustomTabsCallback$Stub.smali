.class public final Lo/notifyDataSetChanged$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/notifyDataSetChanged;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lclub/cred/credcurrency/CredPointCountModel;",
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/main/MainActivity$onCreate$10",
        "Landroidx/lifecycle/Observer;",
        "Lclub/cred/credcurrency/CredPointCountModel;",
        "onChanged",
        "",
        "it",
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
.method constructor <init>()V
    .locals 0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 299
    check-cast p1, Lclub/cred/credcurrency/CredPointCountModel;

    if-eqz p1, :cond_1

    .line 2010
    iget-object p1, p1, Lclub/cred/credcurrency/CredPointCountModel;->extraCallback:Ljava/util/Map;

    const-string v0, "COINS"

    .line 1302
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lclub/cred/credcurrency/CredPointModel;

    if-eqz p1, :cond_0

    .line 2012
    iget-wide v0, p1, Lclub/cred/credcurrency/CredPointModel;->ICustomTabsCallback:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 1303
    :goto_0
    sget-object p1, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {v0, v1}, Lo/getTrackTintMode;->onNavigationEvent(J)V

    :cond_1
    return-void
.end method
