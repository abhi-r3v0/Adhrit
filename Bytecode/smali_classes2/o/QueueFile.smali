.class public final Lo/QueueFile;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MAX_NODE:Lo/QueueFile;

.field private static final MIN_NODE:Lo/QueueFile;


# instance fields
.field private final name:Lo/LogFileManager;

.field private final node:Lo/LogFileManager$DirectoryProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lo/QueueFile;

    invoke-static {}, Lo/LogFileManager;->getMinName()Lo/LogFileManager;

    move-result-object v1

    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    sput-object v0, Lo/QueueFile;->MIN_NODE:Lo/QueueFile;

    .line 22
    new-instance v0, Lo/QueueFile;

    invoke-static {}, Lo/LogFileManager;->getMaxName()Lo/LogFileManager;

    move-result-object v1

    sget-object v2, Lo/LogFileManager$DirectoryProvider;->MAX_NODE:Lo/setCurrentSession;

    invoke-direct {v0, v1, v2}, Lo/QueueFile;-><init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    sput-object v0, Lo/QueueFile;->MAX_NODE:Lo/QueueFile;

    return-void
.end method

.method public constructor <init>(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lo/QueueFile;->name:Lo/LogFileManager;

    .line 34
    iput-object p2, p0, Lo/QueueFile;->node:Lo/LogFileManager$DirectoryProvider;

    return-void
.end method

.method public static getMaxNode()Lo/QueueFile;
    .locals 1

    .line 29
    sget-object v0, Lo/QueueFile;->MAX_NODE:Lo/QueueFile;

    return-object v0
.end method

.method public static getMinNode()Lo/QueueFile;
    .locals 1

    .line 25
    sget-object v0, Lo/QueueFile;->MIN_NODE:Lo/QueueFile;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    check-cast p1, Lo/QueueFile;

    .line 61
    iget-object v2, p0, Lo/QueueFile;->name:Lo/LogFileManager;

    iget-object v3, p1, Lo/QueueFile;->name:Lo/LogFileManager;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 64
    :cond_2
    iget-object v2, p0, Lo/QueueFile;->node:Lo/LogFileManager$DirectoryProvider;

    iget-object p1, p1, Lo/QueueFile;->node:Lo/LogFileManager$DirectoryProvider;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final getName()Lo/LogFileManager;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/QueueFile;->name:Lo/LogFileManager;

    return-object v0
.end method

.method public final getNode()Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/QueueFile;->node:Lo/LogFileManager$DirectoryProvider;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 73
    iget-object v0, p0, Lo/QueueFile;->name:Lo/LogFileManager;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-object v1, p0, Lo/QueueFile;->node:Lo/LogFileManager$DirectoryProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NamedNode{name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/QueueFile;->name:Lo/LogFileManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/QueueFile;->node:Lo/LogFileManager$DirectoryProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
