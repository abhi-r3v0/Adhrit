.class public Lo/setCurrentSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LogFileManager$DirectoryProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setCurrentSession$ICustomTabsCallback;,
        Lo/setCurrentSession$onMessageChannelReady;
    }
.end annotation


# static fields
.field public static NAME_ONLY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lo/LogFileManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final children:Lo/populateFramesList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/populateFramesList<",
            "Lo/LogFileManager;",
            "Lo/LogFileManager$DirectoryProvider;",
            ">;"
        }
    .end annotation
.end field

.field private lazyHash:Ljava/lang/String;

.field private final priority:Lo/LogFileManager$DirectoryProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lo/setCurrentSession$3;

    invoke-direct {v0}, Lo/setCurrentSession$3;-><init>()V

    sput-object v0, Lo/setCurrentSession;->NAME_ONLY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lo/setCurrentSession;->lazyHash:Ljava/lang/String;

    .line 83
    sget-object v0, Lo/setCurrentSession;->NAME_ONLY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0}, Lo/populateFramesList$onNavigationEvent;->emptyMap(Ljava/util/Comparator;)Lo/populateFramesList;

    move-result-object v0

    iput-object v0, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    .line 84
    invoke-static {}, Lo/toStringMap;->NullPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    iput-object v0, p0, Lo/setCurrentSession;->priority:Lo/LogFileManager$DirectoryProvider;

    return-void
.end method

.method protected constructor <init>(Lo/populateFramesList;Lo/LogFileManager$DirectoryProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/populateFramesList<",
            "Lo/LogFileManager;",
            "Lo/LogFileManager$DirectoryProvider;",
            ">;",
            "Lo/LogFileManager$DirectoryProvider;",
            ")V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lo/setCurrentSession;->lazyHash:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lo/populateFramesList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t create empty ChildrenNode with priority!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_1
    :goto_0
    iput-object p2, p0, Lo/setCurrentSession;->priority:Lo/LogFileManager$DirectoryProvider;

    .line 92
    iput-object p1, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    return-void
.end method

.method private static addIndentation(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, " "

    .line 406
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private toString(Ljava/lang/StringBuilder;I)V
    .locals 5

    .line 411
    iget-object v0, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {v0}, Lo/populateFramesList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setCurrentSession;->priority:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "{ }"

    .line 412
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const-string v0, "{\n"

    .line 414
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    iget-object v0, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {v0}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "\n"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    add-int/lit8 v3, p2, 0x2

    .line 416
    invoke-static {p1, v3}, Lo/setCurrentSession;->addIndentation(Ljava/lang/StringBuilder;I)V

    .line 417
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/LogFileManager;

    invoke-virtual {v4}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    .line 418
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lo/setCurrentSession;

    if-eqz v4, :cond_1

    .line 420
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setCurrentSession;

    .line 421
    invoke-direct {v1, p1, v3}, Lo/setCurrentSession;->toString(Ljava/lang/StringBuilder;I)V

    goto :goto_1

    .line 423
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LogFileManager$DirectoryProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 427
    :cond_2
    iget-object v0, p0, Lo/setCurrentSession;->priority:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, p2, 0x2

    .line 428
    invoke-static {p1, v0}, Lo/setCurrentSession;->addIndentation(Ljava/lang/StringBuilder;I)V

    const-string v0, ".priority="

    .line 429
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget-object v0, p0, Lo/setCurrentSession;->priority:Lo/LogFileManager$DirectoryProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_3
    invoke-static {p1, p2}, Lo/setCurrentSession;->addIndentation(Ljava/lang/StringBuilder;I)V

    const-string p2, "}"

    .line 434
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Lo/LogFileManager$DirectoryProvider;

    invoke-virtual {p0, p1}, Lo/setCurrentSession;->compareTo(Lo/LogFileManager$DirectoryProvider;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lo/LogFileManager$DirectoryProvider;)I
    .locals 4

    .line 334
    invoke-virtual {p0}, Lo/setCurrentSession;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 335
    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    .line 340
    :cond_1
    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    return v3

    .line 343
    :cond_2
    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    .line 345
    :cond_3
    sget-object v0, Lo/LogFileManager$DirectoryProvider;->MAX_NODE:Lo/setCurrentSession;

    if-ne p1, v0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 361
    :cond_1
    instance-of v2, p1, Lo/setCurrentSession;

    if-nez v2, :cond_2

    return v0

    .line 364
    :cond_2
    check-cast p1, Lo/setCurrentSession;

    .line 365
    invoke-virtual {p0}, Lo/setCurrentSession;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    invoke-virtual {p1}, Lo/setCurrentSession;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 367
    :cond_3
    iget-object v2, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {v2}, Lo/populateFramesList;->size()I

    move-result v2

    iget-object v3, p1, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {v3}, Lo/populateFramesList;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    return v0

    .line 370
    :cond_4
    iget-object v2, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {v2}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 371
    iget-object p1, p1, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {p1}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 372
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 373
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 374
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 375
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/LogFileManager;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 376
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_6
    return v0

    .line 380
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    .line 381
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Something went wrong internally."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEachChild(Lo/setCurrentSession$ICustomTabsCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 256
    invoke-virtual {p0, p1, v0}, Lo/setCurrentSession;->forEachChild(Lo/setCurrentSession$ICustomTabsCallback;Z)V

    return-void
.end method

.method public forEachChild(Lo/setCurrentSession$ICustomTabsCallback;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 260
    invoke-virtual {p0}, Lo/setCurrentSession;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-object p2, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    new-instance v0, Lo/setCurrentSession$5;

    invoke-direct {v0, p0, p1}, Lo/setCurrentSession$5;-><init>(Lo/setCurrentSession;Lo/setCurrentSession$ICustomTabsCallback;)V

    invoke-virtual {p2, v0}, Lo/populateFramesList;->inOrderTraversal(Lo/getCurrentTimeMillis$ICustomTabsCallback;)V

    return-void

    .line 261
    :cond_1
    :goto_0
    iget-object p2, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {p2, p1}, Lo/populateFramesList;->inOrderTraversal(Lo/getCurrentTimeMillis$ICustomTabsCallback;)V

    return-void
.end method

.method public getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 247
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 251
    :cond_0
    invoke-virtual {p0, v0}, Lo/setCurrentSession;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-virtual {p1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 107
    iget-object v0, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {v0}, Lo/populateFramesList;->size()I

    move-result v0

    return v0
.end method

.method public getFirstChildKey()Lo/LogFileManager;
    .locals 1

    .line 280
    iget-object v0, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {v0}, Lo/populateFramesList;->getMinKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LogFileManager;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 2

    .line 207
    iget-object v0, p0, Lo/setCurrentSession;->lazyHash:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 208
    sget-object v0, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;->V1:Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    invoke-virtual {p0, v0}, Lo/setCurrentSession;->getHashRepresentation(Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lo/SessionReportingCoordinator$$Lambda$2;->sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lo/setCurrentSession;->lazyHash:Ljava/lang/String;

    .line 211
    :cond_1
    iget-object v0, p0, Lo/setCurrentSession;->lazyHash:Ljava/lang/String;

    return-object v0
.end method

.method public getHashRepresentation(Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;)Ljava/lang/String;
    .locals 6

    .line 175
    sget-object v0, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;->V1:Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    if-ne p1, v0, :cond_7

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    iget-object v0, p0, Lo/setCurrentSession;->priority:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    const-string v1, ":"

    if-nez v0, :cond_0

    const-string v0, "priority:"

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v0, p0, Lo/setCurrentSession;->priority:Lo/LogFileManager$DirectoryProvider;

    sget-object v2, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;->V1:Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    invoke-interface {v0, v2}, Lo/LogFileManager$DirectoryProvider;->getHashRepresentation(Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-virtual {p0}, Lo/setCurrentSession;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/QueueFile;

    .line 187
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_2

    .line 188
    invoke-virtual {v5}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v4

    invoke-interface {v4}, Lo/LogFileManager$DirectoryProvider;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v4

    invoke-interface {v4}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 191
    invoke-static {}, Lo/writeHeader;->getInstance()Lo/writeHeader;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 193
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/QueueFile;

    .line 194
    invoke-virtual {v2}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v3

    invoke-interface {v3}, Lo/LogFileManager$DirectoryProvider;->getHash()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 196
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v2}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v2

    invoke-virtual {v2}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 202
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 176
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Hashes on children nodes only supported for V1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 236
    invoke-virtual {p1}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setCurrentSession;->priority:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object p1, p0, Lo/setCurrentSession;->priority:Lo/LogFileManager$DirectoryProvider;

    return-object p1

    .line 238
    :cond_0
    iget-object v0, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {v0, p1}, Lo/populateFramesList;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {v0, p1}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/LogFileManager$DirectoryProvider;

    return-object p1

    .line 241
    :cond_1
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p1

    return-object p1
.end method

.method public getLastChildKey()Lo/LogFileManager;
    .locals 1

    .line 284
    iget-object v0, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {v0}, Lo/populateFramesList;->getMaxKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LogFileManager;

    return-object v0
.end method

.method public getPredecessorChildKey(Lo/LogFileManager;)Lo/LogFileManager;
    .locals 1

    .line 165
    iget-object v0, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {v0, p1}, Lo/populateFramesList;->getPredecessorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/LogFileManager;

    return-object p1
.end method

.method public getPriority()Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 221
    iget-object v0, p0, Lo/setCurrentSession;->priority:Lo/LogFileManager$DirectoryProvider;

    return-object v0
.end method

.method public getSuccessorChildKey(Lo/LogFileManager;)Lo/LogFileManager;
    .locals 1

    .line 170
    iget-object v0, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {v0, p1}, Lo/populateFramesList;->getSuccessorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/LogFileManager;

    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, v0}, Lo/setCurrentSession;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 10

    .line 117
    invoke-virtual {p0}, Lo/setCurrentSession;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 124
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    iget-object v1, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {v1}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/LogFileManager;

    invoke-virtual {v8}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v8

    .line 127
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v7, p1}, Lo/LogFileManager$DirectoryProvider;->getValue(Z)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    if-eqz v5, :cond_1

    .line 131
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v2, :cond_2

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x30

    if-eq v7, v9, :cond_3

    .line 134
    :cond_2
    invoke-static {v8}, Lo/SessionReportingCoordinator$$Lambda$2;->tryParseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 135
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-ltz v8, :cond_3

    .line 136
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-le v8, v6, :cond_1

    .line 137
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    if-nez p1, :cond_6

    if-eqz v5, :cond_6

    mul-int/lit8 v4, v4, 0x2

    if-ge v6, v4, :cond_6

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    add-int/lit8 v1, v6, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-gt v3, v6, :cond_5

    .line 152
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object p1

    :cond_6
    if-eqz p1, :cond_7

    .line 156
    iget-object p1, p0, Lo/setCurrentSession;->priority:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 157
    iget-object p1, p0, Lo/setCurrentSession;->priority:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, ".priority"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v0
.end method

.method public hasChild(Lo/LogFileManager;)Z
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lo/setCurrentSession;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 390
    invoke-virtual {p0}, Lo/setCurrentSession;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/QueueFile;

    mul-int/lit8 v1, v1, 0x1f

    .line 391
    invoke-virtual {v2}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x11

    .line 392
    invoke-virtual {v2}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {v0}, Lo/populateFramesList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isLeafNode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/QueueFile;",
            ">;"
        }
    .end annotation

    .line 303
    new-instance v0, Lo/setCurrentSession$onMessageChannelReady;

    iget-object v1, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {v1}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/setCurrentSession$onMessageChannelReady;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/QueueFile;",
            ">;"
        }
    .end annotation

    .line 308
    new-instance v0, Lo/setCurrentSession$onMessageChannelReady;

    iget-object v1, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {v1}, Lo/populateFramesList;->reverseIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/setCurrentSession$onMessageChannelReady;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 400
    invoke-direct {p0, v0, v1}, Lo/setCurrentSession;->toString(Ljava/lang/StringBuilder;I)V

    .line 401
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 2

    .line 289
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 292
    :cond_0
    invoke-virtual {v0}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    invoke-static {p2}, Lo/toStringMap;->isValidPriority(Lo/LogFileManager$DirectoryProvider;)Z

    move-result p1

    invoke-static {p1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 294
    invoke-virtual {p0, p2}, Lo/setCurrentSession;->updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1

    .line 296
    :cond_1
    invoke-virtual {p0, v0}, Lo/setCurrentSession;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-virtual {p1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lo/LogFileManager$DirectoryProvider;->updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    .line 297
    invoke-virtual {p0, v0, p1}, Lo/setCurrentSession;->updateImmediateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public updateImmediateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 2

    .line 313
    invoke-virtual {p1}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0, p2}, Lo/setCurrentSession;->updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1

    .line 316
    :cond_0
    iget-object v0, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    .line 317
    invoke-virtual {v0, p1}, Lo/populateFramesList;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {v0, p1}, Lo/populateFramesList;->remove(Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object v0

    .line 320
    :cond_1
    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 321
    invoke-virtual {v0, p1, p2}, Lo/populateFramesList;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object v0

    .line 323
    :cond_2
    invoke-virtual {v0}, Lo/populateFramesList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 325
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p1

    return-object p1

    .line 327
    :cond_3
    new-instance p1, Lo/setCurrentSession;

    iget-object p2, p0, Lo/setCurrentSession;->priority:Lo/LogFileManager$DirectoryProvider;

    invoke-direct {p1, v0, p2}, Lo/setCurrentSession;-><init>(Lo/populateFramesList;Lo/LogFileManager$DirectoryProvider;)V

    return-object p1
.end method

.method public updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 2

    .line 226
    iget-object v0, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-virtual {v0}, Lo/populateFramesList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p1

    return-object p1

    .line 229
    :cond_0
    new-instance v0, Lo/setCurrentSession;

    iget-object v1, p0, Lo/setCurrentSession;->children:Lo/populateFramesList;

    invoke-direct {v0, v1, p1}, Lo/setCurrentSession;-><init>(Lo/populateFramesList;Lo/LogFileManager$DirectoryProvider;)V

    return-object v0
.end method
