.class public final Lo/getAllowEnterTransitionOverlap$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAllowEnterTransitionOverlap;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/TriggerAuthFlowListener$Companion;",
        "",
        "()V",
        "RC_SIGN_IN",
        "",
        "getRC_SIGN_IN",
        "()I",
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
.field static final synthetic onPostMessage:Lo/getAllowEnterTransitionOverlap$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lo/getAllowEnterTransitionOverlap$onNavigationEvent;

    invoke-direct {v0}, Lo/getAllowEnterTransitionOverlap$onNavigationEvent;-><init>()V

    sput-object v0, Lo/getAllowEnterTransitionOverlap$onNavigationEvent;->onPostMessage:Lo/getAllowEnterTransitionOverlap$onNavigationEvent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
