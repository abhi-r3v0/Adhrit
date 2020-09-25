.class public Lo/getRewardsEarned;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getRewardsEarned$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public final extraCallback:Landroid/content/Context;

.field public final onNavigationEvent:Lo/PayoutClaimSlotMachineResponse;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/PayoutClaimSlotMachineResponse;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/getRewardsEarned;-><init>(Landroid/content/Context;Lo/PayoutClaimSlotMachineResponse;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lo/PayoutClaimSlotMachineResponse;B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getRewardsEarned;->extraCallback:Landroid/content/Context;

    iput-object p2, p0, Lo/getRewardsEarned;->onNavigationEvent:Lo/PayoutClaimSlotMachineResponse;

    return-void
.end method
