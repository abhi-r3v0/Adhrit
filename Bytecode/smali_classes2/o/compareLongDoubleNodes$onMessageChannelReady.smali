.class final Lo/compareLongDoubleNodes$onMessageChannelReady;
.super Lo/getChildKey;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/compareLongDoubleNodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final extraCallback:Lo/isFiltered;

.field private final onNavigationEvent:J


# direct methods
.method constructor <init>(Lo/isFiltered;J)V
    .locals 0

    .line 253
    invoke-direct {p0}, Lo/getChildKey;-><init>()V

    .line 254
    iput-object p1, p0, Lo/compareLongDoubleNodes$onMessageChannelReady;->extraCallback:Lo/isFiltered;

    .line 255
    iput-wide p2, p0, Lo/compareLongDoubleNodes$onMessageChannelReady;->onNavigationEvent:J

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    .line 263
    iget-wide v0, p0, Lo/compareLongDoubleNodes$onMessageChannelReady;->onNavigationEvent:J

    return-wide v0
.end method

.method public final onMessageChannelReady()Lo/fullLimitUpdateChild;
    .locals 2

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onNavigationEvent()Lo/isFiltered;
    .locals 1

    .line 259
    iget-object v0, p0, Lo/compareLongDoubleNodes$onMessageChannelReady;->extraCallback:Lo/isFiltered;

    return-object v0
.end method
