.class final Lo/onActivityPostResumed$ICustomTabsCallback$Stub$Proxy;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityPostResumed;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onPostMessage:Lo/onActivityPostResumed;


# direct methods
.method constructor <init>(Lo/onActivityPostResumed;)V
    .locals 0

    iput-object p1, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/onActivityPostResumed;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 52
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1194
    iget-object p1, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/onActivityPostResumed;

    const/4 v0, 0x0

    const-string v1, "link_email_skip_click"

    const/4 v2, 0x6

    invoke-static {p1, v1, v0, v0, v2}, Lo/onActivityPostResumed;->extraCallback(Lo/onActivityPostResumed;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lo/onSupportContentChanged;

    .line 1195
    iget-object p1, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/onActivityPostResumed;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/onActivityPostResumed;->onNavigationEvent(Z)V

    .line 52
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
