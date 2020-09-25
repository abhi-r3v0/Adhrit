.class final Lo/getInstallerPackageName$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getInstallerPackageName$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getInstallerPackageName;->forEachTree(Lo/ExecutorUtils$2;Lo/getInstallerPackageName$onPostMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/getInstallerPackageName;

.field final synthetic val$prefixPath:Lo/ExecutorUtils$2;

.field final synthetic val$visitor:Lo/getInstallerPackageName$onPostMessage;


# direct methods
.method constructor <init>(Lo/getInstallerPackageName;Lo/ExecutorUtils$2;Lo/getInstallerPackageName$onPostMessage;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lo/getInstallerPackageName$1;->this$0:Lo/getInstallerPackageName;

    iput-object p2, p0, Lo/getInstallerPackageName$1;->val$prefixPath:Lo/ExecutorUtils$2;

    iput-object p3, p0, Lo/getInstallerPackageName$1;->val$visitor:Lo/getInstallerPackageName$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visitChild(Lo/LogFileManager;Lo/getInstallerPackageName;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lo/getInstallerPackageName$1;->val$prefixPath:Lo/ExecutorUtils$2;

    invoke-virtual {v0, p1}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object p1

    iget-object v0, p0, Lo/getInstallerPackageName$1;->val$visitor:Lo/getInstallerPackageName$onPostMessage;

    invoke-virtual {p2, p1, v0}, Lo/getInstallerPackageName;->forEachTree(Lo/ExecutorUtils$2;Lo/getInstallerPackageName$onPostMessage;)V

    return-void
.end method
