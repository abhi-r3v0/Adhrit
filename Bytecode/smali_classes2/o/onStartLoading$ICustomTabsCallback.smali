.class public final Lo/onStartLoading$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/b$e$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onStartLoading;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/StatementNotFoundDialog$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/dreamplug/fabrik/ui/control/DomainSelectorDialog;",
        "data",
        "Lcom/dreamplug/fabrik/ui/control/StatementNotFoundDialog$DomainSelectorExtra;",
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
.field private final ICustomTabsCallback:Lo/ae;

.field private final onMessageChannelReady:Lo/OaidClient$Info;

.field private final onPostMessage:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/ae;Lo/OaidClient$Info;I)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onStartLoading$ICustomTabsCallback;->ICustomTabsCallback:Lo/ae;

    iput-object p2, p0, Lo/onStartLoading$ICustomTabsCallback;->onMessageChannelReady:Lo/OaidClient$Info;

    iput p3, p0, Lo/onStartLoading$ICustomTabsCallback;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/Object;
    .locals 3

    .line 2000
    iget-object v0, p0, Lo/onStartLoading$ICustomTabsCallback;->ICustomTabsCallback:Lo/ae;

    iget-object v1, p0, Lo/onStartLoading$ICustomTabsCallback;->onMessageChannelReady:Lo/OaidClient$Info;

    iget v2, p0, Lo/onStartLoading$ICustomTabsCallback;->onPostMessage:I

    .line 2084
    iget-object v0, v0, Lo/ae;->onNavigationEvent:Lo/ai;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Lo/ai;->onPostMessage(Lo/OaidClient$Info;I)V

    const/4 v0, 0x0

    return-object v0
.end method
