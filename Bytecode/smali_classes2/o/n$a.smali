.class public final Lo/n$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/dN;


# static fields
.field private static final extraCallback:Lo/MethodNotAllowedException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/Boolean;",
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

    .line 4
    new-instance v0, Lo/fK;

    const-string v1, "com.google.android.gms.measurement"

    .line 5
    invoke-static {v1}, Lo/PermissionNotGrantedException;->onNavigationEvent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/fK;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.sdk.attribution.cache"

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v1

    sput-object v1, Lo/n$a;->extraCallback:Lo/MethodNotAllowedException;

    const-string v1, "measurement.sdk.attribution.cache.ttl"

    const-wide/32 v2, 0x240c8400

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lo/fK;->onPostMessage(Ljava/lang/String;J)Lo/MethodNotAllowedException;

    move-result-object v0

    sput-object v0, Lo/n$a;->onPostMessage:Lo/MethodNotAllowedException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    .line 2
    sget-object v0, Lo/n$a;->extraCallback:Lo/MethodNotAllowedException;

    invoke-virtual {v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final extraCallback()J
    .locals 2

    .line 3
    sget-object v0, Lo/n$a;->onPostMessage:Lo/MethodNotAllowedException;

    invoke-virtual {v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
