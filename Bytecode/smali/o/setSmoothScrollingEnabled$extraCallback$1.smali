.class final synthetic Lo/setSmoothScrollingEnabled$extraCallback$1;
.super Lo/startListening;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setSmoothScrollingEnabled$extraCallback;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/startListening;",
        "Lo/onDisconnectSetValue<",
        "Landroid/content/Context;",
        "Lo/setSmoothScrollingEnabled;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0015\u0010\u0002\u001a\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dreamplug/contacthelper/db/DatabaseManager;",
        "p1",
        "Landroid/content/Context;",
        "Lkotlin/ParameterName;",
        "name",
        "context",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/setSmoothScrollingEnabled$extraCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/setSmoothScrollingEnabled$extraCallback$1;

    invoke-direct {v0}, Lo/setSmoothScrollingEnabled$extraCallback$1;-><init>()V

    sput-object v0, Lo/setSmoothScrollingEnabled$extraCallback$1;->onMessageChannelReady:Lo/setSmoothScrollingEnabled$extraCallback$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/startListening;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    const-string v0, "<init>"

    return-object v0
.end method

.method public final h_()Ljava/lang/String;
    .locals 1

    const-string v0, "<init>(Landroid/content/Context;)V"

    return-object v0
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 11
    check-cast p1, Landroid/content/Context;

    const-string v0, "p1"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/setSmoothScrollingEnabled;

    const/4 v1, 0x0

    .line 1011
    invoke-direct {v0, p1, v1}, Lo/setSmoothScrollingEnabled;-><init>(Landroid/content/Context;B)V

    return-object v0
.end method

.method public final onNavigationEvent()Lo/getQueryViews;
    .locals 1

    const-class v0, Lo/setSmoothScrollingEnabled;

    invoke-static {v0}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v0

    return-object v0
.end method
