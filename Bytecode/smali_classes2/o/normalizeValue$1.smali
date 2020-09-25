.class final Lo/normalizeValue$1;
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
.field private synthetic ICustomTabsCallback:I

.field private synthetic extraCallback:I

.field private synthetic onNavigationEvent:Lo/normalizeValue;

.field private synthetic onPostMessage:Lo/updatePriority;


# direct methods
.method varargs constructor <init>(Lo/normalizeValue;Ljava/lang/String;[Ljava/lang/Object;ILo/updatePriority;IZ)V
    .locals 0

    .line 891
    iput-object p1, p0, Lo/normalizeValue$1;->onNavigationEvent:Lo/normalizeValue;

    iput p4, p0, Lo/normalizeValue$1;->ICustomTabsCallback:I

    iput-object p5, p0, Lo/normalizeValue$1;->onPostMessage:Lo/updatePriority;

    iput p6, p0, Lo/normalizeValue$1;->extraCallback:I

    invoke-direct {p0, p2, p3}, Lo/childMovedChange;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    .line 894
    :try_start_0
    iget-object v0, p0, Lo/normalizeValue$1;->onNavigationEvent:Lo/normalizeValue;

    iget-object v0, v0, Lo/normalizeValue;->asInterface:Lo/updateEventSnap;

    iget-object v1, p0, Lo/normalizeValue$1;->onPostMessage:Lo/updatePriority;

    iget v2, p0, Lo/normalizeValue$1;->extraCallback:I

    invoke-interface {v0, v1, v2}, Lo/updateEventSnap;->extraCallback(Lo/fullLimitUpdateChild;I)Z

    .line 895
    iget-object v0, p0, Lo/normalizeValue$1;->onNavigationEvent:Lo/normalizeValue;

    iget-object v0, v0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    iget v1, p0, Lo/normalizeValue$1;->ICustomTabsCallback:I

    sget-object v2, Lo/getNodeFilter;->asInterface:Lo/getNodeFilter;

    invoke-virtual {v0, v1, v2}, Lo/updateServerSnap;->onPostMessage(ILo/getNodeFilter;)V

    .line 897
    iget-object v0, p0, Lo/normalizeValue$1;->onNavigationEvent:Lo/normalizeValue;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    :try_start_1
    iget-object v1, p0, Lo/normalizeValue$1;->onNavigationEvent:Lo/normalizeValue;

    iget-object v1, v1, Lo/normalizeValue;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    iget v2, p0, Lo/normalizeValue$1;->ICustomTabsCallback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 899
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method
