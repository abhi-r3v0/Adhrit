.class public final Lo/FooterJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public static ICustomTabsCallback(Lo/PaymentModeListResponseJsonAdapter;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lo/getCta1;

    invoke-direct {v0, p1}, Lo/getCta1;-><init>(Ljava/lang/String;)V

    sget-object p1, Lo/Properties;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0, p1}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Lo/PaymentModeListResponseJsonAdapter;Lo/getText2;Ljava/util/concurrent/Executor;)V

    return-void
.end method
