.class public final Lo/onRequestSendAccessibilityEvent$onNavigationEvent$ICustomTabsCallback;
.super Lo/onRequestSendAccessibilityEvent$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onRequestSendAccessibilityEvent$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dreamplug/batcher/Batcher$Method$POST;",
        "Lcom/dreamplug/batcher/Batcher$Method;",
        "()V",
        "batcher_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/onRequestSendAccessibilityEvent$onNavigationEvent$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lo/onRequestSendAccessibilityEvent$onNavigationEvent$ICustomTabsCallback;

    invoke-direct {v0}, Lo/onRequestSendAccessibilityEvent$onNavigationEvent$ICustomTabsCallback;-><init>()V

    sput-object v0, Lo/onRequestSendAccessibilityEvent$onNavigationEvent$ICustomTabsCallback;->extraCallback:Lo/onRequestSendAccessibilityEvent$onNavigationEvent$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "POST"

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, v0, v1}, Lo/onRequestSendAccessibilityEvent$onNavigationEvent;-><init>(Ljava/lang/String;B)V

    return-void
.end method
