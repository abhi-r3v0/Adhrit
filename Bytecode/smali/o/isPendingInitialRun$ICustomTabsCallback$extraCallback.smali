.class public final Lo/isPendingInitialRun$ICustomTabsCallback$extraCallback;
.super Lo/isPendingInitialRun$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isPendingInitialRun$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
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
        "Lcom/dreamplug/river/RiverManager$Source$LOGIN;",
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
.field public static final onPostMessage:Lo/isPendingInitialRun$ICustomTabsCallback$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lo/isPendingInitialRun$ICustomTabsCallback$extraCallback;

    invoke-direct {v0}, Lo/isPendingInitialRun$ICustomTabsCallback$extraCallback;-><init>()V

    sput-object v0, Lo/isPendingInitialRun$ICustomTabsCallback$extraCallback;->onPostMessage:Lo/isPendingInitialRun$ICustomTabsCallback$extraCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lo/isPendingInitialRun$ICustomTabsCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "LOGIN"

    return-object v0
.end method
