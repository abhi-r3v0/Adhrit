.class final Lo/NBAAckResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Ljava/lang/String;

.field private final synthetic onMessageChannelReady:J

.field private final synthetic onNavigationEvent:Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lo/NBAAckResponseJsonAdapter;->onNavigationEvent:Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    iput-object p2, p0, Lo/NBAAckResponseJsonAdapter;->extraCallback:Ljava/lang/String;

    iput-wide p3, p0, Lo/NBAAckResponseJsonAdapter;->onMessageChannelReady:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lo/NBAAckResponseJsonAdapter;->onNavigationEvent:Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    invoke-static {v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lo/NBAAckResponseJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-wide v2, p0, Lo/NBAAckResponseJsonAdapter;->onMessageChannelReady:J

    invoke-virtual {v0, v1, v2, v3}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->ICustomTabsCallback(Ljava/lang/String;J)V

    iget-object v0, p0, Lo/NBAAckResponseJsonAdapter;->onNavigationEvent:Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    invoke-static {v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1$extraCallback;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method
