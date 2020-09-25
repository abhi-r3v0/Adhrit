.class public final Lo/DataListItemJsonAdapter;
.super Lo/FabrikWebViewFragment$MyJavascriptInterface$showKeyBoard$1$$special$$inlined$executeOnResume$1;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final onPostMessage:Lo/getAvailableCreditLimit$onPostMessage;


# direct methods
.method public constructor <init>(Lo/getAvailableCreditLimit$onPostMessage;)V
    .locals 0

    invoke-direct {p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showKeyBoard$1$$special$$inlined$executeOnResume$1;-><init>()V

    iput-object p1, p0, Lo/DataListItemJsonAdapter;->onPostMessage:Lo/getAvailableCreditLimit$onPostMessage;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/viesRequest;)V
    .locals 2

    iget-object v0, p0, Lo/DataListItemJsonAdapter;->onPostMessage:Lo/getAvailableCreditLimit$onPostMessage;

    new-instance v1, Lo/openGameUI;

    invoke-direct {v1, p1}, Lo/openGameUI;-><init>(Lo/viesRequest;)V

    invoke-interface {v0, v1}, Lo/getAvailableCreditLimit$onPostMessage;->ICustomTabsCallback(Lo/getAvailableCreditLimit;)V

    return-void
.end method
