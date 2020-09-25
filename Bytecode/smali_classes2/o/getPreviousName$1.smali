.class final Lo/getPreviousName$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/toLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPreviousName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/fullLimitUpdateChild;

.field private extraCallback:Z

.field private synthetic onNavigationEvent:Lo/addValueEventListener;

.field private synthetic onPostMessage:Lo/filtersNodes;


# direct methods
.method constructor <init>(Lo/fullLimitUpdateChild;Lo/addValueEventListener;Lo/filtersNodes;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lo/getPreviousName$1;->ICustomTabsCallback:Lo/fullLimitUpdateChild;

    iput-object p2, p0, Lo/getPreviousName$1;->onNavigationEvent:Lo/addValueEventListener;

    iput-object p3, p0, Lo/getPreviousName$1;->onPostMessage:Lo/filtersNodes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/updatePriority;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 174
    :try_start_0
    iget-object v1, p0, Lo/getPreviousName$1;->ICustomTabsCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v1, p1, p2, p3}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 184
    iget-boolean p1, p0, Lo/getPreviousName$1;->extraCallback:Z

    if-nez p1, :cond_0

    .line 185
    iput-boolean v0, p0, Lo/getPreviousName$1;->extraCallback:Z

    .line 186
    iget-object p1, p0, Lo/getPreviousName$1;->onPostMessage:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->close()V

    :cond_0
    return-wide v1

    .line 191
    :cond_1
    iget-object v0, p0, Lo/getPreviousName$1;->onPostMessage:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->extraCallback()Lo/updatePriority;

    move-result-object v3

    .line 1067
    iget-wide v0, p1, Lo/updatePriority;->ICustomTabsCallback:J

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    .line 191
    invoke-virtual/range {v2 .. v7}, Lo/updatePriority;->extraCallback(Lo/updatePriority;JJ)Lo/updatePriority;

    .line 192
    iget-object p1, p0, Lo/getPreviousName$1;->onPostMessage:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->extraCommand()Lo/filtersNodes;

    return-wide p2

    :catch_0
    move-exception p1

    .line 176
    iget-boolean p2, p0, Lo/getPreviousName$1;->extraCallback:Z

    if-nez p2, :cond_2

    .line 177
    iput-boolean v0, p0, Lo/getPreviousName$1;->extraCallback:Z

    .line 178
    iget-object p2, p0, Lo/getPreviousName$1;->onNavigationEvent:Lo/addValueEventListener;

    invoke-interface {p2}, Lo/addValueEventListener;->ICustomTabsCallback()V

    .line 180
    :cond_2
    throw p1
.end method

.method public final ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 197
    iget-object v0, p0, Lo/getPreviousName$1;->ICustomTabsCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-boolean v0, p0, Lo/getPreviousName$1;->extraCallback:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 202
    invoke-static {p0, v0}, Lo/generateEventsForType;->ICustomTabsCallback(Lo/toLog;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lo/getPreviousName$1;->extraCallback:Z

    .line 204
    iget-object v0, p0, Lo/getPreviousName$1;->onNavigationEvent:Lo/addValueEventListener;

    invoke-interface {v0}, Lo/addValueEventListener;->ICustomTabsCallback()V

    .line 206
    :cond_0
    iget-object v0, p0, Lo/getPreviousName$1;->ICustomTabsCallback:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->close()V

    return-void
.end method
