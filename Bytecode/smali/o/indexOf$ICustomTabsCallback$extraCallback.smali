.class public final Lo/indexOf$ICustomTabsCallback$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/indexOf$ICustomTabsCallback;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dreamplug/utils/SnapshotUtils$SynchronizedLazyInSessionImpl$UNINITIALIZED_VALUE;",
        "",
        "()V",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/indexOf$ICustomTabsCallback$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lo/indexOf$ICustomTabsCallback$extraCallback;

    invoke-direct {v0}, Lo/indexOf$ICustomTabsCallback$extraCallback;-><init>()V

    sput-object v0, Lo/indexOf$ICustomTabsCallback$extraCallback;->onMessageChannelReady:Lo/indexOf$ICustomTabsCallback$extraCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
