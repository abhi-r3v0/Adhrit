.class final Lo/ClaimedResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onNavigationEvent:Lo/ClaimedRewardDetailsResponse;


# direct methods
.method constructor <init>(Lo/ClaimedRewardDetailsResponse;)V
    .locals 0

    iput-object p1, p0, Lo/ClaimedResponse;->onNavigationEvent:Lo/ClaimedRewardDetailsResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/ClaimedResponse;->onNavigationEvent:Lo/ClaimedRewardDetailsResponse;

    invoke-static {v0}, Lo/ClaimedRewardDetailsResponse;->onPostMessage(Lo/ClaimedRewardDetailsResponse;)V

    return-void
.end method
