.class public final Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$lambda$1$1;
.super Lo/setPieList;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;

.field private final extraCallback:Ljava/lang/String;

.field private final onNavigationEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lo/setPieList;-><init>()V

    iput-object p1, p0, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$lambda$1$1;->ICustomTabsCallback:Lo/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;

    iput-object p2, p0, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$lambda$1$1;->onNavigationEvent:Ljava/lang/String;

    iput-object p3, p0, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$lambda$1$1;->extraCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    iget-object v0, p0, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$lambda$1$1;->ICustomTabsCallback:Lo/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;->extraCallback()V

    return-void
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$lambda$1$1;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final extraCallback(Lo/getEventName;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$lambda$1$1;->ICustomTabsCallback:Lo/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {v0, p1}, Lo/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;->ICustomTabsCallback(Landroid/view/View;)V

    return-void
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$lambda$1$1;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage()V
    .locals 1

    iget-object v0, p0, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$lambda$1$1;->ICustomTabsCallback:Lo/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BureauReportNotFoundFragment$updateDobPan$1$onFailure$$inlined$executeOnResume$1;->onMessageChannelReady()V

    return-void
.end method
