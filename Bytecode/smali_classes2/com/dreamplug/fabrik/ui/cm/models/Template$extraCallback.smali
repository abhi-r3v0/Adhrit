.class public final Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/cm/models/Template;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/models/Template$Companion;",
        "",
        "()V",
        "TYPE_BOTTOMSHEET",
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
.field public final ICustomTabsCallback:Lo/b;

.field public final onMessageChannelReady:Lo/b;

.field public final onNavigationEvent:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/b;Lo/b;)V
    .locals 0
    .annotation runtime Lo/withJitterFactor;
    .end annotation

    .line 1030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;->onNavigationEvent:Landroid/content/Context;

    .line 1032
    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;->onMessageChannelReady:Lo/b;

    .line 1033
    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/cm/models/Template$extraCallback;->ICustomTabsCallback:Lo/b;

    return-void
.end method
