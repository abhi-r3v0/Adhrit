.class final Lo/drawHorizontalDivider$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/drawHorizontalDivider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Lo/drawDividersHorizontal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/drawDividersHorizontal<",
            "TZ;TR;>;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lo/drawDividersHorizontal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lo/drawDividersHorizontal<",
            "TZ;TR;>;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lo/drawHorizontalDivider$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Class;

    .line 91
    iput-object p2, p0, Lo/drawHorizontalDivider$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Class;

    .line 92
    iput-object p3, p0, Lo/drawHorizontalDivider$onMessageChannelReady;->onMessageChannelReady:Lo/drawDividersHorizontal;

    return-void
.end method
