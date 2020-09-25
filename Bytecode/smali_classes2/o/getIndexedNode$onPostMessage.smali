.class final Lo/getIndexedNode$onPostMessage;
.super Lo/childMovedChange;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getIndexedNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation


# static fields
.field static final synthetic onMessageChannelReady:Z


# instance fields
.field final extraCallback:Lo/convertDouble;

.field final synthetic onPostMessage:Lo/getIndexedNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 155
    const-class v0, Lo/getIndexedNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/getIndexedNode$onPostMessage;->onMessageChannelReady:Z

    return-void
.end method

.method constructor <init>(Lo/getIndexedNode;Lo/convertDouble;)V
    .locals 2

    .line 158
    iput-object p1, p0, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 159
    invoke-virtual {p1}, Lo/getIndexedNode;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lo/childMovedChange;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iput-object p2, p0, Lo/getIndexedNode$onPostMessage;->extraCallback:Lo/convertDouble;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 7

    .line 199
    iget-object v0, p0, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    iget-object v0, v0, Lo/getIndexedNode;->onMessageChannelReady:Lo/getIndexedFilter;

    invoke-virtual {v0}, Lo/getIndexedFilter;->onMessageChannelReady()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 201
    :try_start_0
    iget-object v2, p0, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    invoke-virtual {v2}, Lo/getIndexedNode;->ICustomTabsCallback$Stub()Lo/childAddedChange;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 203
    :try_start_1
    iget-object v2, p0, Lo/getIndexedNode$onPostMessage;->extraCallback:Lo/convertDouble;

    iget-object v3, p0, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    invoke-interface {v2, v3, v1}, Lo/convertDouble;->onResponse(Lo/convertInteger;Lo/childAddedChange;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    iget-object v0, p0, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    iget-object v0, v0, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    .line 1390
    iget-object v0, v0, Lo/propertyName;->onPostMessage:Lo/convertBean;

    .line 2209
    iget-object v1, v0, Lo/convertBean;->ICustomTabsCallback:Ljava/util/Deque;

    invoke-virtual {v0, v1, p0}, Lo/convertBean;->ICustomTabsCallback(Ljava/util/Deque;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v1, v2

    const/4 v2, 0x0

    .line 214
    :goto_0
    :try_start_2
    iget-object v3, p0, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    .line 6131
    iget-object v3, v3, Lo/getIndexedNode;->extraCallback:Lo/getLimit;

    .line 7089
    iput-boolean v0, v3, Lo/getLimit;->ICustomTabsCallback:Z

    .line 7090
    iget-object v0, v3, Lo/getLimit;->extraCallback:Lo/getIndexEndValue;

    if-eqz v0, :cond_0

    .line 7091
    invoke-virtual {v0}, Lo/getIndexEndValue;->onPostMessage()V

    :cond_0
    if-nez v2, :cond_1

    .line 216
    new-instance v0, Ljava/io/IOException;

    const-string v2, "canceled due to "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lo/getIndexedNode$onPostMessage;->extraCallback:Lo/convertDouble;

    iget-object v3, p0, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    invoke-interface {v2, v3, v0}, Lo/convertDouble;->onFailure(Lo/convertInteger;Ljava/io/IOException;)V

    .line 219
    :cond_1
    throw v1

    :catch_1
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    .line 205
    :goto_1
    iget-object v2, p0, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    invoke-virtual {v2, v1}, Lo/getIndexedNode;->onMessageChannelReady(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 208
    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    move-result-object v0

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Callback failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    .line 2231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3143
    iget-object v6, v4, Lo/getIndexedNode;->extraCallback:Lo/getLimit;

    .line 4095
    iget-boolean v6, v6, Lo/getLimit;->ICustomTabsCallback:Z

    if-eqz v6, :cond_2

    const-string v6, "canceled "

    goto :goto_2

    :cond_2
    const-string v6, ""

    .line 2231
    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2232
    iget-boolean v6, v4, Lo/getIndexedNode;->onNavigationEvent:Z

    if-eqz v6, :cond_3

    const-string v6, "web socket"

    goto :goto_3

    :cond_3
    const-string v6, "call"

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2233
    invoke-virtual {v4}, Lo/getIndexedNode;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lo/getChildAfterChild;->onMessageChannelReady(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 210
    :cond_4
    iget-object v0, p0, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    invoke-static {v0}, Lo/getIndexedNode;->extraCallback(Lo/getIndexedNode;)Lo/resolveType;

    .line 211
    iget-object v0, p0, Lo/getIndexedNode$onPostMessage;->extraCallback:Lo/convertDouble;

    iget-object v2, p0, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    invoke-interface {v0, v2, v1}, Lo/convertDouble;->onFailure(Lo/convertInteger;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 221
    :goto_4
    iget-object v0, p0, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    iget-object v0, v0, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    .line 4390
    iget-object v0, v0, Lo/propertyName;->onPostMessage:Lo/convertBean;

    .line 5209
    iget-object v1, v0, Lo/convertBean;->ICustomTabsCallback:Ljava/util/Deque;

    invoke-virtual {v0, v1, p0}, Lo/convertBean;->ICustomTabsCallback(Ljava/util/Deque;Ljava/lang/Object;)V

    return-void

    :catchall_2
    move-exception v0

    .line 221
    iget-object v1, p0, Lo/getIndexedNode$onPostMessage;->onPostMessage:Lo/getIndexedNode;

    iget-object v1, v1, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    .line 7390
    iget-object v1, v1, Lo/propertyName;->onPostMessage:Lo/convertBean;

    .line 8209
    iget-object v2, v1, Lo/convertBean;->ICustomTabsCallback:Ljava/util/Deque;

    invoke-virtual {v1, v2, p0}, Lo/convertBean;->ICustomTabsCallback(Ljava/util/Deque;Ljava/lang/Object;)V

    .line 221
    throw v0
.end method
