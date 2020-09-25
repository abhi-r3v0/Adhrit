.class public final Lo/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setStreamKeys;


# static fields
.field private static final ICustomTabsCallback:Lo/MethodNotAllowedException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Lo/MethodNotAllowedException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 3
    new-instance v0, Lo/fK;

    const-string v1, "com.google.android.gms.measurement"

    .line 4
    invoke-static {v1}, Lo/PermissionNotGrantedException;->onNavigationEvent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/fK;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.id.max_bundles_per_iteration"

    const-wide/16 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lo/fK;->onPostMessage(Ljava/lang/String;J)Lo/MethodNotAllowedException;

    move-result-object v1

    sput-object v1, Lo/HlsMediaSource$Factory;->ICustomTabsCallback:Lo/MethodNotAllowedException;

    const-string v1, "measurement.max_bundles_per_iteration"

    const-wide/16 v2, 0x2

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lo/fK;->onPostMessage(Ljava/lang/String;J)Lo/MethodNotAllowedException;

    move-result-object v0

    sput-object v0, Lo/HlsMediaSource$Factory;->onPostMessage:Lo/MethodNotAllowedException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    .line 2
    sget-object v0, Lo/HlsMediaSource$Factory;->onPostMessage:Lo/MethodNotAllowedException;

    invoke-virtual {v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
