.class final Lo/ReferralBottomSheetResponse;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onNavigationEvent:Lo/SectionJsonAdapter;


# direct methods
.method constructor <init>(Lo/SectionJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/ReferralBottomSheetResponse;->onNavigationEvent:Lo/SectionJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lo/ReferralBottomSheetResponse;->onNavigationEvent:Lo/SectionJsonAdapter;

    iget-object v0, v0, Lo/SectionJsonAdapter;->ICustomTabsCallback:Lo/ReferralBottomSheetBackgroundJsonAdapter;

    iget-object v1, p0, Lo/ReferralBottomSheetResponse;->onNavigationEvent:Lo/SectionJsonAdapter;

    iget-object v1, v1, Lo/SectionJsonAdapter;->extraCallback:Lo/RedeemInitiatedRewardDetailsResponseJsonAdapter;

    iget-object v2, p0, Lo/ReferralBottomSheetResponse;->onNavigationEvent:Lo/SectionJsonAdapter;

    iget-object v2, v2, Lo/SectionJsonAdapter;->onPostMessage:Landroid/webkit/WebView;

    iget-object v3, p0, Lo/ReferralBottomSheetResponse;->onNavigationEvent:Lo/SectionJsonAdapter;

    iget-boolean v3, v3, Lo/SectionJsonAdapter;->onNavigationEvent:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Lo/ReferralBottomSheetBackgroundJsonAdapter;->ICustomTabsCallback(Lo/RedeemInitiatedRewardDetailsResponseJsonAdapter;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method
