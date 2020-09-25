.class Lo/getInstallerPackageName;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getInstallerPackageName$onMessageChannelReady;,
        Lo/getInstallerPackageName$onPostMessage;
    }
.end annotation


# instance fields
.field private children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/LogFileManager;",
            "Lo/getInstallerPackageName;",
            ">;"
        }
    .end annotation
.end field

.field private value:Lo/LogFileManager$DirectoryProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lo/getInstallerPackageName;->value:Lo/LogFileManager$DirectoryProvider;

    .line 30
    iput-object v0, p0, Lo/getInstallerPackageName;->children:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public forEachChild(Lo/getInstallerPackageName$onMessageChannelReady;)V
    .locals 3

    .line 127
    iget-object v0, p0, Lo/getInstallerPackageName;->children:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/LogFileManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getInstallerPackageName;

    invoke-interface {p1, v2, v1}, Lo/getInstallerPackageName$onMessageChannelReady;->visitChild(Lo/LogFileManager;Lo/getInstallerPackageName;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forEachTree(Lo/ExecutorUtils$2;Lo/getInstallerPackageName$onPostMessage;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lo/getInstallerPackageName;->value:Lo/LogFileManager$DirectoryProvider;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {p2, p1, v0}, Lo/getInstallerPackageName$onPostMessage;->visitTree(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    return-void

    .line 116
    :cond_0
    new-instance v0, Lo/getInstallerPackageName$1;

    invoke-direct {v0, p0, p1, p2}, Lo/getInstallerPackageName$1;-><init>(Lo/getInstallerPackageName;Lo/ExecutorUtils$2;Lo/getInstallerPackageName$onPostMessage;)V

    invoke-virtual {p0, v0}, Lo/getInstallerPackageName;->forEachChild(Lo/getInstallerPackageName$onMessageChannelReady;)V

    return-void
.end method

.method public forget(Lo/ExecutorUtils$2;)Z
    .locals 5

    .line 63
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 64
    iput-object v2, p0, Lo/getInstallerPackageName;->value:Lo/LogFileManager$DirectoryProvider;

    .line 65
    iput-object v2, p0, Lo/getInstallerPackageName;->children:Ljava/util/Map;

    return v1

    .line 68
    :cond_0
    iget-object v0, p0, Lo/getInstallerPackageName;->value:Lo/LogFileManager$DirectoryProvider;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 69
    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 73
    :cond_1
    iget-object v0, p0, Lo/getInstallerPackageName;->value:Lo/LogFileManager$DirectoryProvider;

    check-cast v0, Lo/setCurrentSession;

    .line 74
    iput-object v2, p0, Lo/getInstallerPackageName;->value:Lo/LogFileManager$DirectoryProvider;

    .line 76
    new-instance v1, Lo/getInstallerPackageName$3;

    invoke-direct {v1, p0, p1}, Lo/getInstallerPackageName$3;-><init>(Lo/getInstallerPackageName;Lo/ExecutorUtils$2;)V

    invoke-virtual {v0, v1}, Lo/setCurrentSession;->forEachChild(Lo/setCurrentSession$ICustomTabsCallback;)V

    .line 86
    invoke-virtual {p0, p1}, Lo/getInstallerPackageName;->forget(Lo/ExecutorUtils$2;)Z

    move-result p1

    return p1

    .line 88
    :cond_2
    iget-object v0, p0, Lo/getInstallerPackageName;->children:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 89
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object p1

    .line 92
    iget-object v4, p0, Lo/getInstallerPackageName;->children:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 93
    iget-object v4, p0, Lo/getInstallerPackageName;->children:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getInstallerPackageName;

    .line 94
    invoke-virtual {v4, p1}, Lo/getInstallerPackageName;->forget(Lo/ExecutorUtils$2;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 96
    iget-object p1, p0, Lo/getInstallerPackageName;->children:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_3
    iget-object p1, p0, Lo/getInstallerPackageName;->children:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 101
    iput-object v2, p0, Lo/getInstallerPackageName;->children:Ljava/util/Map;

    return v1

    :cond_4
    return v3

    :cond_5
    return v1
.end method

.method public remember(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V
    .locals 3

    .line 42
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iput-object p2, p0, Lo/getInstallerPackageName;->value:Lo/LogFileManager$DirectoryProvider;

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lo/getInstallerPackageName;->children:Ljava/util/Map;

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lo/getInstallerPackageName;->value:Lo/LogFileManager$DirectoryProvider;

    if-eqz v0, :cond_1

    .line 46
    invoke-interface {v0, p1, p2}, Lo/LogFileManager$DirectoryProvider;->updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    iput-object p1, p0, Lo/getInstallerPackageName;->value:Lo/LogFileManager$DirectoryProvider;

    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lo/getInstallerPackageName;->children:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getInstallerPackageName;->children:Ljava/util/Map;

    .line 52
    :cond_2
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lo/getInstallerPackageName;->children:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 54
    iget-object v1, p0, Lo/getInstallerPackageName;->children:Ljava/util/Map;

    new-instance v2, Lo/getInstallerPackageName;

    invoke-direct {v2}, Lo/getInstallerPackageName;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_3
    iget-object v1, p0, Lo/getInstallerPackageName;->children:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getInstallerPackageName;

    .line 58
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lo/getInstallerPackageName;->remember(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    return-void
.end method
