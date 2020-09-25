.class public Lo/getAppIdentifier;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private rootNode:Lo/LogFileManager$DirectoryProvider;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v0

    iput-object v0, p0, Lo/getAppIdentifier;->rootNode:Lo/LogFileManager$DirectoryProvider;

    return-void
.end method

.method public constructor <init>(Lo/LogFileManager$DirectoryProvider;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/getAppIdentifier;->rootNode:Lo/LogFileManager$DirectoryProvider;

    return-void
.end method


# virtual methods
.method public getNode(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/getAppIdentifier;->rootNode:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v0, p1}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public getRootNode()Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/getAppIdentifier;->rootNode:Lo/LogFileManager$DirectoryProvider;

    return-object v0
.end method

.method public update(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lo/getAppIdentifier;->rootNode:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v0, p1, p2}, Lo/LogFileManager$DirectoryProvider;->updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    iput-object p1, p0, Lo/getAppIdentifier;->rootNode:Lo/LogFileManager$DirectoryProvider;

    return-void
.end method
