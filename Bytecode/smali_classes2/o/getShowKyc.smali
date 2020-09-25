.class public final Lo/getShowKyc;
.super Ljava/lang/Object;


# instance fields
.field private onNavigationEvent:Lo/EmiScreenResponse$ScreenData;


# direct methods
.method private constructor <init>(Lo/EmiScreenResponse$ScreenData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getShowKyc;->onNavigationEvent:Lo/EmiScreenResponse$ScreenData;

    return-void
.end method

.method static final onMessageChannelReady(Lo/EmiScreenResponse$ScreenData;)Lo/getShowKyc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lo/EmiScreenResponse$ScreenData;->onMessageChannelReady()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lo/getShowKyc;

    invoke-direct {v0, p0}, Lo/getShowKyc;-><init>(Lo/EmiScreenResponse$ScreenData;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final onNavigationEvent()Lo/EmiScreenResponse$ScreenData;
    .locals 1

    iget-object v0, p0, Lo/getShowKyc;->onNavigationEvent:Lo/EmiScreenResponse$ScreenData;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/getShowKyc;->onNavigationEvent:Lo/EmiScreenResponse$ScreenData;

    invoke-static {v0}, Lo/getCenter;->extraCallback(Lo/EmiScreenResponse$ScreenData;)Lo/EmiScreenResponse$StashDetails;

    move-result-object v0

    invoke-virtual {v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
