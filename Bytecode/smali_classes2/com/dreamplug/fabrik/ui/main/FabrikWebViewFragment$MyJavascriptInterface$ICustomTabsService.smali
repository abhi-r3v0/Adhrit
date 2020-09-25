.class final Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$MyJavascriptInterface$ICustomTabsService;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$MyJavascriptInterface;->shareText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onPostMessage:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$MyJavascriptInterface;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$MyJavascriptInterface;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$MyJavascriptInterface$ICustomTabsService;->onPostMessage:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$MyJavascriptInterface;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$MyJavascriptInterface$ICustomTabsService;->onMessageChannelReady:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 7

    .line 1553
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$MyJavascriptInterface$ICustomTabsService;->onPostMessage:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$MyJavascriptInterface;

    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$MyJavascriptInterface;->this$0:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$MyJavascriptInterface$ICustomTabsService;->onMessageChannelReady:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1d

    invoke-static/range {v1 .. v6}, Lo/extraCallback;->extraCallback(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 318
    :cond_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
