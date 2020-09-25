.class public final Lo/snapshot;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/snapshot$onNavigationEvent;
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
        "Lcom/dreamplug/androidapp/utils/Utils;",
        "",
        "()V",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/snapshot$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/snapshot$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/snapshot$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/snapshot;->ICustomTabsCallback:Lo/snapshot$onNavigationEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
