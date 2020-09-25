.class public final Lo/PointsServiceCurrency;
.super Ljava/lang/Object;


# instance fields
.field private extraCallback:Z

.field private onPostMessage:Lo/MoshiGradientTypeAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lo/PointsServiceCurrency;->extraCallback:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lo/PointsServiceCurrency;->onPostMessage:Lo/MoshiGradientTypeAdapter;

    return-void
.end method
