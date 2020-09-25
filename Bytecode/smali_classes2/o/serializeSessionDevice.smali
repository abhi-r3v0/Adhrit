.class public final Lo/serializeSessionDevice;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/serializeSessionDevice$ICustomTabsCallback;,
        Lo/serializeSessionDevice$extraCallback;,
        Lo/serializeSessionDevice$onPostMessage;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/setHijackHash;

.field private asBinder:I

.field private extraCallback:I

.field onMessageChannelReady:I

.field final onNavigationEvent:Lo/updateChildrenInternal;

.field onPostMessage:I

.field private onRelationshipValidationResult:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 1

    .line 168
    sget-object v0, Lo/startAt;->onPostMessage:Lo/startAt;

    invoke-direct {p0, p1, p2, p3, v0}, Lo/serializeSessionDevice;-><init>(Ljava/io/File;JLo/startAt;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;JLo/startAt;)V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lo/serializeSessionDevice$2;

    invoke-direct {v0, p0}, Lo/serializeSessionDevice$2;-><init>(Lo/serializeSessionDevice;)V

    iput-object v0, p0, Lo/serializeSessionDevice;->ICustomTabsCallback:Lo/setHijackHash;

    .line 172
    invoke-static {p4, p1, p2, p3}, Lo/updateChildrenInternal;->onMessageChannelReady(Lo/startAt;Ljava/io/File;J)Lo/updateChildrenInternal;

    move-result-object p1

    iput-object p1, p0, Lo/serializeSessionDevice;->onNavigationEvent:Lo/updateChildrenInternal;

    return-void
.end method

.method static onMessageChannelReady(Lo/fullLimitUpdateChild;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 681
    :try_start_0
    invoke-interface {p0}, Lo/fullLimitUpdateChild;->ICustomTabsService()J

    move-result-wide v0

    .line 682
    invoke-interface {p0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 683
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    long-to-int p0, v0

    return p0

    .line 684
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "expected an int but was \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 688
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/fromException;)Lo/removeValue;
    .locals 9

    .line 2066
    iget-object v0, p1, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1176
    invoke-static {v0}, Lo/createForTests;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 184
    :try_start_0
    iget-object v2, p0, Lo/serializeSessionDevice;->onNavigationEvent:Lo/updateChildrenInternal;

    invoke-virtual {v2, v0}, Lo/updateChildrenInternal;->onMessageChannelReady(Ljava/lang/String;)Lo/updateChildrenInternal$onNavigationEvent;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    return-object v1

    .line 194
    :cond_0
    :try_start_1
    new-instance v2, Lo/serializeSessionDevice$extraCallback;

    .line 2794
    iget-object v3, v0, Lo/updateChildrenInternal$onNavigationEvent;->onMessageChannelReady:[Lo/toLog;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 194
    invoke-direct {v2, v3}, Lo/serializeSessionDevice$extraCallback;-><init>(Lo/toLog;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3661
    iget-object v3, v2, Lo/serializeSessionDevice$extraCallback;->ICustomTabsCallback$Stub:Lo/getRef;

    .line 5061
    iget-object v3, v3, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    const-string v5, "Content-Length"

    invoke-static {v3, v5}, Lo/getRef;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3662
    new-instance v5, Lo/fromException$onNavigationEvent;

    invoke-direct {v5}, Lo/fromException$onNavigationEvent;-><init>()V

    iget-object v6, v2, Lo/serializeSessionDevice$extraCallback;->extraCallback:Ljava/lang/String;

    .line 3663
    invoke-virtual {v5, v6}, Lo/fromException$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    move-result-object v5

    iget-object v6, v2, Lo/serializeSessionDevice$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 3664
    invoke-virtual {v5, v6}, Lo/fromException$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    move-result-object v5

    iget-object v6, v2, Lo/serializeSessionDevice$extraCallback;->onPostMessage:Lo/getRef;

    .line 6121
    new-instance v7, Lo/getRef$ICustomTabsCallback;

    invoke-direct {v7}, Lo/getRef$ICustomTabsCallback;-><init>()V

    .line 6214
    iget-object v8, v7, Lo/getRef$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    .line 6122
    iget-object v6, v6, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    invoke-static {v8, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 5208
    iput-object v7, v5, Lo/fromException$onNavigationEvent;->onNavigationEvent:Lo/getRef$ICustomTabsCallback;

    .line 6277
    iget-object v6, v5, Lo/fromException$onNavigationEvent;->onPostMessage:Lo/fromCode;

    if-eqz v6, :cond_3

    .line 6278
    new-instance v6, Lo/fromException;

    invoke-direct {v6, v5, v4}, Lo/fromException;-><init>(Lo/fromException$onNavigationEvent;B)V

    .line 3667
    new-instance v5, Lo/removeValue$onPostMessage;

    invoke-direct {v5}, Lo/removeValue$onPostMessage;-><init>()V

    .line 7251
    iput-object v6, v5, Lo/removeValue$onPostMessage;->extraCallback:Lo/fromException;

    .line 3668
    iget-object v6, v2, Lo/serializeSessionDevice$extraCallback;->ICustomTabsCallback:Lo/toException;

    .line 7256
    iput-object v6, v5, Lo/removeValue$onPostMessage;->onNavigationEvent:Lo/toException;

    .line 3669
    iget v6, v2, Lo/serializeSessionDevice$extraCallback;->onNavigationEvent:I

    .line 7261
    iput v6, v5, Lo/removeValue$onPostMessage;->ICustomTabsCallback:I

    .line 3670
    iget-object v6, v2, Lo/serializeSessionDevice$extraCallback;->onRelationshipValidationResult:Ljava/lang/String;

    .line 7266
    iput-object v6, v5, Lo/removeValue$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 3671
    iget-object v6, v2, Lo/serializeSessionDevice$extraCallback;->ICustomTabsCallback$Stub:Lo/getRef;

    .line 8121
    new-instance v7, Lo/getRef$ICustomTabsCallback;

    invoke-direct {v7}, Lo/getRef$ICustomTabsCallback;-><init>()V

    .line 8214
    iget-object v8, v7, Lo/getRef$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    .line 8122
    iget-object v6, v6, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    invoke-static {v8, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 7300
    iput-object v7, v5, Lo/removeValue$onPostMessage;->asBinder:Lo/getRef$ICustomTabsCallback;

    .line 3672
    new-instance v6, Lo/serializeSessionDevice$ICustomTabsCallback;

    invoke-direct {v6, v0, v3}, Lo/serializeSessionDevice$ICustomTabsCallback;-><init>(Lo/updateChildrenInternal$onNavigationEvent;Ljava/lang/String;)V

    .line 8305
    iput-object v6, v5, Lo/removeValue$onPostMessage;->ICustomTabsCallback$Stub:Lo/updateChildren;

    .line 3673
    iget-object v0, v2, Lo/serializeSessionDevice$extraCallback;->asBinder:Lo/getChildren;

    .line 9271
    iput-object v0, v5, Lo/removeValue$onPostMessage;->onPostMessage:Lo/getChildren;

    .line 3675
    invoke-virtual {v5}, Lo/removeValue$onPostMessage;->extraCallback()Lo/removeValue;

    move-result-object v0

    .line 9654
    iget-object v3, v2, Lo/serializeSessionDevice$extraCallback;->extraCallback:Ljava/lang/String;

    .line 10066
    iget-object v5, p1, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9654
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lo/serializeSessionDevice$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 10070
    iget-object v5, p1, Lo/fromException;->extraCallback:Ljava/lang/String;

    .line 9655
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lo/serializeSessionDevice$extraCallback;->onPostMessage:Lo/getRef;

    .line 9656
    invoke-static {v0, v2, p1}, Lo/removeEventRegistration;->onMessageChannelReady(Lo/removeValue;Lo/getRef;Lo/fromException;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-nez v4, :cond_2

    .line 10130
    iget-object p1, v0, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    .line 203
    invoke-static {p1}, Lo/createForTests;->onMessageChannelReady(Ljava/io/Closeable;)V

    return-object v1

    :cond_2
    return-object v0

    .line 6277
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :catch_0
    invoke-static {v0}, Lo/createForTests;->onMessageChannelReady(Ljava/io/Closeable;)V

    :catch_1
    return-object v1
.end method

.method final extraCallback(Lo/removeValue;)Lo/addValueEventListener;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11075
    iget-object v0, p1, Lo/removeValue;->extraCallback:Lo/fromException;

    .line 12070
    iget-object v0, v0, Lo/fromException;->extraCallback:Ljava/lang/String;

    .line 12075
    iget-object v1, p1, Lo/removeValue;->extraCallback:Lo/fromException;

    .line 13070
    iget-object v1, v1, Lo/fromException;->extraCallback:Ljava/lang/String;

    .line 213
    invoke-static {v1}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 13075
    :try_start_0
    iget-object p1, p1, Lo/removeValue;->extraCallback:Lo/fromException;

    .line 13248
    iget-object v0, p0, Lo/serializeSessionDevice;->onNavigationEvent:Lo/updateChildrenInternal;

    .line 15066
    iget-object p1, p1, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14176
    invoke-static {p1}, Lo/createForTests;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13248
    invoke-virtual {v0, p1}, Lo/updateChildrenInternal;->ICustomTabsCallback(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v2

    :cond_0
    const-string v1, "GET"

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    .line 228
    :cond_1
    invoke-static {p1}, Lo/removeEventRegistration;->extraCallback(Lo/removeValue;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    .line 232
    :cond_2
    new-instance v0, Lo/serializeSessionDevice$extraCallback;

    invoke-direct {v0, p1}, Lo/serializeSessionDevice$extraCallback;-><init>(Lo/removeValue;)V

    .line 235
    :try_start_1
    iget-object v1, p0, Lo/serializeSessionDevice;->onNavigationEvent:Lo/updateChildrenInternal;

    .line 15075
    iget-object p1, p1, Lo/removeValue;->extraCallback:Lo/fromException;

    .line 16066
    iget-object p1, p1, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15176
    invoke-static {p1}, Lo/createForTests;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v3, -0x1

    .line 16446
    invoke-virtual {v1, p1, v3, v4}, Lo/updateChildrenInternal;->extraCallback(Ljava/lang/String;J)Lo/updateChildrenInternal$onPostMessage;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_3

    return-object v2

    .line 239
    :cond_3
    :try_start_2
    invoke-virtual {v0, p1}, Lo/serializeSessionDevice$extraCallback;->onMessageChannelReady(Lo/updateChildrenInternal$onPostMessage;)V

    .line 240
    new-instance v0, Lo/serializeSessionDevice$onPostMessage;

    invoke-direct {v0, p0, p1}, Lo/serializeSessionDevice$onPostMessage;-><init>(Lo/serializeSessionDevice;Lo/updateChildrenInternal$onPostMessage;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_1
    move-object p1, v2

    :catch_2
    if-eqz p1, :cond_4

    .line 17270
    :try_start_3
    invoke-virtual {p1}, Lo/updateChildrenInternal$onPostMessage;->onMessageChannelReady()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_4
    return-object v2
.end method

.method final declared-synchronized onNavigationEvent()V
    .locals 1

    monitor-enter p0

    .line 408
    :try_start_0
    iget v0, p0, Lo/serializeSessionDevice;->onRelationshipValidationResult:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/serializeSessionDevice;->onRelationshipValidationResult:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized onPostMessage(Lo/validateQueryEndpoints;)V
    .locals 1

    monitor-enter p0

    .line 395
    :try_start_0
    iget v0, p0, Lo/serializeSessionDevice;->asBinder:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/serializeSessionDevice;->asBinder:I

    .line 397
    iget-object v0, p1, Lo/validateQueryEndpoints;->onMessageChannelReady:Lo/fromException;

    if-eqz v0, :cond_0

    .line 399
    iget p1, p0, Lo/serializeSessionDevice;->extraCallback:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/serializeSessionDevice;->extraCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 401
    :cond_0
    :try_start_1
    iget-object p1, p1, Lo/validateQueryEndpoints;->ICustomTabsCallback:Lo/removeValue;

    if-eqz p1, :cond_1

    .line 403
    iget p1, p0, Lo/serializeSessionDevice;->onRelationshipValidationResult:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/serializeSessionDevice;->onRelationshipValidationResult:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
