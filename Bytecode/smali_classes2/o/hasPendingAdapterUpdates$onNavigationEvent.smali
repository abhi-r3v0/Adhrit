.class public final Lo/hasPendingAdapterUpdates$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Transaction$$Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasPendingAdapterUpdates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineAdapter$Companion;",
        "",
        "()V",
        "ITEM_TICKET",
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


# instance fields
.field private final zza:Lo/CrashlyticsController;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/CrashlyticsController;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/hasPendingAdapterUpdates$onNavigationEvent;->zza:Lo/CrashlyticsController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/hasPendingAdapterUpdates$onNavigationEvent;->zza:Lo/CrashlyticsController;

    check-cast p1, Lo/finalizePreviousNativeSession;

    check-cast p2, Lo/removeBackgroundStateChangeListener;

    invoke-virtual {v0, p1, p2}, Lo/CrashlyticsController;->zza(Lo/finalizePreviousNativeSession;Lo/removeBackgroundStateChangeListener;)V

    return-void
.end method
