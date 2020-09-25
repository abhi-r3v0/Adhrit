.class public final Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDecoratedMeasurementInOther;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001:\u0001\u0015B9\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u00a2\u0006\u0002\u0010\u000bR\u0019\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/SimpleBottomSheetView$Cta;",
        "",
        "text",
        "",
        "textRes",
        "",
        "dismissOnClick",
        "",
        "action",
        "Lkotlin/Function0;",
        "",
        "(Ljava/lang/String;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function0;)V",
        "getAction",
        "()Lkotlin/jvm/functions/Function0;",
        "getDismissOnClick",
        "()Z",
        "getText",
        "()Ljava/lang/String;",
        "getTextRes",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Builder",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Ljava/lang/Integer;

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;-><init>(B)V

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    const/4 p1, 0x0

    .line 49
    invoke-direct {p0, p1, p1, p1}, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lo/getServerTime;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lo/getServerTime;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    iput-object p2, p0, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Integer;

    iput-object p3, p0, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;->ICustomTabsCallback:Lo/getServerTime;

    return-void
.end method
