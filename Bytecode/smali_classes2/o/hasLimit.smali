.class public final Lo/hasLimit;
.super Lo/getChildKey;
.source ""


# instance fields
.field private final ICustomTabsCallback:J

.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Lo/fullLimitUpdateChild;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLo/fullLimitUpdateChild;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/getChildKey;-><init>()V

    .line 34
    iput-object p1, p0, Lo/hasLimit;->extraCallback:Ljava/lang/String;

    .line 35
    iput-wide p2, p0, Lo/hasLimit;->ICustomTabsCallback:J

    .line 36
    iput-object p4, p0, Lo/hasLimit;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lo/hasLimit;->ICustomTabsCallback:J

    return-wide v0
.end method

.method public final onMessageChannelReady()Lo/fullLimitUpdateChild;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/hasLimit;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    return-object v0
.end method

.method public final onNavigationEvent()Lo/isFiltered;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/hasLimit;->extraCallback:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo/isFiltered;->ICustomTabsCallback(Ljava/lang/String;)Lo/isFiltered;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
