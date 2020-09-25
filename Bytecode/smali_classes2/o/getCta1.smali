.class final Lo/getCta1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getText2;


# instance fields
.field private final synthetic onMessageChannelReady:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/getCta1;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    iget-object v1, p0, Lo/getCta1;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
