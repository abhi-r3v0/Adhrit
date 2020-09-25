.class final Lo/AutoDebitRequestBody;
.super Ljava/lang/Object;


# instance fields
.field public final ICustomTabsCallback:Lo/AutoDebitRegistrationStatusResponse;

.field public final onNavigationEvent:J


# direct methods
.method public constructor <init>(Lo/AutoDebitRequestBodyJsonAdapter;Lo/AutoDebitRegistrationStatusResponse;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object p1

    invoke-interface {p1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    iput-wide v0, p0, Lo/AutoDebitRequestBody;->onNavigationEvent:J

    iput-object p2, p0, Lo/AutoDebitRequestBody;->ICustomTabsCallback:Lo/AutoDebitRegistrationStatusResponse;

    return-void
.end method
