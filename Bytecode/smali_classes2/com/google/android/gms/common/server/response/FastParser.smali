.class public final Lcom/google/android/gms/common/server/response/FastParser;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/server/response/FastParser$ParseException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 536
    new-instance v0, Lo/getPerceivedValue;

    invoke-direct {v0}, Lo/getPerceivedValue;-><init>()V

    .line 537
    new-instance v0, Lo/getComputedMaxValue;

    invoke-direct {v0}, Lo/getComputedMaxValue;-><init>()V

    .line 538
    new-instance v0, Lo/getEndTime;

    invoke-direct {v0}, Lo/getEndTime;-><init>()V

    .line 539
    new-instance v0, Lo/getStartTime;

    invoke-direct {v0}, Lo/getStartTime;-><init>()V

    .line 540
    new-instance v0, Lo/getExpiryString;

    invoke-direct {v0}, Lo/getExpiryString;-><init>()V

    .line 541
    new-instance v0, Lo/getShowStoreAssociations;

    invoke-direct {v0}, Lo/getShowStoreAssociations;-><init>()V

    .line 542
    new-instance v0, Lo/getRewardId;

    invoke-direct {v0}, Lo/getRewardId;-><init>()V

    .line 543
    new-instance v0, Lo/getRedemptionType;

    invoke-direct {v0}, Lo/getRedemptionType;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    return-void
.end method
