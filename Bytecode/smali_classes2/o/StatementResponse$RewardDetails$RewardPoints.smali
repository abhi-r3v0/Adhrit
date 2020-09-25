.class public final Lo/StatementResponse$RewardDetails$RewardPoints;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;
    }
.end annotation


# instance fields
.field public final onMessageChannelReady:Lo/WinAccessibility;


# direct methods
.method private constructor <init>(Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/WinAccessibility;

    .line 1000
    iget-object p1, p1, Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;->ICustomTabsCallback:Lo/WheelSlabJsonAdapter;

    invoke-direct {v0, p1}, Lo/WinAccessibility;-><init>(Lo/WheelSlabJsonAdapter;)V

    iput-object v0, p0, Lo/StatementResponse$RewardDetails$RewardPoints;->onMessageChannelReady:Lo/WinAccessibility;

    return-void
.end method

.method public synthetic constructor <init>(Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;B)V
    .locals 0

    invoke-direct {p0, p1}, Lo/StatementResponse$RewardDetails$RewardPoints;-><init>(Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;)V

    return-void
.end method
