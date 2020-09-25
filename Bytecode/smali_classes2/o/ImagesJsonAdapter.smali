.class final synthetic Lo/ImagesJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$1$$special$$inlined$executeOnResume$1;


# static fields
.field static final onNavigationEvent:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$1$$special$$inlined$executeOnResume$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ImagesJsonAdapter;

    invoke-direct {v0}, Lo/ImagesJsonAdapter;-><init>()V

    sput-object v0, Lo/ImagesJsonAdapter;->onNavigationEvent:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$1$$special$$inlined$executeOnResume$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/AssetJsonAdapter;)V
    .locals 1

    iget-object p1, p1, Lo/AssetJsonAdapter;->onNavigationEvent:Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/Integer;

    return-void
.end method
