.class public abstract Lo/StatementResponse$RewardDetails$extraCallback;
.super Lo/isFirstLaunchCalled;
.source ""

# interfaces
.implements Lo/StatementResponse$RewardDetails;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/StatementResponse$RewardDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/StatementResponse$RewardDetails$extraCallback$onPostMessage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    .line 1
    invoke-direct {p0, v0}, Lo/isFirstLaunchCalled;-><init>(Ljava/lang/String;)V

    return-void
.end method
