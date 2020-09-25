.class final synthetic Lo/GradientResponseModelJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$1$$special$$inlined$executeOnResume$1;


# instance fields
.field private final onMessageChannelReady:Lo/TimerConfigJsonAdapter;


# direct methods
.method constructor <init>(Lo/TimerConfigJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/GradientResponseModelJsonAdapter;->onMessageChannelReady:Lo/TimerConfigJsonAdapter;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/AssetJsonAdapter;)V
    .locals 1

    iget-object v0, p0, Lo/GradientResponseModelJsonAdapter;->onMessageChannelReady:Lo/TimerConfigJsonAdapter;

    iget-object p1, p1, Lo/AssetJsonAdapter;->onMessageChannelReady:Lo/UserSelectionRequestModel;

    iput-object v0, p1, Lo/UserSelectionRequestModel;->extraCallback:Lo/TimerConfigJsonAdapter;

    return-void
.end method
