.class final Lo/AppSpiCall$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AppSpiCall;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/AppSpiCall;


# direct methods
.method constructor <init>(Lo/AppSpiCall;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lo/AppSpiCall$3;->ICustomTabsCallback:Lo/AppSpiCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-static {}, Lo/AppSpiCall;->warmup()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 54
    :try_start_0
    iget-object p2, p0, Lo/AppSpiCall$3;->ICustomTabsCallback:Lo/AppSpiCall;

    invoke-static {p2}, Lo/AppSpiCall;->onNavigationEvent(Lo/AppSpiCall;)V

    .line 55
    invoke-static {}, Lo/AppSpiCall;->ICustomTabsService()Z

    .line 56
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method
