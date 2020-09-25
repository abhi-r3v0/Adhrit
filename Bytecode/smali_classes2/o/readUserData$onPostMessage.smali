.class public final Lo/readUserData$onPostMessage;
.super Lo/readUserData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/readUserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field private final node:Lo/LogFileManager$DirectoryProvider;


# direct methods
.method constructor <init>(Lo/LogFileManager$DirectoryProvider;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lo/readUserData;-><init>()V

    .line 42
    iput-object p1, p0, Lo/readUserData$onPostMessage;->node:Lo/LogFileManager$DirectoryProvider;

    return-void
.end method


# virtual methods
.method public final getImmediateChild(Lo/LogFileManager;)Lo/readUserData;
    .locals 1

    .line 47
    iget-object v0, p0, Lo/readUserData$onPostMessage;->node:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v0, p1}, Lo/LogFileManager$DirectoryProvider;->getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    .line 48
    new-instance v0, Lo/readUserData$onPostMessage;

    invoke-direct {v0, p1}, Lo/readUserData$onPostMessage;-><init>(Lo/LogFileManager$DirectoryProvider;)V

    return-object v0
.end method

.method public final node()Lo/LogFileManager$DirectoryProvider;
    .locals 1

    .line 53
    iget-object v0, p0, Lo/readUserData$onPostMessage;->node:Lo/LogFileManager$DirectoryProvider;

    return-object v0
.end method
