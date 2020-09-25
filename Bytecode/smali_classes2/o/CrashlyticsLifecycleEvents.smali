.class public Lo/CrashlyticsLifecycleEvents;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final node:Lo/discardOldLogFiles;

.field private final query:Lo/isPresent;


# direct methods
.method public constructor <init>(Lo/isPresent;Lo/discardOldLogFiles;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lo/CrashlyticsLifecycleEvents;->node:Lo/discardOldLogFiles;

    .line 52
    iput-object p1, p0, Lo/CrashlyticsLifecycleEvents;->query:Lo/isPresent;

    return-void
.end method

.method static synthetic access$000(Lo/CrashlyticsLifecycleEvents;)Lo/isPresent;
    .locals 0

    .line 41
    iget-object p0, p0, Lo/CrashlyticsLifecycleEvents;->query:Lo/isPresent;

    return-object p0
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lo/CrashlyticsLifecycleEvents;
    .locals 3

    .line 65
    iget-object v0, p0, Lo/CrashlyticsLifecycleEvents;->query:Lo/isPresent;

    invoke-virtual {v0, p1}, Lo/isPresent;->child(Ljava/lang/String;)Lo/isPresent;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lo/CrashlyticsLifecycleEvents;->node:Lo/discardOldLogFiles;

    invoke-virtual {v1}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    new-instance v2, Lo/ExecutorUtils$2;

    invoke-direct {v2, p1}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    .line 67
    new-instance v1, Lo/CrashlyticsLifecycleEvents;

    invoke-static {p1}, Lo/discardOldLogFiles;->from(Lo/LogFileManager$DirectoryProvider;)Lo/discardOldLogFiles;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lo/CrashlyticsLifecycleEvents;-><init>(Lo/isPresent;Lo/discardOldLogFiles;)V

    return-object v1
.end method

.method public exists()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lo/CrashlyticsLifecycleEvents;->node:Lo/discardOldLogFiles;

    invoke-virtual {v0}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChildren()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lo/CrashlyticsLifecycleEvents;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lo/CrashlyticsLifecycleEvents;->node:Lo/discardOldLogFiles;

    invoke-virtual {v0}, Lo/discardOldLogFiles;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 269
    new-instance v1, Lo/CrashlyticsLifecycleEvents$4;

    invoke-direct {v1, p0, v0}, Lo/CrashlyticsLifecycleEvents$4;-><init>(Lo/CrashlyticsLifecycleEvents;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getChildrenCount()J
    .locals 2

    .line 234
    iget-object v0, p0, Lo/CrashlyticsLifecycleEvents;->node:Lo/discardOldLogFiles;

    invoke-virtual {v0}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getChildCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lo/CrashlyticsLifecycleEvents;->query:Lo/isPresent;

    invoke-virtual {v0}, Lo/isPresent;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Ljava/lang/Object;
    .locals 2

    .line 311
    iget-object v0, p0, Lo/CrashlyticsLifecycleEvents;->node:Lo/discardOldLogFiles;

    invoke-virtual {v0}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 312
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 313
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRef()Lo/isPresent;
    .locals 1

    .line 244
    iget-object v0, p0, Lo/CrashlyticsLifecycleEvents;->query:Lo/isPresent;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 124
    iget-object v0, p0, Lo/CrashlyticsLifecycleEvents;->node:Lo/discardOldLogFiles;

    invoke-virtual {v0}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lo/CrashlyticsLifecycleEvents;->node:Lo/discardOldLogFiles;

    invoke-virtual {v0}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 203
    invoke-static {v0, p1}, Lo/SystemCurrentTimeProvider;->convertToCustomClass(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lo/onLog;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/onLog<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lo/CrashlyticsLifecycleEvents;->node:Lo/discardOldLogFiles;

    invoke-virtual {v0}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 229
    invoke-static {v0, p1}, Lo/SystemCurrentTimeProvider;->convertToCustomClass(Ljava/lang/Object;Lo/onLog;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 1

    .line 153
    iget-object v0, p0, Lo/CrashlyticsLifecycleEvents;->node:Lo/discardOldLogFiles;

    invoke-virtual {v0}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/LogFileManager$DirectoryProvider;->getValue(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasChild(Ljava/lang/String;)Z
    .locals 2

    .line 77
    iget-object v0, p0, Lo/CrashlyticsLifecycleEvents;->query:Lo/isPresent;

    invoke-virtual {v0}, Lo/isPresent;->getParent()Lo/isPresent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    invoke-static {p1}, Lo/UserMetadata;->validateRootPathString(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p1}, Lo/UserMetadata;->validatePathString(Ljava/lang/String;)V

    .line 82
    :goto_0
    iget-object v0, p0, Lo/CrashlyticsLifecycleEvents;->node:Lo/discardOldLogFiles;

    invoke-virtual {v0}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    new-instance v1, Lo/ExecutorUtils$2;

    invoke-direct {v1, p1}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hasChildren()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lo/CrashlyticsLifecycleEvents;->node:Lo/discardOldLogFiles;

    invoke-virtual {v0}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataSnapshot { key = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/CrashlyticsLifecycleEvents;->query:Lo/isPresent;

    .line 322
    invoke-virtual {v1}, Lo/isPresent;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CrashlyticsLifecycleEvents;->node:Lo/discardOldLogFiles;

    .line 324
    invoke-virtual {v1}, Lo/discardOldLogFiles;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lo/LogFileManager$DirectoryProvider;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
