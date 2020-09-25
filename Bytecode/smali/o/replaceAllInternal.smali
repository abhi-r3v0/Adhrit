.class public final Lo/replaceAllInternal;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/replaceAllInternal$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/dreamplug/utils/ClickUtils;",
        "",
        "()V",
        "Companion",
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
.field private static ICustomTabsCallback:Z

.field public static final extraCallback:Lo/replaceAllInternal$onNavigationEvent;

.field private static final onNavigationEvent:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/replaceAllInternal$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/replaceAllInternal$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/replaceAllInternal;->extraCallback:Lo/replaceAllInternal$onNavigationEvent;

    const/4 v0, 0x1

    .line 47
    sput-boolean v0, Lo/replaceAllInternal;->ICustomTabsCallback:Z

    .line 48
    sget-object v0, Lo/replaceAllInternal$extraCallback;->extraCallback:Lo/replaceAllInternal$extraCallback;

    check-cast v0, Lo/getServerTime;

    sput-object v0, Lo/replaceAllInternal;->onNavigationEvent:Lo/getServerTime;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic extraCallback()Lo/getServerTime;
    .locals 1

    .line 45
    sget-object v0, Lo/replaceAllInternal;->onNavigationEvent:Lo/getServerTime;

    return-object v0
.end method

.method public static final synthetic onMessageChannelReady(Z)V
    .locals 0

    .line 45
    sput-boolean p0, Lo/replaceAllInternal;->ICustomTabsCallback:Z

    return-void
.end method

.method public static final synthetic onMessageChannelReady()Z
    .locals 1

    .line 45
    sget-boolean v0, Lo/replaceAllInternal;->ICustomTabsCallback:Z

    return v0
.end method
