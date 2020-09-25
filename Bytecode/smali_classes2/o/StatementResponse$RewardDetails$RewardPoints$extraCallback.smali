.class public final Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/StatementResponse$RewardDetails$RewardPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/WheelSlabJsonAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/WheelSlabJsonAdapter;

    invoke-direct {v0}, Lo/WheelSlabJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/StatementResponse$RewardDetails$RewardPoints$extraCallback;->ICustomTabsCallback:Lo/WheelSlabJsonAdapter;

    const-string v1, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {v0, v1}, Lo/WheelSlabJsonAdapter;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method
