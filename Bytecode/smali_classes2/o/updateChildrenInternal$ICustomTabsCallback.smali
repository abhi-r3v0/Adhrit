.class final Lo/updateChildrenInternal$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/updateChildrenInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:[Ljava/io/File;

.field asInterface:J

.field final extraCallback:[J

.field onMessageChannelReady:Z

.field final onNavigationEvent:[Ljava/io/File;

.field final onPostMessage:Ljava/lang/String;

.field private synthetic onRelationshipValidationResult:Lo/updateChildrenInternal;

.field onTransact:Lo/updateChildrenInternal$onPostMessage;


# direct methods
.method private constructor <init>(Lo/updateChildrenInternal;Ljava/lang/String;)V
    .locals 6

    .line 944
    iput-object p1, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->onRelationshipValidationResult:Lo/updateChildrenInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 945
    iput-object p2, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 947
    invoke-static {p1}, Lo/updateChildrenInternal;->asBinder(Lo/updateChildrenInternal;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->extraCallback:[J

    .line 948
    invoke-static {p1}, Lo/updateChildrenInternal;->asBinder(Lo/updateChildrenInternal;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->ICustomTabsCallback:[Ljava/io/File;

    .line 949
    invoke-static {p1}, Lo/updateChildrenInternal;->asBinder(Lo/updateChildrenInternal;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->onNavigationEvent:[Ljava/io/File;

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    .line 954
    :goto_0
    invoke-static {p1}, Lo/updateChildrenInternal;->asBinder(Lo/updateChildrenInternal;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 956
    iget-object v2, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->ICustomTabsCallback:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub(Lo/updateChildrenInternal;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const-string v2, ".tmp"

    .line 957
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    iget-object v2, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->onNavigationEvent:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub(Lo/updateChildrenInternal;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 959
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lo/updateChildrenInternal;Ljava/lang/String;B)V
    .locals 0

    .line 927
    invoke-direct {p0, p1, p2}, Lo/updateChildrenInternal$ICustomTabsCallback;-><init>(Lo/updateChildrenInternal;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final extraCallback(Lo/filtersNodes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 980
    iget-object v0, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->extraCallback:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    const/16 v5, 0x20

    .line 981
    invoke-interface {p1, v5}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lo/filtersNodes;->ICustomTabsCallback$Stub$Proxy(J)Lo/filtersNodes;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final onMessageChannelReady()Lo/updateChildrenInternal$onNavigationEvent;
    .locals 10

    .line 995
    iget-object v0, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->onRelationshipValidationResult:Lo/updateChildrenInternal;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 997
    iget-object v0, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->onRelationshipValidationResult:Lo/updateChildrenInternal;

    invoke-static {v0}, Lo/updateChildrenInternal;->asBinder(Lo/updateChildrenInternal;)I

    move-result v0

    new-array v0, v0, [Lo/toLog;

    .line 998
    iget-object v1, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->extraCallback:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [J

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 1000
    :goto_0
    :try_start_0
    iget-object v2, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->onRelationshipValidationResult:Lo/updateChildrenInternal;

    invoke-static {v2}, Lo/updateChildrenInternal;->asBinder(Lo/updateChildrenInternal;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1001
    iget-object v2, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->onRelationshipValidationResult:Lo/updateChildrenInternal;

    invoke-static {v2}, Lo/updateChildrenInternal;->onRelationshipValidationResult(Lo/updateChildrenInternal;)Lo/startAt;

    move-result-object v2

    iget-object v3, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->ICustomTabsCallback:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lo/startAt;->onPostMessage(Ljava/io/File;)Lo/toLog;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1003
    :cond_0
    new-instance v9, Lo/updateChildrenInternal$onNavigationEvent;

    iget-object v2, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->onRelationshipValidationResult:Lo/updateChildrenInternal;

    iget-object v3, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    iget-wide v4, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->asInterface:J

    move-object v1, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lo/updateChildrenInternal$onNavigationEvent;-><init>(Lo/updateChildrenInternal;Ljava/lang/String;J[Lo/toLog;[J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    nop

    .line 1006
    :goto_1
    iget-object v1, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->onRelationshipValidationResult:Lo/updateChildrenInternal;

    invoke-static {v1}, Lo/updateChildrenInternal;->asBinder(Lo/updateChildrenInternal;)I

    move-result v1

    if-ge v8, v1, :cond_1

    .line 1007
    aget-object v1, v0, v8

    if-eqz v1, :cond_1

    .line 1008
    aget-object v1, v0, v8

    invoke-static {v1}, Lo/createForTests;->onMessageChannelReady(Ljava/io/Closeable;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 995
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method final onMessageChannelReady([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 965
    array-length v0, p1

    iget-object v1, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->onRelationshipValidationResult:Lo/updateChildrenInternal;

    invoke-static {v1}, Lo/updateChildrenInternal;->asBinder(Lo/updateChildrenInternal;)I

    move-result v1

    const-string v2, "unexpected journal line: "

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 970
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 971
    iget-object v1, p0, Lo/updateChildrenInternal$ICustomTabsCallback;->extraCallback:[J

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 2986
    :catch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1986
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
