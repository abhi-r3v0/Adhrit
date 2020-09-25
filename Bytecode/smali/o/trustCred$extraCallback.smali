.class final Lo/trustCred$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/trustCred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:J

.field public final onMessageChannelReady:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1459
    iput-wide p1, p0, Lo/trustCred$extraCallback;->ICustomTabsCallback:J

    .line 1460
    iput p3, p0, Lo/trustCred$extraCallback;->onMessageChannelReady:I

    return-void
.end method
