.class final Lo/OfferCategory;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/BankOfferRewardResponse;


# direct methods
.method constructor <init>(Lo/BankOfferRewardResponse;)V
    .locals 0

    iput-object p1, p0, Lo/OfferCategory;->extraCallback:Lo/BankOfferRewardResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/OfferCategory;->extraCallback:Lo/BankOfferRewardResponse;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "surfaceDestroyed"

    invoke-static {v0, v2, v1}, Lo/BankOfferRewardResponse;->extraCallback(Lo/BankOfferRewardResponse;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
