.class public abstract Lo/getKeysFileForSession;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getKeysFileForSession$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field protected final path:Lo/ExecutorUtils$2;

.field protected final source:Lo/valueOrNull;

.field protected final type:Lo/getKeysFileForSession$ICustomTabsCallback;


# direct methods
.method protected constructor <init>(Lo/getKeysFileForSession$ICustomTabsCallback;Lo/valueOrNull;Lo/ExecutorUtils$2;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lo/getKeysFileForSession;->type:Lo/getKeysFileForSession$ICustomTabsCallback;

    .line 35
    iput-object p2, p0, Lo/getKeysFileForSession;->source:Lo/valueOrNull;

    .line 36
    iput-object p3, p0, Lo/getKeysFileForSession;->path:Lo/ExecutorUtils$2;

    return-void
.end method


# virtual methods
.method public getPath()Lo/ExecutorUtils$2;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/getKeysFileForSession;->path:Lo/ExecutorUtils$2;

    return-object v0
.end method

.method public getSource()Lo/valueOrNull;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/getKeysFileForSession;->source:Lo/valueOrNull;

    return-object v0
.end method

.method public getType()Lo/getKeysFileForSession$ICustomTabsCallback;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/getKeysFileForSession;->type:Lo/getKeysFileForSession$ICustomTabsCallback;

    return-object v0
.end method

.method public abstract operationForChild(Lo/LogFileManager;)Lo/getKeysFileForSession;
.end method
