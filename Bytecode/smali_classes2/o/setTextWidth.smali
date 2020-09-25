.class final Lo/setTextWidth;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onNavigationEvent:Lo/FabrikWebViewFragment$MyJavascriptInterface;


# direct methods
.method constructor <init>(Lo/FabrikWebViewFragment$MyJavascriptInterface;)V
    .locals 0

    iput-object p1, p0, Lo/setTextWidth;->onNavigationEvent:Lo/FabrikWebViewFragment$MyJavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/setTextWidth;->onNavigationEvent:Lo/FabrikWebViewFragment$MyJavascriptInterface;

    invoke-static {v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface;)Lo/logout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setTextWidth;->onNavigationEvent:Lo/FabrikWebViewFragment$MyJavascriptInterface;

    invoke-static {v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface;)Lo/logout;

    move-result-object v0

    invoke-interface {v0}, Lo/logout;->ICustomTabsCallback$Stub()V

    iget-object v0, p0, Lo/setTextWidth;->onNavigationEvent:Lo/FabrikWebViewFragment$MyJavascriptInterface;

    invoke-static {v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface;)Lo/logout;

    move-result-object v0

    invoke-interface {v0}, Lo/logout;->onTransact()V

    iget-object v0, p0, Lo/setTextWidth;->onNavigationEvent:Lo/FabrikWebViewFragment$MyJavascriptInterface;

    invoke-static {v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface;)Lo/logout;

    move-result-object v0

    invoke-interface {v0}, Lo/logout;->warmup()V

    :cond_0
    iget-object v0, p0, Lo/setTextWidth;->onNavigationEvent:Lo/FabrikWebViewFragment$MyJavascriptInterface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/FabrikWebViewFragment$MyJavascriptInterface;->ICustomTabsCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface;Lo/logout;)Lo/logout;

    return-void
.end method
