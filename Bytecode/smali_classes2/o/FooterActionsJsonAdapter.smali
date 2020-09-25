.class final Lo/FooterActionsJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onNavigationEvent:Landroid/graphics/Bitmap;

.field private final synthetic onPostMessage:Lo/CtasJsonAdapter;


# direct methods
.method constructor <init>(Lo/CtasJsonAdapter;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lo/FooterActionsJsonAdapter;->onPostMessage:Lo/CtasJsonAdapter;

    iput-object p2, p0, Lo/FooterActionsJsonAdapter;->onNavigationEvent:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lo/FooterActionsJsonAdapter;->onNavigationEvent:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object v1, p0, Lo/FooterActionsJsonAdapter;->onPostMessage:Lo/CtasJsonAdapter;

    invoke-static {v1}, Lo/CtasJsonAdapter;->ICustomTabsCallback(Lo/CtasJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lo/FooterActionsJsonAdapter;->onPostMessage:Lo/CtasJsonAdapter;

    invoke-static {v2}, Lo/CtasJsonAdapter;->onNavigationEvent(Lo/CtasJsonAdapter;)Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

    move-result-object v2

    new-instance v3, Lo/MachinePullInternalFragment$onViewCreated$4$3$$special$$inlined$executeOnResume$1;

    invoke-direct {v3}, Lo/MachinePullInternalFragment$onViewCreated$4$3$$special$$inlined$executeOnResume$1;-><init>()V

    iput-object v3, v2, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/MachinePullInternalFragment$onViewCreated$4$3$$special$$inlined$executeOnResume$1;

    iget-object v2, p0, Lo/FooterActionsJsonAdapter;->onPostMessage:Lo/CtasJsonAdapter;

    invoke-static {v2}, Lo/CtasJsonAdapter;->onNavigationEvent(Lo/CtasJsonAdapter;)Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

    move-result-object v2

    iget-object v2, v2, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/MachinePullInternalFragment$onViewCreated$4$3$$special$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v2, Lo/MachinePullInternalFragment$onViewCreated$4$3$$special$$inlined$executeOnResume$1;->onPostMessage:[B

    iget-object v0, p0, Lo/FooterActionsJsonAdapter;->onPostMessage:Lo/CtasJsonAdapter;

    invoke-static {v0}, Lo/CtasJsonAdapter;->onNavigationEvent(Lo/CtasJsonAdapter;)Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

    move-result-object v0

    iget-object v0, v0, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/MachinePullInternalFragment$onViewCreated$4$3$$special$$inlined$executeOnResume$1;

    const-string v2, "image/png"

    iput-object v2, v0, Lo/MachinePullInternalFragment$onViewCreated$4$3$$special$$inlined$executeOnResume$1;->extraCallback:Ljava/lang/String;

    iget-object v0, p0, Lo/FooterActionsJsonAdapter;->onPostMessage:Lo/CtasJsonAdapter;

    invoke-static {v0}, Lo/CtasJsonAdapter;->onNavigationEvent(Lo/CtasJsonAdapter;)Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

    move-result-object v0

    iget-object v0, v0, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/MachinePullInternalFragment$onViewCreated$4$3$$special$$inlined$executeOnResume$1;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lo/MachinePullInternalFragment$onViewCreated$4$3$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Integer;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
