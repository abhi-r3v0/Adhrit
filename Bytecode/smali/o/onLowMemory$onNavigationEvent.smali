.class public final Lo/onLowMemory$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/handleDeepLinkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onLowMemory;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/ui/widget/InsetView$Companion;",
        "",
        "()V",
        "INSET_TYPE_BOTTOM",
        "",
        "INSET_TYPE_TOP",
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
.field private final onPostMessage:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    iput p1, p0, Lo/onLowMemory$onNavigationEvent;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final createImageTranscoder(Lo/setProgress;Z)Lo/AppsFlyerLibCore;
    .locals 1

    .line 1023
    new-instance p1, Lo/Ӏ;

    iget v0, p0, Lo/onLowMemory$onNavigationEvent;->onPostMessage:I

    invoke-direct {p1, p2, v0}, Lo/Ӏ;-><init>(ZI)V

    return-object p1
.end method
