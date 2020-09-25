.class public final Lo/makeLayout;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nR\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/data/repository/feature/FeatureUpdater;",
        "",
        "()V",
        "featureService",
        "Lcom/dreamplug/androidapp/data/repository/feature/FeatureService;",
        "getFeatureService",
        "()Lcom/dreamplug/androidapp/data/repository/feature/FeatureService;",
        "featureService$delegate",
        "Lkotlin/Lazy;",
        "update",
        "",
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
.field public static final extraCallback:Lo/makeLayout;

.field public static final onPostMessage:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lo/makeLayout;

    invoke-direct {v0}, Lo/makeLayout;-><init>()V

    sput-object v0, Lo/makeLayout;->extraCallback:Lo/makeLayout;

    .line 11
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 23
    sget-object v0, Lo/makeLayout$extraCallback;->onPostMessage:Lo/makeLayout$extraCallback;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 23
    sput-object v1, Lo/makeLayout;->onPostMessage:Lo/isSameListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
