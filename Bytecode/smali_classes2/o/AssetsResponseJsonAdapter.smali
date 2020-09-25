.class final synthetic Lo/AssetsResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$1$$special$$inlined$executeOnResume$1;


# instance fields
.field private final extraCallback:Lo/GradientResponseModel;


# direct methods
.method constructor <init>(Lo/GradientResponseModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AssetsResponseJsonAdapter;->extraCallback:Lo/GradientResponseModel;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/AssetJsonAdapter;)V
    .locals 1

    iget-object v0, p0, Lo/AssetsResponseJsonAdapter;->extraCallback:Lo/GradientResponseModel;

    invoke-virtual {v0, p1}, Lo/GradientResponseModel;->ICustomTabsCallback(Lo/AssetJsonAdapter;)V

    return-void
.end method
