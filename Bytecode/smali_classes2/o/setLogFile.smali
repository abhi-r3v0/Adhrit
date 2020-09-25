.class public abstract Lo/setLogFile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/QueueFile;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromQueryDefinition(Ljava/lang/String;)Lo/setLogFile;
    .locals 2

    const-string v0, ".value"

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lo/wrapPosition;->getInstance()Lo/wrapPosition;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, ".key"

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-static {}, Lo/getSessionIdForFile;->getInstance()Lo/getSessionIdForFile;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, ".priority"

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    new-instance v0, Lo/writeInt;

    new-instance v1, Lo/ExecutorUtils$2;

    invoke-direct {v1, p0}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo/writeInt;-><init>(Lo/ExecutorUtils$2;)V

    return-object v0

    .line 46
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "queryDefinition shouldn\'t ever be .priority since it\'s the default"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public compare(Lo/QueueFile;Lo/QueueFile;Z)I
    .locals 0

    if-eqz p3, :cond_0

    .line 55
    invoke-virtual {p0, p2, p1}, Lo/setLogFile;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 57
    :cond_0
    invoke-virtual {p0, p1, p2}, Lo/setLogFile;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public abstract getQueryDefinition()Ljava/lang/String;
.end method

.method public indexedValueChanged(Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager$DirectoryProvider;)Z
    .locals 2

    .line 25
    new-instance v0, Lo/QueueFile;

    invoke-static {}, Lo/LogFileManager;->getMinName()Lo/LogFileManager;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    .line 26
    new-instance p1, Lo/QueueFile;

    invoke-static {}, Lo/LogFileManager;->getMinName()Lo/LogFileManager;

    move-result-object v1

    invoke-direct {p1, v1, p2}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    .line 27
    invoke-virtual {p0, v0, p1}, Lo/setLogFile;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract isDefinedOn(Lo/LogFileManager$DirectoryProvider;)Z
.end method

.method public abstract makePost(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/QueueFile;
.end method

.method public abstract maxPost()Lo/QueueFile;
.end method

.method public minPost()Lo/QueueFile;
    .locals 1

    .line 33
    invoke-static {}, Lo/QueueFile;->getMinNode()Lo/QueueFile;

    move-result-object v0

    return-object v0
.end method
