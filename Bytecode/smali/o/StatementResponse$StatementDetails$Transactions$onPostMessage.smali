.class public final Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/StatementResponse$StatementDetails$Transactions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# static fields
.field public static final s1:I = 0x7f1303cc

.field public static final s2:I = 0x7f1303cd

.field public static final s3:I = 0x7f1303ce

.field public static final s4:I = 0x7f1303cf

.field public static final s5:I = 0x7f1303d0

.field public static final s6:I = 0x7f1303d1

.field public static final s7:I = 0x7f1303d2


# instance fields
.field private final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;->onNavigationEvent:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final declared-synchronized onNavigationEvent(Ljava/lang/String;)D
    .locals 2

    monitor-enter p0

    .line 3000
    :try_start_0
    iget-object v0, p0, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPostMessage(Ljava/lang/String;Lo/getInitialPrefetchItemCount$extraCallback;)D
    .locals 4

    monitor-enter p0

    .line 4000
    :try_start_0
    move-object v0, p2

    check-cast v0, Lo/setOf;

    iget v0, v0, Lo/setOf;->onTransact:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    check-cast p2, Lo/setOf;

    iget p2, p2, Lo/setOf;->ICustomTabsCallback$Stub:I

    int-to-double v2, p2

    div-double/2addr v0, v2

    iget-object p2, p0, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;->onNavigationEvent:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPostMessage(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 2000
    :try_start_0
    iget-object v0, p0, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;->onNavigationEvent:Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
