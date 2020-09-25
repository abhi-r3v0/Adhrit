.class public final Lo/PermissionNotGrantedException;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Lo/postOrRun;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    sput-object v0, Lo/PermissionNotGrantedException;->ICustomTabsCallback:Lo/postOrRun;

    return-void
.end method

.method public static declared-synchronized onNavigationEvent(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    const-class v0, Lo/PermissionNotGrantedException;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lo/PermissionNotGrantedException;->ICustomTabsCallback:Lo/postOrRun;

    invoke-virtual {v1, p0}, Lo/postOrRun;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-nez v1, :cond_1

    const-string v1, "content://com.google.android.gms.phenotype/"

    .line 4
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5
    sget-object v2, Lo/PermissionNotGrantedException;->ICustomTabsCallback:Lo/postOrRun;

    invoke-virtual {v2, p0, v1}, Lo/postOrRun;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
