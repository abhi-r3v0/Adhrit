.class final Lo/getOsBuildVersionString$3;
.super Lo/setCurrentSession$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getOsBuildVersionString;->resolveDeferredValueSnapshot(Lo/LogFileManager$DirectoryProvider;Lo/readUserData;Ljava/util/Map;)Lo/LogFileManager$DirectoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$existing:Lo/readUserData;

.field final synthetic val$holder:Lo/getAppIdentifier;

.field final synthetic val$serverValues:Ljava/util/Map;


# direct methods
.method constructor <init>(Lo/readUserData;Ljava/util/Map;Lo/getAppIdentifier;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lo/getOsBuildVersionString$3;->val$existing:Lo/readUserData;

    iput-object p2, p0, Lo/getOsBuildVersionString$3;->val$serverValues:Ljava/util/Map;

    iput-object p3, p0, Lo/getOsBuildVersionString$3;->val$holder:Lo/getAppIdentifier;

    invoke-direct {p0}, Lo/setCurrentSession$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final visitChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lo/getOsBuildVersionString$3;->val$existing:Lo/readUserData;

    .line 141
    invoke-virtual {v0, p1}, Lo/readUserData;->getImmediateChild(Lo/LogFileManager;)Lo/readUserData;

    move-result-object v0

    iget-object v1, p0, Lo/getOsBuildVersionString$3;->val$serverValues:Ljava/util/Map;

    .line 140
    invoke-static {p2, v0, v1}, Lo/getOsBuildVersionString;->access$000(Lo/LogFileManager$DirectoryProvider;Lo/readUserData;Ljava/util/Map;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    if-eq v0, p2, :cond_0

    .line 143
    iget-object p2, p0, Lo/getOsBuildVersionString$3;->val$holder:Lo/getAppIdentifier;

    new-instance v1, Lo/ExecutorUtils$2;

    invoke-virtual {p1}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v0}, Lo/getAppIdentifier;->update(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    :cond_0
    return-void
.end method
