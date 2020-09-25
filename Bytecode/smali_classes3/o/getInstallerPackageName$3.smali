.class final Lo/getInstallerPackageName$3;
.super Lo/setCurrentSession$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getInstallerPackageName;->forget(Lo/ExecutorUtils$2;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/getInstallerPackageName;

.field final synthetic val$path:Lo/ExecutorUtils$2;


# direct methods
.method constructor <init>(Lo/getInstallerPackageName;Lo/ExecutorUtils$2;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lo/getInstallerPackageName$3;->this$0:Lo/getInstallerPackageName;

    iput-object p2, p0, Lo/getInstallerPackageName$3;->val$path:Lo/ExecutorUtils$2;

    invoke-direct {p0}, Lo/setCurrentSession$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final visitChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lo/getInstallerPackageName$3;->this$0:Lo/getInstallerPackageName;

    iget-object v1, p0, Lo/getInstallerPackageName$3;->val$path:Lo/ExecutorUtils$2;

    invoke-virtual {v1, p1}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lo/getInstallerPackageName;->remember(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    return-void
.end method
