.class final synthetic Lo/GreetingCampaignResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final extraCallback:Lo/GreetingCampaignInvitesResponseJsonAdapter;


# direct methods
.method constructor <init>(Lo/GreetingCampaignInvitesResponseJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/GreetingCampaignResponseJsonAdapter;->extraCallback:Lo/GreetingCampaignInvitesResponseJsonAdapter;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/GreetingCampaignResponseJsonAdapter;->extraCallback:Lo/GreetingCampaignInvitesResponseJsonAdapter;

    invoke-virtual {v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->newSession()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
