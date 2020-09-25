.class final Lo/removeEventCallback$onMessageChannelReady$ICustomTabsCallback;
.super Lo/removeEventCallback$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeEventCallback$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;",
        "Lkotlin/io/FileTreeWalk$WalkState;",
        "rootFile",
        "Ljava/io/File;",
        "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V",
        "visited",
        "",
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


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "rootFile"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, p1}, Lo/removeEventCallback$extraCallback;-><init>(Ljava/io/File;)V

    .line 200
    sget-boolean v0, Lo/hasCompleteWrite;->onPostMessage:Z

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    sget-boolean v0, Lo/hasCompleteWrite;->onPostMessage:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "rootFile must be verified to be file beforehand."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Ljava/io/File;
    .locals 1

    .line 205
    iget-boolean v0, p0, Lo/removeEventCallback$onMessageChannelReady$ICustomTabsCallback;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lo/removeEventCallback$onMessageChannelReady$ICustomTabsCallback;->ICustomTabsCallback:Z

    .line 1053
    iget-object v0, p0, Lo/removeEventCallback$extraCallback;->extraCallback:Ljava/io/File;

    return-object v0
.end method
