.class public final Lo/FeatureResponseModelJsonAdapter;
.super Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Landroid/os/Bundle;)V
    .locals 0

    const-string p1, "AdOverlayParcel is null or does not contain valid overlay type."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    const/4 p1, 0x3

    iput p1, p0, Lo/FeatureResponseModelJsonAdapter;->extraCallback:I

    iget-object p1, p0, Lo/FeatureResponseModelJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
