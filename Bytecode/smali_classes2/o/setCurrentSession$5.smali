.class final Lo/setCurrentSession$5;
.super Lo/getCurrentTimeMillis$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setCurrentSession;->forEachChild(Lo/setCurrentSession$ICustomTabsCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getCurrentTimeMillis$ICustomTabsCallback<",
        "Lo/LogFileManager;",
        "Lo/LogFileManager$DirectoryProvider;",
        ">;"
    }
.end annotation


# instance fields
.field passedPriorityKey:Z

.field final synthetic this$0:Lo/setCurrentSession;

.field final synthetic val$visitor:Lo/setCurrentSession$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/setCurrentSession;Lo/setCurrentSession$ICustomTabsCallback;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lo/setCurrentSession$5;->this$0:Lo/setCurrentSession;

    iput-object p2, p0, Lo/setCurrentSession$5;->val$visitor:Lo/setCurrentSession$ICustomTabsCallback;

    invoke-direct {p0}, Lo/getCurrentTimeMillis$ICustomTabsCallback;-><init>()V

    const/4 p1, 0x0

    .line 265
    iput-boolean p1, p0, Lo/setCurrentSession$5;->passedPriorityKey:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 264
    check-cast p1, Lo/LogFileManager;

    check-cast p2, Lo/LogFileManager$DirectoryProvider;

    invoke-virtual {p0, p1, p2}, Lo/setCurrentSession$5;->visitEntry(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    return-void
.end method

.method public final visitEntry(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V
    .locals 3

    .line 269
    iget-boolean v0, p0, Lo/setCurrentSession$5;->passedPriorityKey:Z

    if-nez v0, :cond_0

    invoke-static {}, Lo/LogFileManager;->getPriorityKey()Lo/LogFileManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/LogFileManager;->compareTo(Lo/LogFileManager;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lo/setCurrentSession$5;->passedPriorityKey:Z

    .line 271
    iget-object v0, p0, Lo/setCurrentSession$5;->val$visitor:Lo/setCurrentSession$ICustomTabsCallback;

    invoke-static {}, Lo/LogFileManager;->getPriorityKey()Lo/LogFileManager;

    move-result-object v1

    iget-object v2, p0, Lo/setCurrentSession$5;->this$0:Lo/setCurrentSession;

    invoke-virtual {v2}, Lo/setCurrentSession;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/setCurrentSession$ICustomTabsCallback;->visitChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lo/setCurrentSession$5;->val$visitor:Lo/setCurrentSession$ICustomTabsCallback;

    invoke-virtual {v0, p1, p2}, Lo/setCurrentSession$ICustomTabsCallback;->visitChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)V

    return-void
.end method
