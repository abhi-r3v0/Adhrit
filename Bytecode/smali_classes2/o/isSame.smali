.class final Lo/isSame;
.super Ljava/lang/Object;

# interfaces
.implements Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$1$$special$$inlined$executeOnResume$1;


# instance fields
.field private final synthetic extraCallback:Lo/GreetingCampaignCodeRequest;


# direct methods
.method constructor <init>(Lo/DeviceAttrResponse;Lo/GreetingCampaignCodeRequest;)V
    .locals 0

    iput-object p2, p0, Lo/isSame;->extraCallback:Lo/GreetingCampaignCodeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/AssetJsonAdapter;)V
    .locals 1

    iget-object v0, p0, Lo/isSame;->extraCallback:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v0, v0, Lo/setCardBackgroundView;->IPostMessageService:Ljava/lang/String;

    iput-object v0, p1, Lo/AssetJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method
