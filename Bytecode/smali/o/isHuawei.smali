.class final Lo/isHuawei;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onMessageChannelReady:Lo/getCampaign;

.field private final onNavigationEvent:Lo/w$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/w$onMessageChannelReady;Lo/getCampaign;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/isHuawei;->onNavigationEvent:Lo/w$onMessageChannelReady;

    iput-object p2, p0, Lo/isHuawei;->onMessageChannelReady:Lo/getCampaign;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/isHuawei;->onNavigationEvent:Lo/w$onMessageChannelReady;

    iget-object v1, p0, Lo/isHuawei;->onMessageChannelReady:Lo/getCampaign;

    .line 1000
    invoke-virtual {v0, v1}, Lo/w$onMessageChannelReady;->extraCallback(Lo/getCampaign;)V

    return-void
.end method