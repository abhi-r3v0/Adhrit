.class final Lo/removeAllTabs$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/removeAllTabs;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lcom/cred/pay/repository/models/PreferredInstruments;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/cred/pay/repository/models/PreferredInstruments;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/removeAllTabs;


# direct methods
.method constructor <init>(Lo/removeAllTabs;)V
    .locals 0

    iput-object p1, p0, Lo/removeAllTabs$extraCallback;->extraCallback:Lo/removeAllTabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 19
    check-cast p1, Lcom/cred/pay/repository/models/PreferredInstruments;

    if-eqz p1, :cond_0

    .line 1034
    iget-object v0, p0, Lo/removeAllTabs$extraCallback;->extraCallback:Lo/removeAllTabs;

    invoke-static {v0, p1}, Lo/removeAllTabs;->onPostMessage(Lo/removeAllTabs;Lcom/cred/pay/repository/models/PreferredInstruments;)V

    return-void

    .line 1036
    :cond_0
    iget-object p1, p0, Lo/removeAllTabs$extraCallback;->extraCallback:Lo/removeAllTabs;

    .line 2021
    iget-object p1, p1, Lo/removeAllTabs;->onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;

    .line 1036
    sget-object v0, Lo/removeAllTabs$onPostMessage$onPostMessage;->onNavigationEvent:Lo/removeAllTabs$onPostMessage$onPostMessage;

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
