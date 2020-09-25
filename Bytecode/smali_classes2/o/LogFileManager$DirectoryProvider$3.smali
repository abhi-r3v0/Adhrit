.class final Lo/LogFileManager$DirectoryProvider$3;
.super Lo/setCurrentSession;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LogFileManager$DirectoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lo/setCurrentSession;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 64
    check-cast p1, Lo/LogFileManager$DirectoryProvider;

    invoke-virtual {p0, p1}, Lo/setCurrentSession;->compareTo(Lo/LogFileManager$DirectoryProvider;)I

    move-result p1

    return p1
.end method

.method public final compareTo(Lo/LogFileManager$DirectoryProvider;)I
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;
    .locals 0

    .line 92
    invoke-virtual {p1}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lo/setCurrentSession;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1

    .line 95
    :cond_0
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p1

    return-object p1
.end method

.method public final getPriority()Lo/LogFileManager$DirectoryProvider;
    .locals 0

    return-object p0
.end method

.method public final hasChild(Lo/LogFileManager;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<Max Node>"

    return-object v0
.end method
