.class final Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Boolean;)V"
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

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onRelationshipValidationResult;->onPostMessage:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 93
    check-cast p1, Ljava/lang/Boolean;

    .line 1989
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1990
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onRelationshipValidationResult;->onPostMessage:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->extraCallback(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;Z)V

    .line 1991
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onRelationshipValidationResult;->onPostMessage:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    invoke-static {p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1992
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onRelationshipValidationResult;->onPostMessage:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    invoke-static {p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onNavigationEvent(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)Lo/onActivityResult;

    move-result-object p1

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onRelationshipValidationResult;->onPostMessage:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onRelationshipValidationResult;->onPostMessage:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1302d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "resources.getString(R.string.lost_connection_desc)"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    .line 2031
    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "text"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2032
    sget v3, Lo/preferLastSpan$ICustomTabsCallback$Stub;->error_toast_layout:I

    invoke-virtual {p1, v1, v2, v0, v3}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void

    .line 1994
    :cond_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onRelationshipValidationResult;->onPostMessage:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->extraCallback(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;Z)V

    :cond_1
    return-void
.end method
