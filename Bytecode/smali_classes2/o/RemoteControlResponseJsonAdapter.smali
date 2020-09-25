.class public final Lo/RemoteControlResponseJsonAdapter;
.super Lo/MenuScrollHandler$1;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final extraCallback:Lo/getCurrentPurchaseValue$onPostMessage;


# direct methods
.method public constructor <init>(Lo/getCurrentPurchaseValue$onPostMessage;)V
    .locals 0

    invoke-direct {p0}, Lo/MenuScrollHandler$1;-><init>()V

    iput-object p1, p0, Lo/RemoteControlResponseJsonAdapter;->extraCallback:Lo/getCurrentPurchaseValue$onPostMessage;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/openGameRewards;)V
    .locals 1

    iget-object v0, p0, Lo/RemoteControlResponseJsonAdapter;->extraCallback:Lo/getCurrentPurchaseValue$onPostMessage;

    invoke-static {p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;->extraCallback(Lo/openGameRewards;)Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/getCurrentPurchaseValue$onPostMessage;->extraCallback(Lo/getCurrentPurchaseValue;)V

    return-void
.end method
