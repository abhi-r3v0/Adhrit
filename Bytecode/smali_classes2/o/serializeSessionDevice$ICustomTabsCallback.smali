.class final Lo/serializeSessionDevice$ICustomTabsCallback;
.super Lo/updateChildren;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/serializeSessionDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final extraCallback:Lo/fullLimitUpdateChild;

.field final onMessageChannelReady:Lo/updateChildrenInternal$onNavigationEvent;

.field private final onNavigationEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/updateChildrenInternal$onNavigationEvent;Ljava/lang/String;)V
    .locals 1

    .line 699
    invoke-direct {p0}, Lo/updateChildren;-><init>()V

    .line 700
    iput-object p1, p0, Lo/serializeSessionDevice$ICustomTabsCallback;->onMessageChannelReady:Lo/updateChildrenInternal$onNavigationEvent;

    .line 702
    iput-object p2, p0, Lo/serializeSessionDevice$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    .line 1794
    iget-object p2, p1, Lo/updateChildrenInternal$onNavigationEvent;->onMessageChannelReady:[Lo/toLog;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    .line 705
    new-instance v0, Lo/serializeSessionDevice$ICustomTabsCallback$3;

    invoke-direct {v0, p2, p1}, Lo/serializeSessionDevice$ICustomTabsCallback$3;-><init>(Lo/toLog;Lo/updateChildrenInternal$onNavigationEvent;)V

    invoke-static {v0}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object p1

    iput-object p1, p0, Lo/serializeSessionDevice$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/fullLimitUpdateChild;
    .locals 1

    .line 726
    iget-object v0, p0, Lo/serializeSessionDevice$ICustomTabsCallback;->extraCallback:Lo/fullLimitUpdateChild;

    return-object v0
.end method

.method public final onMessageChannelReady()J
    .locals 3

    const-wide/16 v0, -0x1

    .line 719
    :try_start_0
    iget-object v2, p0, Lo/serializeSessionDevice$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo/serializeSessionDevice$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method
