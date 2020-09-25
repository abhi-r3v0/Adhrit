.class final synthetic Lo/RewardCountModel;
.super Ljava/lang/Object;

# interfaces
.implements Lo/UploadFilters;


# instance fields
.field private final onMessageChannelReady:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

.field private final onPostMessage:Lo/LifestyleComponentAsset;


# direct methods
.method constructor <init>(Lo/LifestyleComponentAsset;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/RewardCountModel;->onPostMessage:Lo/LifestyleComponentAsset;

    iput-object p2, p0, Lo/RewardCountModel;->onMessageChannelReady:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 2

    iget-object v0, p0, Lo/RewardCountModel;->onPostMessage:Lo/LifestyleComponentAsset;

    iget-object v1, p0, Lo/RewardCountModel;->onMessageChannelReady:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v1, v1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-virtual {v0, v1}, Lo/LifestyleComponentAsset;->extraCallback(Lo/LifestyleTemplateProperties;)V

    return-void
.end method
