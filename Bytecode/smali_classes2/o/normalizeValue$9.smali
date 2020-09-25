.class final Lo/normalizeValue$9;
.super Lo/childMovedChange;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/normalizeValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:I

.field private synthetic onPostMessage:Lo/normalizeValue;


# direct methods
.method varargs constructor <init>(Lo/normalizeValue;Ljava/lang/String;[Ljava/lang/Object;ILo/getNodeFilter;)V
    .locals 0

    .line 908
    iput-object p1, p0, Lo/normalizeValue$9;->onPostMessage:Lo/normalizeValue;

    iput p4, p0, Lo/normalizeValue$9;->onMessageChannelReady:I

    invoke-direct {p0, p2, p3}, Lo/childMovedChange;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    .line 911
    iget-object v0, p0, Lo/normalizeValue$9;->onPostMessage:Lo/normalizeValue;

    monitor-enter v0

    .line 912
    :try_start_0
    iget-object v1, p0, Lo/normalizeValue$9;->onPostMessage:Lo/normalizeValue;

    iget-object v1, v1, Lo/normalizeValue;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    iget v2, p0, Lo/normalizeValue$9;->onMessageChannelReady:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 913
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
