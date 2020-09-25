.class final Lo/clearLog$4;
.super Lo/setCurrentSession$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/clearLog;->processNode(Lo/LogFileManager$DirectoryProvider;Lo/clearLog$onPostMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$state:Lo/clearLog$onPostMessage;


# direct methods
.method constructor <init>(Lo/clearLog$onPostMessage;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lo/clearLog$4;->val$state:Lo/clearLog$onPostMessage;

    invoke-direct {p0}, Lo/setCurrentSession$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final visitChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lo/clearLog$4;->val$state:Lo/clearLog$onPostMessage;

    invoke-static {v0, p1}, Lo/clearLog$onPostMessage;->access$400(Lo/clearLog$onPostMessage;Lo/LogFileManager;)V

    .line 232
    iget-object p1, p0, Lo/clearLog$4;->val$state:Lo/clearLog$onPostMessage;

    invoke-static {p2, p1}, Lo/clearLog;->access$500(Lo/LogFileManager$DirectoryProvider;Lo/clearLog$onPostMessage;)V

    .line 233
    iget-object p1, p0, Lo/clearLog$4;->val$state:Lo/clearLog$onPostMessage;

    invoke-static {p1}, Lo/clearLog$onPostMessage;->access$600(Lo/clearLog$onPostMessage;)V

    return-void
.end method
