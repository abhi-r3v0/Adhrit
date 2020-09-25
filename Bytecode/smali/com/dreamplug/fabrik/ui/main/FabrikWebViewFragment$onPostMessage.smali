.class final Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;-><init>()V
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
        "Ljava/lang/Integer;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "authState",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Integer;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onPostMessage;->onPostMessage:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 93
    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return-void

    .line 1287
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    .line 1288
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onPostMessage;->onPostMessage:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    .line 2097
    sget-object v0, Lo/OperationCanceledException;->onNavigationEvent:Lo/checkCompatWrapper;

    if-eqz v0, :cond_1

    .line 1288
    invoke-interface {v0}, Lo/checkCompatWrapper;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;Ljava/lang/String;)V

    .line 1289
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onPostMessage;->onPostMessage:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    invoke-static {p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->extraCallback(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1290
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onPostMessage;->onPostMessage:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    .line 3094
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onNavigationEvent:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string/jumbo v2, "url"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1290
    :cond_2
    invoke-virtual {v0, v1, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onPostMessage;->onPostMessage:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->extraCallback()V

    :cond_3
    return-void
.end method
