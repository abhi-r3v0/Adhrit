.class public final Lo/NBAAckResponse;
.super Lo/FabrikWebViewFragment$MyJavascriptInterface$updateProfilePicture$1$$special$$inlined$executeOnResume$1;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/getCurrentPurchaseValue$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/getCurrentPurchaseValue$onNavigationEvent;)V
    .locals 0

    invoke-direct {p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$updateProfilePicture$1$$special$$inlined$executeOnResume$1;-><init>()V

    iput-object p1, p0, Lo/NBAAckResponse;->onNavigationEvent:Lo/getCurrentPurchaseValue$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/openGameRewards;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/NBAAckResponse;->onNavigationEvent:Lo/getCurrentPurchaseValue$onNavigationEvent;

    invoke-static {p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;->extraCallback(Lo/openGameRewards;)Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lo/getCurrentPurchaseValue$onNavigationEvent;->onNavigationEvent(Lo/getCurrentPurchaseValue;Ljava/lang/String;)V

    return-void
.end method
