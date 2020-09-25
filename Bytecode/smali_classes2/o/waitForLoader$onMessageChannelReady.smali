.class public final Lo/waitForLoader$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/b$e$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/waitForLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
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
        "Lcom/dreamplug/fabrik/ui/control/CurrencyReferredPeopleHolder$Companion;",
        "",
        "()V",
        "REFERRED_PEOPLE_DISPLAY_COUNT",
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
.field private final onNavigationEvent:Lo/OaidClient$Info;

.field private final onPostMessage:Lo/ae;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/ae;Lo/OaidClient$Info;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/waitForLoader$onMessageChannelReady;->onPostMessage:Lo/ae;

    iput-object p2, p0, Lo/waitForLoader$onMessageChannelReady;->onNavigationEvent:Lo/OaidClient$Info;

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/Object;
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/waitForLoader$onMessageChannelReady;->onPostMessage:Lo/ae;

    iget-object v1, p0, Lo/waitForLoader$onMessageChannelReady;->onNavigationEvent:Lo/OaidClient$Info;

    .line 2102
    iget-object v0, v0, Lo/ae;->onPostMessage:Lo/ah;

    invoke-interface {v0, v1}, Lo/ah;->onPostMessage(Lo/OaidClient$Info;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
