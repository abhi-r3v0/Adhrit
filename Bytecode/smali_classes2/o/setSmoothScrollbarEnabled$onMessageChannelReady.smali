.class public final Lo/setSmoothScrollbarEnabled$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSmoothScrollbarEnabled;
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleViewModel$Companion;",
        "",
        "()V",
        "PER_PAGE",
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
.field public final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/updateLayoutState$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:J

.field public onMessageChannelReady:I

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JIJ",
            "Ljava/util/List<",
            "Lo/updateLayoutState$onPostMessage;",
            ">;)V"
        }
    .end annotation

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iput-wide p2, p0, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onPostMessage:J

    iput p4, p0, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    iput-wide p5, p0, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->extraCallback:J

    iput-object p7, p0, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/List;

    return-void
.end method
