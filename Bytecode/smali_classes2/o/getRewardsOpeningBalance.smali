.class public final Lo/getRewardsOpeningBalance;
.super Ljava/lang/Object;


# instance fields
.field public final ICustomTabsCallback:Lo/WinDetailsItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/WinDetailsItem;

    invoke-direct {v0, p1}, Lo/WinDetailsItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/getRewardsOpeningBalance;->ICustomTabsCallback:Lo/WinDetailsItem;

    if-eqz p1, :cond_0

    return-void

    .line 1011
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Context cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
