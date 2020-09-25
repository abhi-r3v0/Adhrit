.class final Lo/evictionCount$onMessageChannelReady$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/evictionCount$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/utils/TimeTracker$Companion$STARTED;",
        "",
        "()V",
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
.field public static final onNavigationEvent:Lo/evictionCount$onMessageChannelReady$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lo/evictionCount$onMessageChannelReady$onMessageChannelReady;

    invoke-direct {v0}, Lo/evictionCount$onMessageChannelReady$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/evictionCount$onMessageChannelReady$onMessageChannelReady;->onNavigationEvent:Lo/evictionCount$onMessageChannelReady$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
