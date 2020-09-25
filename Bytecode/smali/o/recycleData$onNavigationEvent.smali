.class final Lo/recycleData$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/recycleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/recycleData;


# direct methods
.method constructor <init>(Lo/recycleData;)V
    .locals 0

    iput-object p1, p0, Lo/recycleData$onNavigationEvent;->onNavigationEvent:Lo/recycleData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    iget-object p1, p0, Lo/recycleData$onNavigationEvent;->onNavigationEvent:Lo/recycleData;

    .line 2015
    iget-object p1, p1, Lo/recycleData;->ICustomTabsCallback:Lo/createAbtInstance;

    .line 1051
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1052
    iget-object p1, p0, Lo/recycleData$onNavigationEvent;->onNavigationEvent:Lo/recycleData;

    .line 2021
    iget-object p1, p1, Lo/recycleData;->onPostMessage:Lo/getServerTime;

    if-eqz p1, :cond_0

    .line 1052
    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    .line 15
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
