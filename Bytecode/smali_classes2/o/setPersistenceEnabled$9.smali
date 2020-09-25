.class final Lo/setPersistenceEnabled$9;
.super Lo/getParent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setPersistenceEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setPersistenceEnabled;

.field private synthetic onNavigationEvent:I


# direct methods
.method varargs constructor <init>(Lo/setPersistenceEnabled;Ljava/lang/String;[Ljava/lang/Object;ILo/getReferenceFromUrl;)V
    .locals 0

    .line 904
    iput-object p1, p0, Lo/setPersistenceEnabled$9;->ICustomTabsCallback:Lo/setPersistenceEnabled;

    iput p4, p0, Lo/setPersistenceEnabled$9;->onNavigationEvent:I

    invoke-direct {p0, p2, p3}, Lo/getParent;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 3

    .line 906
    iget-object v0, p0, Lo/setPersistenceEnabled$9;->ICustomTabsCallback:Lo/setPersistenceEnabled;

    invoke-static {v0}, Lo/setPersistenceEnabled;->asBinder(Lo/setPersistenceEnabled;)Lo/getNode;

    .line 907
    iget-object v0, p0, Lo/setPersistenceEnabled$9;->ICustomTabsCallback:Lo/setPersistenceEnabled;

    monitor-enter v0

    .line 908
    :try_start_0
    iget-object v1, p0, Lo/setPersistenceEnabled$9;->ICustomTabsCallback:Lo/setPersistenceEnabled;

    invoke-static {v1}, Lo/setPersistenceEnabled;->warmup(Lo/setPersistenceEnabled;)Ljava/util/Set;

    move-result-object v1

    iget v2, p0, Lo/setPersistenceEnabled$9;->onNavigationEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 909
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
