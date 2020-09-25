.class public final Lo/DismissConfig;
.super Lo/FabrikWebViewFragment$MyJavascriptInterface$showLoader$1$$special$$inlined$executeOnResume$1;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/StatementResponse$StatementDetails$AccountSummary$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/StatementResponse$StatementDetails$AccountSummary$onNavigationEvent;)V
    .locals 0

    invoke-direct {p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showLoader$1$$special$$inlined$executeOnResume$1;-><init>()V

    iput-object p1, p0, Lo/DismissConfig;->ICustomTabsCallback:Lo/StatementResponse$StatementDetails$AccountSummary$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/startFileDownload;)V
    .locals 2

    iget-object v0, p0, Lo/DismissConfig;->ICustomTabsCallback:Lo/StatementResponse$StatementDetails$AccountSummary$onNavigationEvent;

    new-instance v1, Lo/copyTextToClipboard;

    invoke-direct {v1, p1}, Lo/copyTextToClipboard;-><init>(Lo/startFileDownload;)V

    invoke-interface {v0, v1}, Lo/StatementResponse$StatementDetails$AccountSummary$onNavigationEvent;->onNavigationEvent(Lo/StatementResponse$StatementDetails$AccountSummary;)V

    return-void
.end method
