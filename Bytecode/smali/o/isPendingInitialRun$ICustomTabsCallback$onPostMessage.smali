.class public final Lo/isPendingInitialRun$ICustomTabsCallback$onPostMessage;
.super Lo/isPendingInitialRun$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isPendingInitialRun$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/river/RiverManager$Source$DEFAULT;",
        "Lcom/dreamplug/river/RiverManager$Source;",
        "()V",
        "toString",
        "",
        "river_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/isPendingInitialRun$ICustomTabsCallback$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lo/isPendingInitialRun$ICustomTabsCallback$onPostMessage;

    invoke-direct {v0}, Lo/isPendingInitialRun$ICustomTabsCallback$onPostMessage;-><init>()V

    sput-object v0, Lo/isPendingInitialRun$ICustomTabsCallback$onPostMessage;->onMessageChannelReady:Lo/isPendingInitialRun$ICustomTabsCallback$onPostMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 45
    invoke-direct {p0, v0}, Lo/isPendingInitialRun$ICustomTabsCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DEFAULT"

    return-object v0
.end method
