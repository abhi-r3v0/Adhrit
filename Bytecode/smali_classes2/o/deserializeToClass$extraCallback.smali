.class final Lo/deserializeToClass$extraCallback;
.super Lo/getChildKey;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/deserializeToClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final extraCallback:Lo/fullLimitUpdateChild;

.field final onMessageChannelReady:Lo/getPrevName$extraCallback;

.field private final onNavigationEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/getPrevName$extraCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 744
    invoke-direct {p0}, Lo/getChildKey;-><init>()V

    .line 745
    iput-object p1, p0, Lo/deserializeToClass$extraCallback;->onMessageChannelReady:Lo/getPrevName$extraCallback;

    .line 746
    iput-object p2, p0, Lo/deserializeToClass$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 747
    iput-object p3, p0, Lo/deserializeToClass$extraCallback;->onNavigationEvent:Ljava/lang/String;

    .line 1816
    iget-object p2, p1, Lo/getPrevName$extraCallback;->ICustomTabsCallback:[Lo/toLog;

    const/4 p3, 0x1

    aget-object p2, p2, p3

    .line 750
    new-instance p3, Lo/deserializeToClass$extraCallback$4;

    invoke-direct {p3, p2, p1}, Lo/deserializeToClass$extraCallback$4;-><init>(Lo/toLog;Lo/getPrevName$extraCallback;)V

    invoke-static {p3}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object p1

    iput-object p1, p0, Lo/deserializeToClass$extraCallback;->extraCallback:Lo/fullLimitUpdateChild;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 3

    const-wide/16 v0, -0x1

    .line 764
    :try_start_0
    iget-object v2, p0, Lo/deserializeToClass$extraCallback;->onNavigationEvent:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo/deserializeToClass$extraCallback;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public final onMessageChannelReady()Lo/fullLimitUpdateChild;
    .locals 1

    .line 771
    iget-object v0, p0, Lo/deserializeToClass$extraCallback;->extraCallback:Lo/fullLimitUpdateChild;

    return-object v0
.end method

.method public final onNavigationEvent()Lo/isFiltered;
    .locals 1

    .line 759
    iget-object v0, p0, Lo/deserializeToClass$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo/isFiltered;->ICustomTabsCallback(Ljava/lang/String;)Lo/isFiltered;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
