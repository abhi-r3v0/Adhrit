.class public Lo/clearLog;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/clearLog$onPostMessage;,
        Lo/clearLog$onMessageChannelReady;,
        Lo/clearLog$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final hashes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final posts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ExecutorUtils$2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ExecutorUtils$2;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 36
    iput-object p1, p0, Lo/clearLog;->posts:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lo/clearLog;->hashes:Ljava/util/List;

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of posts need to be n-1 for n hashes in CompoundHash"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$500(Lo/LogFileManager$DirectoryProvider;Lo/clearLog$onPostMessage;)V
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lo/clearLog;->processNode(Lo/LogFileManager$DirectoryProvider;Lo/clearLog$onPostMessage;)V

    return-void
.end method

.method public static fromNode(Lo/LogFileManager$DirectoryProvider;)Lo/clearLog;
    .locals 1

    .line 203
    new-instance v0, Lo/clearLog$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/clearLog$onMessageChannelReady;-><init>(Lo/LogFileManager$DirectoryProvider;)V

    invoke-static {p0, v0}, Lo/clearLog;->fromNode(Lo/LogFileManager$DirectoryProvider;Lo/clearLog$onNavigationEvent;)Lo/clearLog;

    move-result-object p0

    return-object p0
.end method

.method public static fromNode(Lo/LogFileManager$DirectoryProvider;Lo/clearLog$onNavigationEvent;)Lo/clearLog;
    .locals 1

    .line 207
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    new-instance p0, Lo/clearLog;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/clearLog;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0

    .line 210
    :cond_0
    new-instance v0, Lo/clearLog$onPostMessage;

    invoke-direct {v0, p1}, Lo/clearLog$onPostMessage;-><init>(Lo/clearLog$onNavigationEvent;)V

    .line 211
    invoke-static {p0, v0}, Lo/clearLog;->processNode(Lo/LogFileManager$DirectoryProvider;Lo/clearLog$onPostMessage;)V

    .line 212
    invoke-static {v0}, Lo/clearLog$onPostMessage;->access$000(Lo/clearLog$onPostMessage;)V

    .line 213
    new-instance p0, Lo/clearLog;

    invoke-static {v0}, Lo/clearLog$onPostMessage;->access$100(Lo/clearLog$onPostMessage;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0}, Lo/clearLog$onPostMessage;->access$200(Lo/clearLog$onPostMessage;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/clearLog;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method private static processNode(Lo/LogFileManager$DirectoryProvider;Lo/clearLog$onPostMessage;)V
    .locals 1

    .line 218
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    check-cast p0, Lo/getWorkingFileForSession;

    invoke-static {p1, p0}, Lo/clearLog$onPostMessage;->access$300(Lo/clearLog$onPostMessage;Lo/getWorkingFileForSession;)V

    return-void

    .line 220
    :cond_0
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    instance-of v0, p0, Lo/setCurrentSession;

    if-eqz v0, :cond_1

    .line 226
    check-cast p0, Lo/setCurrentSession;

    .line 227
    new-instance v0, Lo/clearLog$4;

    invoke-direct {v0, p1}, Lo/clearLog$4;-><init>(Lo/clearLog$onPostMessage;)V

    const/4 p1, 0x1

    .line 236
    invoke-virtual {p0, v0, p1}, Lo/setCurrentSession;->forEachChild(Lo/setCurrentSession$ICustomTabsCallback;Z)V

    return-void

    .line 224
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Expected children node, but got: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 221
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t calculate hash on empty node!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getHashes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lo/clearLog;->hashes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/ExecutorUtils$2;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/clearLog;->posts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
