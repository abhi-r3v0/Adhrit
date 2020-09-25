.class final Lo/removeEventCallback$onMessageChannelReady$onPostMessage;
.super Lo/removeEventCallback$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeEventCallback$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\n\u0010\r\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState;",
        "Lkotlin/io/FileTreeWalk$DirectoryState;",
        "rootDir",
        "Ljava/io/File;",
        "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V",
        "failed",
        "",
        "fileIndex",
        "",
        "fileList",
        "",
        "[Ljava/io/File;",
        "rootVisited",
        "step",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private synthetic asBinder:Lo/removeEventCallback$onMessageChannelReady;

.field private onMessageChannelReady:Z

.field private onNavigationEvent:I

.field private onPostMessage:[Ljava/io/File;


# direct methods
.method public constructor <init>(Lo/removeEventCallback$onMessageChannelReady;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "rootDir"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lo/removeEventCallback$onMessageChannelReady$onPostMessage;->asBinder:Lo/removeEventCallback$onMessageChannelReady;

    invoke-direct {p0, p2}, Lo/removeEventCallback$onNavigationEvent;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Ljava/io/File;
    .locals 7

    .line 129
    iget-boolean v0, p0, Lo/removeEventCallback$onMessageChannelReady$onPostMessage;->ICustomTabsCallback:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/removeEventCallback$onMessageChannelReady$onPostMessage;->onPostMessage:[Ljava/io/File;

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lo/removeEventCallback$onMessageChannelReady$onPostMessage;->asBinder:Lo/removeEventCallback$onMessageChannelReady;

    iget-object v0, v0, Lo/removeEventCallback$onMessageChannelReady;->onMessageChannelReady:Lo/removeEventCallback;

    .line 1037
    iget-object v0, v0, Lo/removeEventCallback;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v3, p0, Lo/removeEventCallback$extraCallback;->extraCallback:Ljava/io/File;

    .line 130
    invoke-interface {v0, v3}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 2053
    :cond_0
    iget-object v0, p0, Lo/removeEventCallback$extraCallback;->extraCallback:Ljava/io/File;

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lo/removeEventCallback$onMessageChannelReady$onPostMessage;->onPostMessage:[Ljava/io/File;

    if-nez v0, :cond_2

    .line 136
    iget-object v0, p0, Lo/removeEventCallback$onMessageChannelReady$onPostMessage;->asBinder:Lo/removeEventCallback$onMessageChannelReady;

    iget-object v0, v0, Lo/removeEventCallback$onMessageChannelReady;->onMessageChannelReady:Lo/removeEventCallback;

    .line 3037
    iget-object v0, v0, Lo/removeEventCallback;->onPostMessage:Lo/nextTransactionOrder;

    if-eqz v0, :cond_1

    .line 3053
    iget-object v3, p0, Lo/removeEventCallback$extraCallback;->extraCallback:Ljava/io/File;

    .line 136
    new-instance v4, Lkotlin/io/AccessDeniedException;

    .line 4053
    iget-object v5, p0, Lo/removeEventCallback$extraCallback;->extraCallback:Ljava/io/File;

    const-string v6, "Cannot list files in a directory"

    .line 136
    invoke-direct {v4, v5, v6}, Lkotlin/io/AccessDeniedException;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v3, v4}, Lo/nextTransactionOrder;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_1
    iput-boolean v2, p0, Lo/removeEventCallback$onMessageChannelReady$onPostMessage;->ICustomTabsCallback:Z

    .line 140
    :cond_2
    iget-object v0, p0, Lo/removeEventCallback$onMessageChannelReady$onPostMessage;->onPostMessage:[Ljava/io/File;

    if-eqz v0, :cond_5

    iget v3, p0, Lo/removeEventCallback$onMessageChannelReady$onPostMessage;->onNavigationEvent:I

    if-nez v0, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    array-length v0, v0

    if-ge v3, v0, :cond_5

    .line 142
    iget-object v0, p0, Lo/removeEventCallback$onMessageChannelReady$onPostMessage;->onPostMessage:[Ljava/io/File;

    if-nez v0, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    iget v1, p0, Lo/removeEventCallback$onMessageChannelReady$onPostMessage;->onNavigationEvent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/removeEventCallback$onMessageChannelReady$onPostMessage;->onNavigationEvent:I

    aget-object v0, v0, v1

    return-object v0

    .line 143
    :cond_5
    iget-boolean v0, p0, Lo/removeEventCallback$onMessageChannelReady$onPostMessage;->onMessageChannelReady:Z

    if-nez v0, :cond_6

    .line 145
    iput-boolean v2, p0, Lo/removeEventCallback$onMessageChannelReady$onPostMessage;->onMessageChannelReady:Z

    .line 5053
    iget-object v0, p0, Lo/removeEventCallback$extraCallback;->extraCallback:Ljava/io/File;

    return-object v0

    .line 149
    :cond_6
    iget-object v0, p0, Lo/removeEventCallback$onMessageChannelReady$onPostMessage;->asBinder:Lo/removeEventCallback$onMessageChannelReady;

    iget-object v0, v0, Lo/removeEventCallback$onMessageChannelReady;->onMessageChannelReady:Lo/removeEventCallback;

    .line 6037
    iget-object v0, v0, Lo/removeEventCallback;->extraCallback:Lo/onDisconnectSetValue;

    if-eqz v0, :cond_7

    .line 6053
    iget-object v2, p0, Lo/removeEventCallback$extraCallback;->extraCallback:Ljava/io/File;

    .line 149
    invoke-interface {v0, v2}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v1
.end method
