.class final Lo/setExitTransition$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setExitTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/String;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field private synthetic extraCallback:Lo/setExitTransition;

.field private synthetic onPostMessage:Lo/toDebugString$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/setExitTransition;Lo/toDebugString$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lo/setExitTransition$onNavigationEvent;->extraCallback:Lo/setExitTransition;

    iput-object p2, p0, Lo/setExitTransition$onNavigationEvent;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 44
    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1155
    iget-object p1, p0, Lo/setExitTransition$onNavigationEvent;->extraCallback:Lo/setExitTransition;

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->etCreditCardExpiry:I

    invoke-virtual {p1, v0}, Lo/setExitTransition;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/updateSpecWithExtra;

    invoke-virtual {p1}, Lo/updateSpecWithExtra;->onPostMessage()Ljava/lang/String;

    move-result-object p1

    .line 1156
    iget-object v0, p0, Lo/setExitTransition$onNavigationEvent;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    iget-object v0, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lo/setExitTransition$onNavigationEvent;->extraCallback:Lo/setExitTransition;

    invoke-static {v0}, Lo/setExitTransition;->ICustomTabsCallback(Lo/setExitTransition;)V

    .line 1158
    iget-object v0, p0, Lo/setExitTransition$onNavigationEvent;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    iput-object p1, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 44
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
