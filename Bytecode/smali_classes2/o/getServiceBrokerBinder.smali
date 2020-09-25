.class final Lo/getServiceBrokerBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zzf;


# instance fields
.field private final synthetic onNavigationEvent:Lo/getMobileAdsSettingsManager;


# direct methods
.method constructor <init>(Lo/getMobileAdsSettingsManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getServiceBrokerBinder;->onNavigationEvent:Lo/getMobileAdsSettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)B
    .locals 1

    .line 3
    iget-object v0, p0, Lo/getServiceBrokerBinder;->onNavigationEvent:Lo/getMobileAdsSettingsManager;

    invoke-virtual {v0, p1}, Lo/getMobileAdsSettingsManager;->extraCallback(I)B

    move-result p1

    return p1
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 2
    iget-object v0, p0, Lo/getServiceBrokerBinder;->onNavigationEvent:Lo/getMobileAdsSettingsManager;

    invoke-virtual {v0}, Lo/getMobileAdsSettingsManager;->onNavigationEvent()I

    move-result v0

    return v0
.end method
