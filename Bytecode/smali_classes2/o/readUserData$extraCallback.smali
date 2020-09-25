.class public final Lo/readUserData$extraCallback;
.super Lo/readUserData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/readUserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field private final path:Lo/ExecutorUtils$2;

.field private final syncTree:Lo/removeForwardSlashesIn;


# direct methods
.method constructor <init>(Lo/removeForwardSlashesIn;Lo/ExecutorUtils$2;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lo/readUserData;-><init>()V

    .line 64
    iput-object p1, p0, Lo/readUserData$extraCallback;->syncTree:Lo/removeForwardSlashesIn;

    .line 65
    iput-object p2, p0, Lo/readUserData$extraCallback;->path:Lo/ExecutorUtils$2;

    return-void
.end method


# virtual methods
.method public final getImmediateChild(Lo/LogFileManager;)Lo/readUserData;
    .locals 2

    .line 70
    iget-object v0, p0, Lo/readUserData$extraCallback;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v0, p1}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object p1

    .line 71
    new-instance v0, Lo/readUserData$extraCallback;

    iget-object v1, p0, Lo/readUserData$extraCallback;->syncTree:Lo/removeForwardSlashesIn;

    invoke-direct {v0, v1, p1}, Lo/readUserData$extraCallback;-><init>(Lo/removeForwardSlashesIn;Lo/ExecutorUtils$2;)V

    return-object v0
.end method

.method public final node()Lo/LogFileManager$DirectoryProvider;
    .locals 3

    .line 76
    iget-object v0, p0, Lo/readUserData$extraCallback;->syncTree:Lo/removeForwardSlashesIn;

    iget-object v1, p0, Lo/readUserData$extraCallback;->path:Lo/ExecutorUtils$2;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Lo/removeForwardSlashesIn;->calcCompleteEventCache(Lo/ExecutorUtils$2;Ljava/util/List;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    return-object v0
.end method
