.class public final Lo/Metadata;
.super Lo/CampaignResponse;
.source ""


# instance fields
.field private ICustomTabsCallback:Lo/DataCampaignJsonAdapter;

.field private extraCallback:J

.field private onPostMessage:J


# direct methods
.method public constructor <init>(Lo/DataCampaignJsonAdapter;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Lo/CampaignResponse;-><init>()V

    const-wide/16 v0, -0x1

    .line 20
    iput-wide v0, p0, Lo/Metadata;->onPostMessage:J

    .line 22
    iput-wide v0, p0, Lo/Metadata;->extraCallback:J

    .line 28
    iput-object p1, p0, Lo/Metadata;->ICustomTabsCallback:Lo/DataCampaignJsonAdapter;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lo/Metadata;->onPostMessage:J

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 2

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lo/Metadata;->extraCallback:J

    .line 40
    iget-object p3, p0, Lo/Metadata;->ICustomTabsCallback:Lo/DataCampaignJsonAdapter;

    if-eqz p3, :cond_0

    .line 41
    iget-wide v0, p0, Lo/Metadata;->onPostMessage:J

    sub-long/2addr p1, v0

    invoke-interface {p3, p1, p2}, Lo/DataCampaignJsonAdapter;->extraCallback(J)V

    :cond_0
    return-void
.end method
