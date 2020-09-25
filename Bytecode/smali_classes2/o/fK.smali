.class public final Lo/fK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ICustomTabsCallback:Z

.field private final ICustomTabsCallback$Stub:Z

.field private final asBinder:Z

.field private final extraCallback:Ljava/lang/String;

.field final onMessageChannelReady:Ljava/lang/String;

.field final onNavigationEvent:Landroid/net/Uri;

.field final onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:Z

.field private final onTransact:Lo/dp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/dp<",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 10

    const/4 v1, 0x0

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v0 .. v9}, Lo/fK;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLo/dp;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLo/dp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Lo/dp<",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lo/fK;->extraCallback:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lo/fK;->onNavigationEvent:Landroid/net/Uri;

    .line 6
    iput-object p3, p0, Lo/fK;->onPostMessage:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lo/fK;->onMessageChannelReady:Ljava/lang/String;

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lo/fK;->ICustomTabsCallback:Z

    .line 9
    iput-boolean p2, p0, Lo/fK;->ICustomTabsCallback$Stub:Z

    .line 10
    iput-boolean p2, p0, Lo/fK;->asBinder:Z

    .line 11
    iput-boolean p2, p0, Lo/fK;->onRelationshipValidationResult:Z

    .line 12
    iput-object p1, p0, Lo/fK;->onTransact:Lo/dp;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;D)Lo/MethodNotAllowedException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-wide/high16 p2, -0x3ff8000000000000L    # -3.0

    const/4 v0, 0x1

    .line 16
    invoke-static {p0, p1, p2, p3, v0}, Lo/MethodNotAllowedException;->extraCallback(Lo/fK;Ljava/lang/String;DZ)Lo/MethodNotAllowedException;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 15
    invoke-static {p0, p1, p2, v0}, Lo/MethodNotAllowedException;->onNavigationEvent(Lo/fK;Ljava/lang/String;ZZ)Lo/MethodNotAllowedException;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/MethodNotAllowedException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 17
    invoke-static {p0, p1, p2, v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback(Lo/fK;Ljava/lang/String;Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/String;J)Lo/MethodNotAllowedException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 14
    invoke-static {p0, p1, p2, p3, v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback(Lo/fK;Ljava/lang/String;JZ)Lo/MethodNotAllowedException;

    move-result-object p1

    return-object p1
.end method
