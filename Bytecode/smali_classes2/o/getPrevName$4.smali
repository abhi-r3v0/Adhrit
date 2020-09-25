.class final Lo/getPrevName$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPrevName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getPrevName;


# direct methods
.method constructor <init>(Lo/getPrevName;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lo/getPrevName$4;->onNavigationEvent:Lo/getPrevName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 171
    iget-object v0, p0, Lo/getPrevName$4;->onNavigationEvent:Lo/getPrevName;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lo/getPrevName$4;->onNavigationEvent:Lo/getPrevName;

    iget-boolean v1, v1, Lo/getPrevName;->onTransact:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lo/getPrevName$4;->onNavigationEvent:Lo/getPrevName;

    iget-boolean v4, v4, Lo/getPrevName;->onRelationshipValidationResult:Z

    or-int/2addr v1, v4

    if-eqz v1, :cond_1

    .line 173
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 177
    :cond_1
    :try_start_1
    iget-object v1, p0, Lo/getPrevName$4;->onNavigationEvent:Lo/getPrevName;

    invoke-virtual {v1}, Lo/getPrevName;->extraCallback()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 179
    :catch_0
    :try_start_2
    iget-object v1, p0, Lo/getPrevName$4;->onNavigationEvent:Lo/getPrevName;

    iput-boolean v3, v1, Lo/getPrevName;->asBinder:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    :goto_1
    :try_start_3
    iget-object v1, p0, Lo/getPrevName$4;->onNavigationEvent:Lo/getPrevName;

    .line 1600
    iget v4, v1, Lo/getPrevName;->ICustomTabsCallback$Stub:I

    const/16 v5, 0x7d0

    if-lt v4, v5, :cond_2

    iget v4, v1, Lo/getPrevName;->ICustomTabsCallback$Stub:I

    iget-object v1, v1, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    .line 1601
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-lt v4, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    .line 184
    iget-object v1, p0, Lo/getPrevName$4;->onNavigationEvent:Lo/getPrevName;

    invoke-virtual {v1}, Lo/getPrevName;->onPostMessage()V

    .line 185
    iget-object v1, p0, Lo/getPrevName$4;->onNavigationEvent:Lo/getPrevName;

    iput v2, v1, Lo/getPrevName;->ICustomTabsCallback$Stub:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 188
    :catch_1
    :try_start_4
    iget-object v1, p0, Lo/getPrevName$4;->onNavigationEvent:Lo/getPrevName;

    iput-boolean v3, v1, Lo/getPrevName;->newSession:Z

    .line 189
    iget-object v1, p0, Lo/getPrevName$4;->onNavigationEvent:Lo/getPrevName;

    invoke-static {}, Lo/warn;->extraCallback()Lo/exceptionStacktrace;

    move-result-object v2

    invoke-static {v2}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object v2

    iput-object v2, v1, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    .line 191
    :cond_3
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
